package org.apache.commons.lang3.text;

import java.text.Format;
import java.text.MessageFormat;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.Validate;

public class ExtendedMessageFormat extends MessageFormat
{
  private static final String DUMMY_PATTERN = "";
  private static final char END_FE = '}';
  private static final String ESCAPED_QUOTE = "''";
  private static final int HASH_SEED = 31;
  private static final char QUOTE = '\'';
  private static final char START_FE = '{';
  private static final char START_FMT = ',';
  private static final long serialVersionUID = -2362048321261811743L;
  private final Map registry;
  private String toPattern;

  public ExtendedMessageFormat(String paramString)
  {
    this(paramString, Locale.getDefault());
  }

  public ExtendedMessageFormat(String paramString, Locale paramLocale)
  {
    this(paramString, paramLocale, null);
  }

  public ExtendedMessageFormat(String paramString, Locale paramLocale, Map paramMap)
  {
    super("");
    setLocale(paramLocale);
    this.registry = paramMap;
    applyPattern(paramString);
  }

  public ExtendedMessageFormat(String paramString, Map paramMap)
  {
    this(paramString, Locale.getDefault(), paramMap);
  }

  private StringBuilder appendQuotedString(String paramString, ParsePosition paramParsePosition, StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    int i = paramParsePosition.getIndex();
    char[] arrayOfChar = paramString.toCharArray();
    if ((paramBoolean) && (arrayOfChar[i] == '\''))
    {
      next(paramParsePosition);
      if (paramStringBuilder == null)
        return null;
      return paramStringBuilder.append('\'');
    }
    int j = paramParsePosition.getIndex();
    int k = i;
    if (j < paramString.length())
    {
      if ((paramBoolean) && (paramString.substring(j).startsWith("''")))
      {
        paramStringBuilder.append(arrayOfChar, k, paramParsePosition.getIndex() - k).append('\'');
        paramParsePosition.setIndex(j + 2);
        k = paramParsePosition.getIndex();
      }
      while (true)
      {
        j++;
        break;
        switch (arrayOfChar[paramParsePosition.getIndex()])
        {
        default:
          next(paramParsePosition);
        case '\'':
        }
      }
      next(paramParsePosition);
      if (paramStringBuilder == null)
        return null;
      return paramStringBuilder.append(arrayOfChar, k, paramParsePosition.getIndex() - k);
    }
    throw new IllegalArgumentException("Unterminated quoted string at position " + i);
  }

  private boolean containsElements(Collection paramCollection)
  {
    if ((paramCollection == null) || (paramCollection.isEmpty()));
    Iterator localIterator;
    do
      while (!localIterator.hasNext())
      {
        return false;
        localIterator = paramCollection.iterator();
      }
    while (localIterator.next() == null);
    return true;
  }

  private Format getFormat(String paramString)
  {
    Map localMap = this.registry;
    Format localFormat = null;
    String str3;
    if (localMap != null)
    {
      int i = paramString.indexOf(',');
      if (i <= 0)
        break label95;
      String str2 = paramString.substring(0, i).trim();
      str3 = paramString.substring(i + 1).trim();
      paramString = str2;
    }
    label95: for (String str1 = str3; ; str1 = null)
    {
      FormatFactory localFormatFactory = (FormatFactory)this.registry.get(paramString);
      localFormat = null;
      if (localFormatFactory != null)
        localFormat = localFormatFactory.getFormat(paramString, str1, getLocale());
      return localFormat;
    }
  }

  private void getQuotedString(String paramString, ParsePosition paramParsePosition, boolean paramBoolean)
  {
    appendQuotedString(paramString, paramParsePosition, null, paramBoolean);
  }

  private String insertFormats(String paramString, ArrayList paramArrayList)
  {
    if (!containsElements(paramArrayList))
      return paramString;
    StringBuilder localStringBuilder = new StringBuilder(2 * paramString.length());
    ParsePosition localParsePosition = new ParsePosition(0);
    int i = -1;
    int j = 0;
    while (true)
    {
      int k;
      if (localParsePosition.getIndex() < paramString.length())
      {
        char c = paramString.charAt(localParsePosition.getIndex());
        switch (c)
        {
        default:
        case '\'':
        case '{':
        case '}':
        }
        while (true)
        {
          localStringBuilder.append(c);
          next(localParsePosition);
          break;
          appendQuotedString(paramString, localParsePosition, localStringBuilder, false);
          break;
          k = j + 1;
          if (k != 1)
            break label212;
          i++;
          localStringBuilder.append('{').append(readArgumentIndex(paramString, next(localParsePosition)));
          String str = (String)paramArrayList.get(i);
          if (str != null)
            localStringBuilder.append(',').append(str);
          j = k;
          break;
          j--;
        }
      }
      return localStringBuilder.toString();
      label212: j = k;
    }
  }

  private ParsePosition next(ParsePosition paramParsePosition)
  {
    paramParsePosition.setIndex(1 + paramParsePosition.getIndex());
    return paramParsePosition;
  }

  private String parseFormatDescription(String paramString, ParsePosition paramParsePosition)
  {
    int i = paramParsePosition.getIndex();
    seekNonWs(paramString, paramParsePosition);
    int j = paramParsePosition.getIndex();
    int k = 1;
    if (paramParsePosition.getIndex() < paramString.length())
    {
      switch (paramString.charAt(paramParsePosition.getIndex()))
      {
      default:
      case '{':
      case '}':
      case '\'':
      }
      while (true)
      {
        next(paramParsePosition);
        break;
        k++;
        continue;
        k--;
        if (k == 0)
        {
          return paramString.substring(j, paramParsePosition.getIndex());
          getQuotedString(paramString, paramParsePosition, false);
        }
      }
    }
    throw new IllegalArgumentException("Unterminated format element at position " + i);
  }

  private int readArgumentIndex(String paramString, ParsePosition paramParsePosition)
  {
    int i = paramParsePosition.getIndex();
    seekNonWs(paramString, paramParsePosition);
    StringBuffer localStringBuffer = new StringBuffer();
    int j = 0;
    while ((j == 0) && (paramParsePosition.getIndex() < paramString.length()))
    {
      char c1 = paramString.charAt(paramParsePosition.getIndex());
      if (Character.isWhitespace(c1))
      {
        seekNonWs(paramString, paramParsePosition);
        c1 = paramString.charAt(paramParsePosition.getIndex());
        if ((c1 != ',') && (c1 != '}'))
        {
          j = 1;
          next(paramParsePosition);
        }
      }
      else
      {
        char c2 = c1;
        if (((c2 == ',') || (c2 == '}')) && (localStringBuffer.length() > 0))
          try
          {
            int k = Integer.parseInt(localStringBuffer.toString());
            return k;
          }
          catch (NumberFormatException localNumberFormatException)
          {
          }
        if (!Character.isDigit(c2));
        for (j = 1; ; j = 0)
        {
          localStringBuffer.append(c2);
          break;
        }
      }
    }
    if (j != 0)
      throw new IllegalArgumentException("Invalid format argument index at position " + i + ": " + paramString.substring(i, paramParsePosition.getIndex()));
    throw new IllegalArgumentException("Unterminated format element at position " + i);
  }

  private void seekNonWs(String paramString, ParsePosition paramParsePosition)
  {
    char[] arrayOfChar = paramString.toCharArray();
    int i;
    do
    {
      i = StrMatcher.splitMatcher().isMatch(arrayOfChar, paramParsePosition.getIndex());
      paramParsePosition.setIndex(i + paramParsePosition.getIndex());
    }
    while ((i > 0) && (paramParsePosition.getIndex() < paramString.length()));
  }

  public final void applyPattern(String paramString)
  {
    int i = 0;
    if (this.registry == null)
    {
      super.applyPattern(paramString);
      this.toPattern = super.toPattern();
      return;
    }
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    StringBuilder localStringBuilder = new StringBuilder(paramString.length());
    ParsePosition localParsePosition = new ParsePosition(0);
    char[] arrayOfChar = paramString.toCharArray();
    int j = 0;
    label120: int k;
    int m;
    String str;
    Format localFormat2;
    while (true)
      if (localParsePosition.getIndex() < paramString.length())
        switch (arrayOfChar[localParsePosition.getIndex()])
        {
        default:
          localStringBuilder.append(arrayOfChar[localParsePosition.getIndex()]);
          next(localParsePosition);
          break;
        case '\'':
          appendQuotedString(paramString, localParsePosition, localStringBuilder, true);
          break;
        case '{':
          k = j + 1;
          seekNonWs(paramString, localParsePosition);
          m = localParsePosition.getIndex();
          int n = readArgumentIndex(paramString, next(localParsePosition));
          localStringBuilder.append('{').append(n);
          seekNonWs(paramString, localParsePosition);
          if (arrayOfChar[localParsePosition.getIndex()] != ',')
            break label468;
          str = parseFormatDescription(paramString, next(localParsePosition));
          localFormat2 = getFormat(str);
          if (localFormat2 == null)
            localStringBuilder.append(',').append(str);
          break;
        }
    while (true)
    {
      localArrayList1.add(localFormat2);
      if (localFormat2 == null)
        str = null;
      localArrayList2.add(str);
      boolean bool1;
      if (localArrayList1.size() == k)
      {
        bool1 = true;
        Validate.isTrue(bool1);
        if (localArrayList2.size() != k)
          break label366;
      }
      label366: for (boolean bool2 = true; ; bool2 = false)
      {
        Validate.isTrue(bool2);
        if (arrayOfChar[localParsePosition.getIndex()] == '}')
          break label461;
        throw new IllegalArgumentException("Unreadable format element at position " + m);
        bool1 = false;
        break;
      }
      super.applyPattern(localStringBuilder.toString());
      this.toPattern = insertFormats(super.toPattern(), localArrayList2);
      if (!containsElements(localArrayList1))
        break;
      Format[] arrayOfFormat = getFormats();
      Iterator localIterator = localArrayList1.iterator();
      while (localIterator.hasNext())
      {
        Format localFormat1 = (Format)localIterator.next();
        if (localFormat1 != null)
          arrayOfFormat[i] = localFormat1;
        i++;
      }
      super.setFormats(arrayOfFormat);
      return;
      label461: j = k;
      break label120;
      label468: str = null;
      localFormat2 = null;
    }
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == this);
    ExtendedMessageFormat localExtendedMessageFormat;
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (!super.equals(paramObject))
        return false;
      if (ObjectUtils.notEqual(getClass(), paramObject.getClass()))
        return false;
      localExtendedMessageFormat = (ExtendedMessageFormat)paramObject;
      if (ObjectUtils.notEqual(this.toPattern, localExtendedMessageFormat.toPattern))
        return false;
    }
    while (!ObjectUtils.notEqual(this.registry, localExtendedMessageFormat.registry));
    return false;
  }

  public int hashCode()
  {
    return 31 * (31 * super.hashCode() + ObjectUtils.hashCode(this.registry)) + ObjectUtils.hashCode(this.toPattern);
  }

  public void setFormat(int paramInt, Format paramFormat)
  {
    throw new UnsupportedOperationException();
  }

  public void setFormatByArgumentIndex(int paramInt, Format paramFormat)
  {
    throw new UnsupportedOperationException();
  }

  public void setFormats(Format[] paramArrayOfFormat)
  {
    throw new UnsupportedOperationException();
  }

  public void setFormatsByArgumentIndex(Format[] paramArrayOfFormat)
  {
    throw new UnsupportedOperationException();
  }

  public String toPattern()
  {
    return this.toPattern;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.text.ExtendedMessageFormat
 * JD-Core Version:    0.6.2
 */