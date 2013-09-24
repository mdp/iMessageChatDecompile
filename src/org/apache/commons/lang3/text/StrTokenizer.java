package org.apache.commons.lang3.text;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import org.apache.commons.lang3.ArrayUtils;

public class StrTokenizer
  implements Cloneable, ListIterator
{
  private static final StrTokenizer CSV_TOKENIZER_PROTOTYPE;
  private static final StrTokenizer TSV_TOKENIZER_PROTOTYPE;
  private char[] chars;
  private StrMatcher delimMatcher = StrMatcher.splitMatcher();
  private boolean emptyAsNull = false;
  private boolean ignoreEmptyTokens = true;
  private StrMatcher ignoredMatcher = StrMatcher.noneMatcher();
  private StrMatcher quoteMatcher = StrMatcher.noneMatcher();
  private int tokenPos;
  private String[] tokens;
  private StrMatcher trimmerMatcher = StrMatcher.noneMatcher();

  static
  {
    StrTokenizer localStrTokenizer1 = new StrTokenizer();
    CSV_TOKENIZER_PROTOTYPE = localStrTokenizer1;
    localStrTokenizer1.setDelimiterMatcher(StrMatcher.commaMatcher());
    CSV_TOKENIZER_PROTOTYPE.setQuoteMatcher(StrMatcher.doubleQuoteMatcher());
    CSV_TOKENIZER_PROTOTYPE.setIgnoredMatcher(StrMatcher.noneMatcher());
    CSV_TOKENIZER_PROTOTYPE.setTrimmerMatcher(StrMatcher.trimMatcher());
    CSV_TOKENIZER_PROTOTYPE.setEmptyTokenAsNull(false);
    CSV_TOKENIZER_PROTOTYPE.setIgnoreEmptyTokens(false);
    StrTokenizer localStrTokenizer2 = new StrTokenizer();
    TSV_TOKENIZER_PROTOTYPE = localStrTokenizer2;
    localStrTokenizer2.setDelimiterMatcher(StrMatcher.tabMatcher());
    TSV_TOKENIZER_PROTOTYPE.setQuoteMatcher(StrMatcher.doubleQuoteMatcher());
    TSV_TOKENIZER_PROTOTYPE.setIgnoredMatcher(StrMatcher.noneMatcher());
    TSV_TOKENIZER_PROTOTYPE.setTrimmerMatcher(StrMatcher.trimMatcher());
    TSV_TOKENIZER_PROTOTYPE.setEmptyTokenAsNull(false);
    TSV_TOKENIZER_PROTOTYPE.setIgnoreEmptyTokens(false);
  }

  public StrTokenizer()
  {
    this.chars = null;
  }

  public StrTokenizer(String paramString)
  {
    if (paramString != null)
    {
      this.chars = paramString.toCharArray();
      return;
    }
    this.chars = null;
  }

  public StrTokenizer(String paramString, char paramChar)
  {
    this(paramString);
    setDelimiterChar(paramChar);
  }

  public StrTokenizer(String paramString, char paramChar1, char paramChar2)
  {
    this(paramString, paramChar1);
    setQuoteChar(paramChar2);
  }

  public StrTokenizer(String paramString1, String paramString2)
  {
    this(paramString1);
    setDelimiterString(paramString2);
  }

  public StrTokenizer(String paramString, StrMatcher paramStrMatcher)
  {
    this(paramString);
    setDelimiterMatcher(paramStrMatcher);
  }

  public StrTokenizer(String paramString, StrMatcher paramStrMatcher1, StrMatcher paramStrMatcher2)
  {
    this(paramString, paramStrMatcher1);
    setQuoteMatcher(paramStrMatcher2);
  }

  public StrTokenizer(char[] paramArrayOfChar)
  {
    this.chars = ArrayUtils.clone(paramArrayOfChar);
  }

  public StrTokenizer(char[] paramArrayOfChar, char paramChar)
  {
    this(paramArrayOfChar);
    setDelimiterChar(paramChar);
  }

  public StrTokenizer(char[] paramArrayOfChar, char paramChar1, char paramChar2)
  {
    this(paramArrayOfChar, paramChar1);
    setQuoteChar(paramChar2);
  }

  public StrTokenizer(char[] paramArrayOfChar, String paramString)
  {
    this(paramArrayOfChar);
    setDelimiterString(paramString);
  }

  public StrTokenizer(char[] paramArrayOfChar, StrMatcher paramStrMatcher)
  {
    this(paramArrayOfChar);
    setDelimiterMatcher(paramStrMatcher);
  }

  public StrTokenizer(char[] paramArrayOfChar, StrMatcher paramStrMatcher1, StrMatcher paramStrMatcher2)
  {
    this(paramArrayOfChar, paramStrMatcher1);
    setQuoteMatcher(paramStrMatcher2);
  }

  private void addToken(List paramList, String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
    {
      if (isIgnoreEmptyTokens())
        return;
      if (isEmptyTokenAsNull())
        paramString = null;
    }
    paramList.add(paramString);
  }

  private void checkTokenized()
  {
    if (this.tokens == null)
    {
      if (this.chars == null)
      {
        List localList2 = tokenize(null, 0, 0);
        this.tokens = ((String[])localList2.toArray(new String[localList2.size()]));
      }
    }
    else
      return;
    List localList1 = tokenize(this.chars, 0, this.chars.length);
    this.tokens = ((String[])localList1.toArray(new String[localList1.size()]));
  }

  private static StrTokenizer getCSVClone()
  {
    return (StrTokenizer)CSV_TOKENIZER_PROTOTYPE.clone();
  }

  public static StrTokenizer getCSVInstance()
  {
    return getCSVClone();
  }

  public static StrTokenizer getCSVInstance(String paramString)
  {
    StrTokenizer localStrTokenizer = getCSVClone();
    localStrTokenizer.reset(paramString);
    return localStrTokenizer;
  }

  public static StrTokenizer getCSVInstance(char[] paramArrayOfChar)
  {
    StrTokenizer localStrTokenizer = getCSVClone();
    localStrTokenizer.reset(paramArrayOfChar);
    return localStrTokenizer;
  }

  private static StrTokenizer getTSVClone()
  {
    return (StrTokenizer)TSV_TOKENIZER_PROTOTYPE.clone();
  }

  public static StrTokenizer getTSVInstance()
  {
    return getTSVClone();
  }

  public static StrTokenizer getTSVInstance(String paramString)
  {
    StrTokenizer localStrTokenizer = getTSVClone();
    localStrTokenizer.reset(paramString);
    return localStrTokenizer;
  }

  public static StrTokenizer getTSVInstance(char[] paramArrayOfChar)
  {
    StrTokenizer localStrTokenizer = getTSVClone();
    localStrTokenizer.reset(paramArrayOfChar);
    return localStrTokenizer;
  }

  private boolean isQuote(char[] paramArrayOfChar, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    for (int i = 0; i < paramInt4; i++)
      if ((paramInt1 + i >= paramInt2) || (paramArrayOfChar[(paramInt1 + i)] != paramArrayOfChar[(paramInt3 + i)]))
        return false;
    return true;
  }

  private int readNextToken(char[] paramArrayOfChar, int paramInt1, int paramInt2, StrBuilder paramStrBuilder, List paramList)
  {
    int i = paramInt1;
    while (i < paramInt2)
    {
      int m = Math.max(getIgnoredMatcher().isMatch(paramArrayOfChar, i, i, paramInt2), getTrimmerMatcher().isMatch(paramArrayOfChar, i, i, paramInt2));
      if ((m == 0) || (getDelimiterMatcher().isMatch(paramArrayOfChar, i, i, paramInt2) > 0) || (getQuoteMatcher().isMatch(paramArrayOfChar, i, i, paramInt2) > 0))
        break;
      i += m;
    }
    if (i >= paramInt2)
    {
      addToken(paramList, "");
      return -1;
    }
    int j = getDelimiterMatcher().isMatch(paramArrayOfChar, i, i, paramInt2);
    if (j > 0)
    {
      addToken(paramList, "");
      return j + i;
    }
    int k = getQuoteMatcher().isMatch(paramArrayOfChar, i, i, paramInt2);
    if (k > 0)
      return readWithQuotes(paramArrayOfChar, i + k, paramInt2, paramStrBuilder, paramList, i, k);
    return readWithQuotes(paramArrayOfChar, i, paramInt2, paramStrBuilder, paramList, 0, 0);
  }

  private int readWithQuotes(char[] paramArrayOfChar, int paramInt1, int paramInt2, StrBuilder paramStrBuilder, List paramList, int paramInt3, int paramInt4)
  {
    paramStrBuilder.clear();
    int i;
    int j;
    int k;
    int m;
    if (paramInt4 > 0)
    {
      i = 1;
      j = 0;
      k = i;
      m = paramInt1;
    }
    while (true)
    {
      if (m >= paramInt2)
        break label318;
      if (k != 0)
      {
        if (isQuote(paramArrayOfChar, m, paramInt2, paramInt3, paramInt4))
        {
          if (isQuote(paramArrayOfChar, m + paramInt4, paramInt2, paramInt3, paramInt4))
          {
            paramStrBuilder.append(paramArrayOfChar, m, paramInt4);
            m += paramInt4 * 2;
            j = paramStrBuilder.size();
            continue;
            i = 0;
            break;
          }
          m += paramInt4;
          k = 0;
          continue;
        }
        int i4 = m + 1;
        paramStrBuilder.append(paramArrayOfChar[m]);
        j = paramStrBuilder.size();
        m = i4;
        continue;
      }
      int n = getDelimiterMatcher().isMatch(paramArrayOfChar, m, paramInt1, paramInt2);
      if (n > 0)
      {
        addToken(paramList, paramStrBuilder.substring(0, j));
        return n + m;
      }
      if ((paramInt4 > 0) && (isQuote(paramArrayOfChar, m, paramInt2, paramInt3, paramInt4)))
      {
        m += paramInt4;
        k = 1;
      }
      else
      {
        int i1 = getIgnoredMatcher().isMatch(paramArrayOfChar, m, paramInt1, paramInt2);
        if (i1 > 0)
        {
          m += i1;
        }
        else
        {
          int i2 = getTrimmerMatcher().isMatch(paramArrayOfChar, m, paramInt1, paramInt2);
          if (i2 > 0)
          {
            paramStrBuilder.append(paramArrayOfChar, m, i2);
            m += i2;
          }
          else
          {
            int i3 = m + 1;
            paramStrBuilder.append(paramArrayOfChar[m]);
            j = paramStrBuilder.size();
            m = i3;
          }
        }
      }
    }
    label318: addToken(paramList, paramStrBuilder.substring(0, j));
    return -1;
  }

  public void add(String paramString)
  {
    throw new UnsupportedOperationException("add() is unsupported");
  }

  public Object clone()
  {
    try
    {
      Object localObject = cloneReset();
      return localObject;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
    }
    return null;
  }

  Object cloneReset()
  {
    StrTokenizer localStrTokenizer = (StrTokenizer)super.clone();
    if (localStrTokenizer.chars != null)
      localStrTokenizer.chars = ((char[])localStrTokenizer.chars.clone());
    localStrTokenizer.reset();
    return localStrTokenizer;
  }

  public String getContent()
  {
    if (this.chars == null)
      return null;
    return new String(this.chars);
  }

  public StrMatcher getDelimiterMatcher()
  {
    return this.delimMatcher;
  }

  public StrMatcher getIgnoredMatcher()
  {
    return this.ignoredMatcher;
  }

  public StrMatcher getQuoteMatcher()
  {
    return this.quoteMatcher;
  }

  public String[] getTokenArray()
  {
    checkTokenized();
    return (String[])this.tokens.clone();
  }

  public List getTokenList()
  {
    checkTokenized();
    ArrayList localArrayList = new ArrayList(this.tokens.length);
    String[] arrayOfString = this.tokens;
    int i = arrayOfString.length;
    for (int j = 0; j < i; j++)
      localArrayList.add(arrayOfString[j]);
    return localArrayList;
  }

  public StrMatcher getTrimmerMatcher()
  {
    return this.trimmerMatcher;
  }

  public boolean hasNext()
  {
    checkTokenized();
    return this.tokenPos < this.tokens.length;
  }

  public boolean hasPrevious()
  {
    checkTokenized();
    return this.tokenPos > 0;
  }

  public boolean isEmptyTokenAsNull()
  {
    return this.emptyAsNull;
  }

  public boolean isIgnoreEmptyTokens()
  {
    return this.ignoreEmptyTokens;
  }

  public String next()
  {
    if (hasNext())
    {
      String[] arrayOfString = this.tokens;
      int i = this.tokenPos;
      this.tokenPos = (i + 1);
      return arrayOfString[i];
    }
    throw new NoSuchElementException();
  }

  public int nextIndex()
  {
    return this.tokenPos;
  }

  public String nextToken()
  {
    if (hasNext())
    {
      String[] arrayOfString = this.tokens;
      int i = this.tokenPos;
      this.tokenPos = (i + 1);
      return arrayOfString[i];
    }
    return null;
  }

  public String previous()
  {
    if (hasPrevious())
    {
      String[] arrayOfString = this.tokens;
      int i = -1 + this.tokenPos;
      this.tokenPos = i;
      return arrayOfString[i];
    }
    throw new NoSuchElementException();
  }

  public int previousIndex()
  {
    return -1 + this.tokenPos;
  }

  public String previousToken()
  {
    if (hasPrevious())
    {
      String[] arrayOfString = this.tokens;
      int i = -1 + this.tokenPos;
      this.tokenPos = i;
      return arrayOfString[i];
    }
    return null;
  }

  public void remove()
  {
    throw new UnsupportedOperationException("remove() is unsupported");
  }

  public StrTokenizer reset()
  {
    this.tokenPos = 0;
    this.tokens = null;
    return this;
  }

  public StrTokenizer reset(String paramString)
  {
    reset();
    if (paramString != null)
    {
      this.chars = paramString.toCharArray();
      return this;
    }
    this.chars = null;
    return this;
  }

  public StrTokenizer reset(char[] paramArrayOfChar)
  {
    reset();
    this.chars = ArrayUtils.clone(paramArrayOfChar);
    return this;
  }

  public void set(String paramString)
  {
    throw new UnsupportedOperationException("set() is unsupported");
  }

  public StrTokenizer setDelimiterChar(char paramChar)
  {
    return setDelimiterMatcher(StrMatcher.charMatcher(paramChar));
  }

  public StrTokenizer setDelimiterMatcher(StrMatcher paramStrMatcher)
  {
    if (paramStrMatcher == null)
    {
      this.delimMatcher = StrMatcher.noneMatcher();
      return this;
    }
    this.delimMatcher = paramStrMatcher;
    return this;
  }

  public StrTokenizer setDelimiterString(String paramString)
  {
    return setDelimiterMatcher(StrMatcher.stringMatcher(paramString));
  }

  public StrTokenizer setEmptyTokenAsNull(boolean paramBoolean)
  {
    this.emptyAsNull = paramBoolean;
    return this;
  }

  public StrTokenizer setIgnoreEmptyTokens(boolean paramBoolean)
  {
    this.ignoreEmptyTokens = paramBoolean;
    return this;
  }

  public StrTokenizer setIgnoredChar(char paramChar)
  {
    return setIgnoredMatcher(StrMatcher.charMatcher(paramChar));
  }

  public StrTokenizer setIgnoredMatcher(StrMatcher paramStrMatcher)
  {
    if (paramStrMatcher != null)
      this.ignoredMatcher = paramStrMatcher;
    return this;
  }

  public StrTokenizer setQuoteChar(char paramChar)
  {
    return setQuoteMatcher(StrMatcher.charMatcher(paramChar));
  }

  public StrTokenizer setQuoteMatcher(StrMatcher paramStrMatcher)
  {
    if (paramStrMatcher != null)
      this.quoteMatcher = paramStrMatcher;
    return this;
  }

  public StrTokenizer setTrimmerMatcher(StrMatcher paramStrMatcher)
  {
    if (paramStrMatcher != null)
      this.trimmerMatcher = paramStrMatcher;
    return this;
  }

  public int size()
  {
    checkTokenized();
    return this.tokens.length;
  }

  public String toString()
  {
    if (this.tokens == null)
      return "StrTokenizer[not tokenized yet]";
    return "StrTokenizer" + getTokenList();
  }

  protected List tokenize(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    Object localObject;
    if ((paramArrayOfChar == null) || (paramInt2 == 0))
      localObject = Collections.emptyList();
    while (true)
    {
      return localObject;
      StrBuilder localStrBuilder = new StrBuilder();
      localObject = new ArrayList();
      int i = paramInt1;
      while ((i >= 0) && (i < paramInt2))
      {
        i = readNextToken(paramArrayOfChar, i, paramInt2, localStrBuilder, (List)localObject);
        if (i >= paramInt2)
          addToken((List)localObject, "");
      }
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.text.StrTokenizer
 * JD-Core Version:    0.6.2
 */