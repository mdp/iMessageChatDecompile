package org.apache.commons.lang3.text;

import java.io.Reader;
import java.io.Writer;
import java.util.Iterator;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.SystemUtils;

public class StrBuilder
  implements Appendable, CharSequence
{
  static final int CAPACITY = 32;
  private static final long serialVersionUID = 7628716375283629643L;
  protected char[] buffer;
  private String newLine;
  private String nullText;
  protected int size;

  public StrBuilder()
  {
    this(32);
  }

  public StrBuilder(int paramInt)
  {
    if (paramInt <= 0)
      paramInt = 32;
    this.buffer = new char[paramInt];
  }

  public StrBuilder(String paramString)
  {
    if (paramString == null)
    {
      this.buffer = new char[32];
      return;
    }
    this.buffer = new char[32 + paramString.length()];
    append(paramString);
  }

  private void deleteImpl(int paramInt1, int paramInt2, int paramInt3)
  {
    System.arraycopy(this.buffer, paramInt2, this.buffer, paramInt1, this.size - paramInt2);
    this.size -= paramInt3;
  }

  private StrBuilder replaceImpl(StrMatcher paramStrMatcher, String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramStrMatcher == null) || (this.size == 0))
      return this;
    int i;
    label20: int j;
    int k;
    int m;
    label37: int i2;
    int i1;
    if (paramString == null)
    {
      i = 0;
      char[] arrayOfChar = this.buffer;
      j = paramInt1;
      k = paramInt3;
      m = paramInt2;
      if ((j < m) && (k != 0))
      {
        int n = paramStrMatcher.isMatch(arrayOfChar, j, paramInt1, m);
        if (n <= 0)
          break label143;
        replaceImpl(j, j + n, n, paramString, i);
        i2 = i + (m - n);
        j = -1 + (j + i);
        if (k <= 0)
          break label136;
        i1 = k - 1;
      }
    }
    while (true)
    {
      j++;
      k = i1;
      m = i2;
      break label37;
      break;
      i = paramString.length();
      break label20;
      label136: i1 = k;
      continue;
      label143: i1 = k;
      i2 = m;
    }
  }

  private void replaceImpl(int paramInt1, int paramInt2, int paramInt3, String paramString, int paramInt4)
  {
    int i = paramInt4 + (this.size - paramInt3);
    if (paramInt4 != paramInt3)
    {
      ensureCapacity(i);
      System.arraycopy(this.buffer, paramInt2, this.buffer, paramInt1 + paramInt4, this.size - paramInt2);
      this.size = i;
    }
    if (paramInt4 > 0)
      paramString.getChars(0, paramInt4, this.buffer, paramInt1);
  }

  public StrBuilder append(char paramChar)
  {
    ensureCapacity(1 + length());
    char[] arrayOfChar = this.buffer;
    int i = this.size;
    this.size = (i + 1);
    arrayOfChar[i] = paramChar;
    return this;
  }

  public StrBuilder append(double paramDouble)
  {
    return append(String.valueOf(paramDouble));
  }

  public StrBuilder append(float paramFloat)
  {
    return append(String.valueOf(paramFloat));
  }

  public StrBuilder append(int paramInt)
  {
    return append(String.valueOf(paramInt));
  }

  public StrBuilder append(long paramLong)
  {
    return append(String.valueOf(paramLong));
  }

  public StrBuilder append(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null)
      return appendNull();
    return append(paramCharSequence.toString());
  }

  public StrBuilder append(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    if (paramCharSequence == null)
      return appendNull();
    return append(paramCharSequence.toString(), paramInt1, paramInt2);
  }

  public StrBuilder append(Object paramObject)
  {
    if (paramObject == null)
      return appendNull();
    return append(paramObject.toString());
  }

  public StrBuilder append(String paramString)
  {
    if (paramString == null)
      this = appendNull();
    int i;
    do
    {
      return this;
      i = paramString.length();
    }
    while (i <= 0);
    int j = length();
    ensureCapacity(j + i);
    paramString.getChars(0, i, this.buffer, j);
    this.size = (i + this.size);
    return this;
  }

  public StrBuilder append(String paramString, int paramInt1, int paramInt2)
  {
    if (paramString == null)
      this = appendNull();
    do
    {
      return this;
      if ((paramInt1 < 0) || (paramInt1 > paramString.length()))
        throw new StringIndexOutOfBoundsException("startIndex must be valid");
      if ((paramInt2 < 0) || (paramInt1 + paramInt2 > paramString.length()))
        throw new StringIndexOutOfBoundsException("length must be valid");
    }
    while (paramInt2 <= 0);
    int i = length();
    ensureCapacity(i + paramInt2);
    paramString.getChars(paramInt1, paramInt1 + paramInt2, this.buffer, i);
    this.size = (paramInt2 + this.size);
    return this;
  }

  public StrBuilder append(StringBuffer paramStringBuffer)
  {
    if (paramStringBuffer == null)
      this = appendNull();
    int i;
    do
    {
      return this;
      i = paramStringBuffer.length();
    }
    while (i <= 0);
    int j = length();
    ensureCapacity(j + i);
    paramStringBuffer.getChars(0, i, this.buffer, j);
    this.size = (i + this.size);
    return this;
  }

  public StrBuilder append(StringBuffer paramStringBuffer, int paramInt1, int paramInt2)
  {
    if (paramStringBuffer == null)
      this = appendNull();
    do
    {
      return this;
      if ((paramInt1 < 0) || (paramInt1 > paramStringBuffer.length()))
        throw new StringIndexOutOfBoundsException("startIndex must be valid");
      if ((paramInt2 < 0) || (paramInt1 + paramInt2 > paramStringBuffer.length()))
        throw new StringIndexOutOfBoundsException("length must be valid");
    }
    while (paramInt2 <= 0);
    int i = length();
    ensureCapacity(i + paramInt2);
    paramStringBuffer.getChars(paramInt1, paramInt1 + paramInt2, this.buffer, i);
    this.size = (paramInt2 + this.size);
    return this;
  }

  public StrBuilder append(StrBuilder paramStrBuilder)
  {
    if (paramStrBuilder == null)
      this = appendNull();
    int i;
    do
    {
      return this;
      i = paramStrBuilder.length();
    }
    while (i <= 0);
    int j = length();
    ensureCapacity(j + i);
    System.arraycopy(paramStrBuilder.buffer, 0, this.buffer, j, i);
    this.size = (i + this.size);
    return this;
  }

  public StrBuilder append(StrBuilder paramStrBuilder, int paramInt1, int paramInt2)
  {
    if (paramStrBuilder == null)
      this = appendNull();
    do
    {
      return this;
      if ((paramInt1 < 0) || (paramInt1 > paramStrBuilder.length()))
        throw new StringIndexOutOfBoundsException("startIndex must be valid");
      if ((paramInt2 < 0) || (paramInt1 + paramInt2 > paramStrBuilder.length()))
        throw new StringIndexOutOfBoundsException("length must be valid");
    }
    while (paramInt2 <= 0);
    int i = length();
    ensureCapacity(i + paramInt2);
    paramStrBuilder.getChars(paramInt1, paramInt1 + paramInt2, this.buffer, i);
    this.size = (paramInt2 + this.size);
    return this;
  }

  public StrBuilder append(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      ensureCapacity(4 + this.size);
      char[] arrayOfChar6 = this.buffer;
      int i1 = this.size;
      this.size = (i1 + 1);
      arrayOfChar6[i1] = 't';
      char[] arrayOfChar7 = this.buffer;
      int i2 = this.size;
      this.size = (i2 + 1);
      arrayOfChar7[i2] = 'r';
      char[] arrayOfChar8 = this.buffer;
      int i3 = this.size;
      this.size = (i3 + 1);
      arrayOfChar8[i3] = 'u';
      char[] arrayOfChar9 = this.buffer;
      int i4 = this.size;
      this.size = (i4 + 1);
      arrayOfChar9[i4] = 'e';
      return this;
    }
    ensureCapacity(5 + this.size);
    char[] arrayOfChar1 = this.buffer;
    int i = this.size;
    this.size = (i + 1);
    arrayOfChar1[i] = 'f';
    char[] arrayOfChar2 = this.buffer;
    int j = this.size;
    this.size = (j + 1);
    arrayOfChar2[j] = 'a';
    char[] arrayOfChar3 = this.buffer;
    int k = this.size;
    this.size = (k + 1);
    arrayOfChar3[k] = 'l';
    char[] arrayOfChar4 = this.buffer;
    int m = this.size;
    this.size = (m + 1);
    arrayOfChar4[m] = 's';
    char[] arrayOfChar5 = this.buffer;
    int n = this.size;
    this.size = (n + 1);
    arrayOfChar5[n] = 'e';
    return this;
  }

  public StrBuilder append(char[] paramArrayOfChar)
  {
    if (paramArrayOfChar == null)
      this = appendNull();
    int i;
    do
    {
      return this;
      i = paramArrayOfChar.length;
    }
    while (i <= 0);
    int j = length();
    ensureCapacity(j + i);
    System.arraycopy(paramArrayOfChar, 0, this.buffer, j, i);
    this.size = (i + this.size);
    return this;
  }

  public StrBuilder append(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    if (paramArrayOfChar == null)
      this = appendNull();
    do
    {
      return this;
      if ((paramInt1 < 0) || (paramInt1 > paramArrayOfChar.length))
        throw new StringIndexOutOfBoundsException("Invalid startIndex: " + paramInt2);
      if ((paramInt2 < 0) || (paramInt1 + paramInt2 > paramArrayOfChar.length))
        throw new StringIndexOutOfBoundsException("Invalid length: " + paramInt2);
    }
    while (paramInt2 <= 0);
    int i = length();
    ensureCapacity(i + paramInt2);
    System.arraycopy(paramArrayOfChar, paramInt1, this.buffer, i, paramInt2);
    this.size = (paramInt2 + this.size);
    return this;
  }

  public StrBuilder appendAll(Iterable paramIterable)
  {
    if (paramIterable != null)
    {
      Iterator localIterator = paramIterable.iterator();
      while (localIterator.hasNext())
        append(localIterator.next());
    }
    return this;
  }

  public StrBuilder appendAll(Iterator paramIterator)
  {
    if (paramIterator != null)
      while (paramIterator.hasNext())
        append(paramIterator.next());
    return this;
  }

  public StrBuilder appendAll(Object[] paramArrayOfObject)
  {
    if ((paramArrayOfObject != null) && (paramArrayOfObject.length > 0))
    {
      int i = paramArrayOfObject.length;
      for (int j = 0; j < i; j++)
        append(paramArrayOfObject[j]);
    }
    return this;
  }

  public StrBuilder appendFixedWidthPadLeft(int paramInt1, int paramInt2, char paramChar)
  {
    return appendFixedWidthPadLeft(String.valueOf(paramInt1), paramInt2, paramChar);
  }

  public StrBuilder appendFixedWidthPadLeft(Object paramObject, int paramInt, char paramChar)
  {
    String str;
    int i;
    if (paramInt > 0)
    {
      ensureCapacity(paramInt + this.size);
      if (paramObject != null)
        break label78;
      str = getNullText();
      if (str == null)
        str = "";
      i = str.length();
      if (i < paramInt)
        break label87;
      str.getChars(i - paramInt, i, this.buffer, this.size);
    }
    while (true)
    {
      this.size = (paramInt + this.size);
      return this;
      label78: str = paramObject.toString();
      break;
      label87: int j = paramInt - i;
      for (int k = 0; k < j; k++)
        this.buffer[(k + this.size)] = paramChar;
      str.getChars(0, i, this.buffer, j + this.size);
    }
  }

  public StrBuilder appendFixedWidthPadRight(int paramInt1, int paramInt2, char paramChar)
  {
    return appendFixedWidthPadRight(String.valueOf(paramInt1), paramInt2, paramChar);
  }

  public StrBuilder appendFixedWidthPadRight(Object paramObject, int paramInt, char paramChar)
  {
    String str;
    int i;
    if (paramInt > 0)
    {
      ensureCapacity(paramInt + this.size);
      if (paramObject != null)
        break label74;
      str = getNullText();
      if (str == null)
        str = "";
      i = str.length();
      if (i < paramInt)
        break label83;
      str.getChars(0, paramInt, this.buffer, this.size);
    }
    while (true)
    {
      this.size = (paramInt + this.size);
      return this;
      label74: str = paramObject.toString();
      break;
      label83: int j = paramInt - i;
      str.getChars(0, i, this.buffer, this.size);
      for (int k = 0; k < j; k++)
        this.buffer[(k + (i + this.size))] = paramChar;
    }
  }

  public StrBuilder appendNewLine()
  {
    if (this.newLine == null)
    {
      append(SystemUtils.LINE_SEPARATOR);
      return this;
    }
    return append(this.newLine);
  }

  public StrBuilder appendNull()
  {
    if (this.nullText == null)
      return this;
    return append(this.nullText);
  }

  public StrBuilder appendPadding(int paramInt, char paramChar)
  {
    if (paramInt >= 0)
    {
      ensureCapacity(paramInt + this.size);
      for (int i = 0; i < paramInt; i++)
      {
        char[] arrayOfChar = this.buffer;
        int j = this.size;
        this.size = (j + 1);
        arrayOfChar[j] = paramChar;
      }
    }
    return this;
  }

  public StrBuilder appendSeparator(char paramChar)
  {
    if (size() > 0)
      append(paramChar);
    return this;
  }

  public StrBuilder appendSeparator(char paramChar1, char paramChar2)
  {
    if (size() > 0)
    {
      append(paramChar1);
      return this;
    }
    append(paramChar2);
    return this;
  }

  public StrBuilder appendSeparator(char paramChar, int paramInt)
  {
    if (paramInt > 0)
      append(paramChar);
    return this;
  }

  public StrBuilder appendSeparator(String paramString)
  {
    return appendSeparator(paramString, null);
  }

  public StrBuilder appendSeparator(String paramString, int paramInt)
  {
    if ((paramString != null) && (paramInt > 0))
      append(paramString);
    return this;
  }

  public StrBuilder appendSeparator(String paramString1, String paramString2)
  {
    if (isEmpty());
    while (true)
    {
      if (paramString2 != null)
        append(paramString2);
      return this;
      paramString2 = paramString1;
    }
  }

  public StrBuilder appendWithSeparators(Iterable paramIterable, String paramString)
  {
    if (paramIterable != null)
    {
      String str = ObjectUtils.toString(paramString);
      Iterator localIterator = paramIterable.iterator();
      while (localIterator.hasNext())
      {
        append(localIterator.next());
        if (localIterator.hasNext())
          append(str);
      }
    }
    return this;
  }

  public StrBuilder appendWithSeparators(Iterator paramIterator, String paramString)
  {
    if (paramIterator != null)
    {
      String str = ObjectUtils.toString(paramString);
      while (paramIterator.hasNext())
      {
        append(paramIterator.next());
        if (paramIterator.hasNext())
          append(str);
      }
    }
    return this;
  }

  public StrBuilder appendWithSeparators(Object[] paramArrayOfObject, String paramString)
  {
    if ((paramArrayOfObject != null) && (paramArrayOfObject.length > 0))
    {
      String str = ObjectUtils.toString(paramString);
      append(paramArrayOfObject[0]);
      for (int i = 1; i < paramArrayOfObject.length; i++)
      {
        append(str);
        append(paramArrayOfObject[i]);
      }
    }
    return this;
  }

  public StrBuilder appendln(char paramChar)
  {
    return append(paramChar).appendNewLine();
  }

  public StrBuilder appendln(double paramDouble)
  {
    return append(paramDouble).appendNewLine();
  }

  public StrBuilder appendln(float paramFloat)
  {
    return append(paramFloat).appendNewLine();
  }

  public StrBuilder appendln(int paramInt)
  {
    return append(paramInt).appendNewLine();
  }

  public StrBuilder appendln(long paramLong)
  {
    return append(paramLong).appendNewLine();
  }

  public StrBuilder appendln(Object paramObject)
  {
    return append(paramObject).appendNewLine();
  }

  public StrBuilder appendln(String paramString)
  {
    return append(paramString).appendNewLine();
  }

  public StrBuilder appendln(String paramString, int paramInt1, int paramInt2)
  {
    return append(paramString, paramInt1, paramInt2).appendNewLine();
  }

  public StrBuilder appendln(StringBuffer paramStringBuffer)
  {
    return append(paramStringBuffer).appendNewLine();
  }

  public StrBuilder appendln(StringBuffer paramStringBuffer, int paramInt1, int paramInt2)
  {
    return append(paramStringBuffer, paramInt1, paramInt2).appendNewLine();
  }

  public StrBuilder appendln(StrBuilder paramStrBuilder)
  {
    return append(paramStrBuilder).appendNewLine();
  }

  public StrBuilder appendln(StrBuilder paramStrBuilder, int paramInt1, int paramInt2)
  {
    return append(paramStrBuilder, paramInt1, paramInt2).appendNewLine();
  }

  public StrBuilder appendln(boolean paramBoolean)
  {
    return append(paramBoolean).appendNewLine();
  }

  public StrBuilder appendln(char[] paramArrayOfChar)
  {
    return append(paramArrayOfChar).appendNewLine();
  }

  public StrBuilder appendln(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    return append(paramArrayOfChar, paramInt1, paramInt2).appendNewLine();
  }

  public Reader asReader()
  {
    return new StrBuilder.StrBuilderReader(this);
  }

  public StrTokenizer asTokenizer()
  {
    return new StrBuilder.StrBuilderTokenizer(this);
  }

  public Writer asWriter()
  {
    return new StrBuilder.StrBuilderWriter(this);
  }

  public int capacity()
  {
    return this.buffer.length;
  }

  public char charAt(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= length()))
      throw new StringIndexOutOfBoundsException(paramInt);
    return this.buffer[paramInt];
  }

  public StrBuilder clear()
  {
    this.size = 0;
    return this;
  }

  public boolean contains(char paramChar)
  {
    char[] arrayOfChar = this.buffer;
    for (int i = 0; ; i++)
    {
      int j = this.size;
      boolean bool = false;
      if (i < j)
      {
        if (arrayOfChar[i] == paramChar)
          bool = true;
      }
      else
        return bool;
    }
  }

  public boolean contains(String paramString)
  {
    int i = indexOf(paramString, 0);
    boolean bool = false;
    if (i >= 0)
      bool = true;
    return bool;
  }

  public boolean contains(StrMatcher paramStrMatcher)
  {
    int i = indexOf(paramStrMatcher, 0);
    boolean bool = false;
    if (i >= 0)
      bool = true;
    return bool;
  }

  public StrBuilder delete(int paramInt1, int paramInt2)
  {
    int i = validateRange(paramInt1, paramInt2);
    int j = i - paramInt1;
    if (j > 0)
      deleteImpl(paramInt1, i, j);
    return this;
  }

  public StrBuilder deleteAll(char paramChar)
  {
    for (int i = 0; i < this.size; i++)
      if (this.buffer[i] == paramChar)
      {
        int j = i;
        do
          j++;
        while ((j < this.size) && (this.buffer[j] == paramChar));
        int k = j - i;
        deleteImpl(i, j, k);
        i = j - k;
      }
    return this;
  }

  public StrBuilder deleteAll(String paramString)
  {
    if (paramString == null);
    for (int i = 0; i > 0; i = paramString.length())
      for (int j = indexOf(paramString, 0); j >= 0; j = indexOf(paramString, j))
        deleteImpl(j, j + i, i);
    return this;
  }

  public StrBuilder deleteAll(StrMatcher paramStrMatcher)
  {
    return replace(paramStrMatcher, null, 0, this.size, -1);
  }

  public StrBuilder deleteCharAt(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.size))
      throw new StringIndexOutOfBoundsException(paramInt);
    deleteImpl(paramInt, paramInt + 1, 1);
    return this;
  }

  public StrBuilder deleteFirst(char paramChar)
  {
    for (int i = 0; ; i++)
      if (i < this.size)
      {
        if (this.buffer[i] == paramChar)
          deleteImpl(i, i + 1, 1);
      }
      else
        return this;
  }

  public StrBuilder deleteFirst(String paramString)
  {
    if (paramString == null);
    for (int i = 0; ; i = paramString.length())
    {
      if (i > 0)
      {
        int j = indexOf(paramString, 0);
        if (j >= 0)
          deleteImpl(j, j + i, i);
      }
      return this;
    }
  }

  public StrBuilder deleteFirst(StrMatcher paramStrMatcher)
  {
    return replace(paramStrMatcher, null, 0, this.size, 1);
  }

  public boolean endsWith(String paramString)
  {
    if (paramString == null);
    int i;
    do
    {
      return false;
      i = paramString.length();
      if (i == 0)
        return true;
    }
    while (i > this.size);
    int j = this.size - i;
    int k = 0;
    while (true)
    {
      if (k >= i)
        break label65;
      if (this.buffer[j] != paramString.charAt(k))
        break;
      k++;
      j++;
    }
    label65: return true;
  }

  public StrBuilder ensureCapacity(int paramInt)
  {
    if (paramInt > this.buffer.length)
    {
      char[] arrayOfChar = this.buffer;
      this.buffer = new char[paramInt * 2];
      System.arraycopy(arrayOfChar, 0, this.buffer, 0, this.size);
    }
    return this;
  }

  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof StrBuilder))
      return equals((StrBuilder)paramObject);
    return false;
  }

  public boolean equals(StrBuilder paramStrBuilder)
  {
    if (this == paramStrBuilder);
    while (true)
    {
      return true;
      if (this.size != paramStrBuilder.size)
        return false;
      char[] arrayOfChar1 = this.buffer;
      char[] arrayOfChar2 = paramStrBuilder.buffer;
      for (int i = -1 + this.size; i >= 0; i--)
        if (arrayOfChar1[i] != arrayOfChar2[i])
          return false;
    }
  }

  public boolean equalsIgnoreCase(StrBuilder paramStrBuilder)
  {
    if (this == paramStrBuilder);
    while (true)
    {
      return true;
      if (this.size != paramStrBuilder.size)
        return false;
      char[] arrayOfChar1 = this.buffer;
      char[] arrayOfChar2 = paramStrBuilder.buffer;
      for (int i = -1 + this.size; i >= 0; i--)
      {
        char c1 = arrayOfChar1[i];
        char c2 = arrayOfChar2[i];
        if ((c1 != c2) && (Character.toUpperCase(c1) != Character.toUpperCase(c2)))
          return false;
      }
    }
  }

  public void getChars(int paramInt1, int paramInt2, char[] paramArrayOfChar, int paramInt3)
  {
    if (paramInt1 < 0)
      throw new StringIndexOutOfBoundsException(paramInt1);
    if ((paramInt2 < 0) || (paramInt2 > length()))
      throw new StringIndexOutOfBoundsException(paramInt2);
    if (paramInt1 > paramInt2)
      throw new StringIndexOutOfBoundsException("end < start");
    System.arraycopy(this.buffer, paramInt1, paramArrayOfChar, paramInt3, paramInt2 - paramInt1);
  }

  public char[] getChars(char[] paramArrayOfChar)
  {
    int i = length();
    if ((paramArrayOfChar == null) || (paramArrayOfChar.length < i))
      paramArrayOfChar = new char[i];
    System.arraycopy(this.buffer, 0, paramArrayOfChar, 0, i);
    return paramArrayOfChar;
  }

  public String getNewLineText()
  {
    return this.newLine;
  }

  public String getNullText()
  {
    return this.nullText;
  }

  public int hashCode()
  {
    char[] arrayOfChar = this.buffer;
    int i = 0;
    for (int j = -1 + this.size; j >= 0; j--)
      i = i * 31 + arrayOfChar[j];
    return i;
  }

  public int indexOf(char paramChar)
  {
    return indexOf(paramChar, 0);
  }

  public int indexOf(char paramChar, int paramInt)
  {
    if (paramInt < 0)
      paramInt = 0;
    if (paramInt >= this.size)
    {
      paramInt = -1;
      return paramInt;
    }
    char[] arrayOfChar = this.buffer;
    while (true)
    {
      if (paramInt >= this.size)
        break label44;
      if (arrayOfChar[paramInt] == paramChar)
        break;
      paramInt++;
    }
    label44: return -1;
  }

  public int indexOf(String paramString)
  {
    return indexOf(paramString, 0);
  }

  public int indexOf(String paramString, int paramInt)
  {
    int i;
    if (paramInt < 0)
    {
      i = 0;
      if ((paramString != null) && (i < this.size))
        break label27;
      i = -1;
    }
    label27: int j;
    do
    {
      return i;
      i = paramInt;
      break;
      j = paramString.length();
      if (j == 1)
        return indexOf(paramString.charAt(0), i);
    }
    while (j == 0);
    if (j > this.size)
      return -1;
    char[] arrayOfChar = this.buffer;
    int k = 1 + (this.size - j);
    while (true)
    {
      if (i >= k)
        break label127;
      for (int m = 0; m < j; m++)
        if (paramString.charAt(m) != arrayOfChar[(i + m)])
          break label121;
      break;
      label121: i++;
    }
    label127: return -1;
  }

  public int indexOf(StrMatcher paramStrMatcher)
  {
    return indexOf(paramStrMatcher, 0);
  }

  public int indexOf(StrMatcher paramStrMatcher, int paramInt)
  {
    if (paramInt < 0);
    for (int i = 0; (paramStrMatcher == null) || (i >= this.size); i = paramInt)
    {
      j = -1;
      return j;
    }
    int k = this.size;
    char[] arrayOfChar = this.buffer;
    for (int j = i; ; j++)
    {
      if (j >= k)
        break label71;
      if (paramStrMatcher.isMatch(arrayOfChar, j, i, k) > 0)
        break;
    }
    label71: return -1;
  }

  public StrBuilder insert(int paramInt, char paramChar)
  {
    validateIndex(paramInt);
    ensureCapacity(1 + this.size);
    System.arraycopy(this.buffer, paramInt, this.buffer, paramInt + 1, this.size - paramInt);
    this.buffer[paramInt] = paramChar;
    this.size = (1 + this.size);
    return this;
  }

  public StrBuilder insert(int paramInt, double paramDouble)
  {
    return insert(paramInt, String.valueOf(paramDouble));
  }

  public StrBuilder insert(int paramInt, float paramFloat)
  {
    return insert(paramInt, String.valueOf(paramFloat));
  }

  public StrBuilder insert(int paramInt1, int paramInt2)
  {
    return insert(paramInt1, String.valueOf(paramInt2));
  }

  public StrBuilder insert(int paramInt, long paramLong)
  {
    return insert(paramInt, String.valueOf(paramLong));
  }

  public StrBuilder insert(int paramInt, Object paramObject)
  {
    if (paramObject == null)
      return insert(paramInt, this.nullText);
    return insert(paramInt, paramObject.toString());
  }

  public StrBuilder insert(int paramInt, String paramString)
  {
    validateIndex(paramInt);
    if (paramString == null)
      paramString = this.nullText;
    if (paramString == null);
    for (int i = 0; ; i = paramString.length())
    {
      if (i > 0)
      {
        int j = i + this.size;
        ensureCapacity(j);
        System.arraycopy(this.buffer, paramInt, this.buffer, paramInt + i, this.size - paramInt);
        this.size = j;
        paramString.getChars(0, i, this.buffer, paramInt);
      }
      return this;
    }
  }

  public StrBuilder insert(int paramInt, boolean paramBoolean)
  {
    validateIndex(paramInt);
    if (paramBoolean)
    {
      ensureCapacity(4 + this.size);
      System.arraycopy(this.buffer, paramInt, this.buffer, paramInt + 4, this.size - paramInt);
      char[] arrayOfChar5 = this.buffer;
      int n = paramInt + 1;
      arrayOfChar5[paramInt] = 't';
      char[] arrayOfChar6 = this.buffer;
      int i1 = n + 1;
      arrayOfChar6[n] = 'r';
      char[] arrayOfChar7 = this.buffer;
      int i2 = i1 + 1;
      arrayOfChar7[i1] = 'u';
      this.buffer[i2] = 'e';
      this.size = (4 + this.size);
      return this;
    }
    ensureCapacity(5 + this.size);
    System.arraycopy(this.buffer, paramInt, this.buffer, paramInt + 5, this.size - paramInt);
    char[] arrayOfChar1 = this.buffer;
    int i = paramInt + 1;
    arrayOfChar1[paramInt] = 'f';
    char[] arrayOfChar2 = this.buffer;
    int j = i + 1;
    arrayOfChar2[i] = 'a';
    char[] arrayOfChar3 = this.buffer;
    int k = j + 1;
    arrayOfChar3[j] = 'l';
    char[] arrayOfChar4 = this.buffer;
    int m = k + 1;
    arrayOfChar4[k] = 's';
    this.buffer[m] = 'e';
    this.size = (5 + this.size);
    return this;
  }

  public StrBuilder insert(int paramInt, char[] paramArrayOfChar)
  {
    validateIndex(paramInt);
    if (paramArrayOfChar == null)
      this = insert(paramInt, this.nullText);
    int i;
    do
    {
      return this;
      i = paramArrayOfChar.length;
    }
    while (i <= 0);
    ensureCapacity(i + this.size);
    System.arraycopy(this.buffer, paramInt, this.buffer, paramInt + i, this.size - paramInt);
    System.arraycopy(paramArrayOfChar, 0, this.buffer, paramInt, i);
    this.size = (i + this.size);
    return this;
  }

  public StrBuilder insert(int paramInt1, char[] paramArrayOfChar, int paramInt2, int paramInt3)
  {
    validateIndex(paramInt1);
    if (paramArrayOfChar == null)
      this = insert(paramInt1, this.nullText);
    do
    {
      return this;
      if ((paramInt2 < 0) || (paramInt2 > paramArrayOfChar.length))
        throw new StringIndexOutOfBoundsException("Invalid offset: " + paramInt2);
      if ((paramInt3 < 0) || (paramInt2 + paramInt3 > paramArrayOfChar.length))
        throw new StringIndexOutOfBoundsException("Invalid length: " + paramInt3);
    }
    while (paramInt3 <= 0);
    ensureCapacity(paramInt3 + this.size);
    System.arraycopy(this.buffer, paramInt1, this.buffer, paramInt1 + paramInt3, this.size - paramInt1);
    System.arraycopy(paramArrayOfChar, paramInt2, this.buffer, paramInt1, paramInt3);
    this.size = (paramInt3 + this.size);
    return this;
  }

  public boolean isEmpty()
  {
    return this.size == 0;
  }

  public int lastIndexOf(char paramChar)
  {
    return lastIndexOf(paramChar, -1 + this.size);
  }

  public int lastIndexOf(char paramChar, int paramInt)
  {
    int i;
    if (paramInt >= this.size)
    {
      i = -1 + this.size;
      if (i >= 0)
        break label29;
    }
    label29: 
    do
      do
      {
        return -1;
        i = paramInt;
        break;
        i--;
      }
      while (i < 0);
    while (this.buffer[i] != paramChar);
    return i;
  }

  public int lastIndexOf(String paramString)
  {
    return lastIndexOf(paramString, -1 + this.size);
  }

  public int lastIndexOf(String paramString, int paramInt)
  {
    int i;
    if (paramInt >= this.size)
    {
      i = -1 + this.size;
      if ((paramString != null) && (i >= 0))
        break label32;
      i = -1;
    }
    label32: int j;
    label114: 
    do
    {
      return i;
      i = paramInt;
      break;
      j = paramString.length();
      if ((j > 0) && (j <= this.size))
      {
        if (j == 1)
          return lastIndexOf(paramString.charAt(0), i);
        for (i = 1 + (i - j); ; i--)
        {
          if (i < 0)
            break label125;
          for (int k = 0; k < j; k++)
            if (paramString.charAt(k) != this.buffer[(i + k)])
              break label114;
          break;
        }
      }
    }
    while (j == 0);
    label125: return -1;
  }

  public int lastIndexOf(StrMatcher paramStrMatcher)
  {
    return lastIndexOf(paramStrMatcher, this.size);
  }

  public int lastIndexOf(StrMatcher paramStrMatcher, int paramInt)
  {
    if (paramInt >= this.size);
    for (int i = -1 + this.size; (paramStrMatcher == null) || (i < 0); i = paramInt)
    {
      i = -1;
      return i;
    }
    char[] arrayOfChar = this.buffer;
    int j = i + 1;
    while (true)
    {
      if (i < 0)
        break label66;
      if (paramStrMatcher.isMatch(arrayOfChar, i, 0, j) > 0)
        break;
      i--;
    }
    label66: return -1;
  }

  public String leftString(int paramInt)
  {
    if (paramInt <= 0)
      return "";
    if (paramInt >= this.size)
      return new String(this.buffer, 0, this.size);
    return new String(this.buffer, 0, paramInt);
  }

  public int length()
  {
    return this.size;
  }

  public String midString(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0)
      paramInt1 = 0;
    if ((paramInt2 <= 0) || (paramInt1 >= this.size))
      return "";
    if (this.size <= paramInt1 + paramInt2)
      return new String(this.buffer, paramInt1, this.size - paramInt1);
    return new String(this.buffer, paramInt1, paramInt2);
  }

  public StrBuilder minimizeCapacity()
  {
    if (this.buffer.length > length())
    {
      char[] arrayOfChar = this.buffer;
      this.buffer = new char[length()];
      System.arraycopy(arrayOfChar, 0, this.buffer, 0, this.size);
    }
    return this;
  }

  public StrBuilder replace(int paramInt1, int paramInt2, String paramString)
  {
    int i = validateRange(paramInt1, paramInt2);
    if (paramString == null);
    for (int j = 0; ; j = paramString.length())
    {
      replaceImpl(paramInt1, i, i - paramInt1, paramString, j);
      return this;
    }
  }

  public StrBuilder replace(StrMatcher paramStrMatcher, String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    return replaceImpl(paramStrMatcher, paramString, paramInt1, validateRange(paramInt1, paramInt2), paramInt3);
  }

  public StrBuilder replaceAll(char paramChar1, char paramChar2)
  {
    if (paramChar1 != paramChar2)
      for (int i = 0; i < this.size; i++)
        if (this.buffer[i] == paramChar1)
          this.buffer[i] = paramChar2;
    return this;
  }

  public StrBuilder replaceAll(String paramString1, String paramString2)
  {
    int i;
    if (paramString1 == null)
    {
      i = 0;
      if (i <= 0)
        break label76;
      if (paramString2 != null)
        break label67;
    }
    label67: for (int j = 0; ; j = paramString2.length())
    {
      for (int k = indexOf(paramString1, 0); k >= 0; k = indexOf(paramString1, k + j))
        replaceImpl(k, k + i, i, paramString2, j);
      i = paramString1.length();
      break;
    }
    label76: return this;
  }

  public StrBuilder replaceAll(StrMatcher paramStrMatcher, String paramString)
  {
    return replace(paramStrMatcher, paramString, 0, this.size, -1);
  }

  public StrBuilder replaceFirst(char paramChar1, char paramChar2)
  {
    if (paramChar1 != paramChar2);
    for (int i = 0; ; i++)
      if (i < this.size)
      {
        if (this.buffer[i] == paramChar1)
          this.buffer[i] = paramChar2;
      }
      else
        return this;
  }

  public StrBuilder replaceFirst(String paramString1, String paramString2)
  {
    int i;
    int j;
    int k;
    if (paramString1 == null)
    {
      i = 0;
      if (i > 0)
      {
        j = indexOf(paramString1, 0);
        if (j >= 0)
        {
          k = 0;
          if (paramString2 != null)
            break label54;
        }
      }
    }
    while (true)
    {
      replaceImpl(j, j + i, i, paramString2, k);
      return this;
      i = paramString1.length();
      break;
      label54: k = paramString2.length();
    }
  }

  public StrBuilder replaceFirst(StrMatcher paramStrMatcher, String paramString)
  {
    return replace(paramStrMatcher, paramString, 0, this.size, 1);
  }

  public StrBuilder reverse()
  {
    if (this.size == 0);
    while (true)
    {
      return this;
      int i = this.size / 2;
      char[] arrayOfChar = this.buffer;
      int j = 0;
      for (int k = -1 + this.size; j < i; k--)
      {
        int m = arrayOfChar[j];
        arrayOfChar[j] = arrayOfChar[k];
        arrayOfChar[k] = m;
        j++;
      }
    }
  }

  public String rightString(int paramInt)
  {
    if (paramInt <= 0)
      return "";
    if (paramInt >= this.size)
      return new String(this.buffer, 0, this.size);
    return new String(this.buffer, this.size - paramInt, paramInt);
  }

  public StrBuilder setCharAt(int paramInt, char paramChar)
  {
    if ((paramInt < 0) || (paramInt >= length()))
      throw new StringIndexOutOfBoundsException(paramInt);
    this.buffer[paramInt] = paramChar;
    return this;
  }

  public StrBuilder setLength(int paramInt)
  {
    if (paramInt < 0)
      throw new StringIndexOutOfBoundsException(paramInt);
    if (paramInt < this.size)
      this.size = paramInt;
    while (true)
    {
      return this;
      if (paramInt > this.size)
      {
        ensureCapacity(paramInt);
        int i = this.size;
        this.size = paramInt;
        while (i < paramInt)
        {
          this.buffer[i] = '\000';
          i++;
        }
      }
    }
  }

  public StrBuilder setNewLineText(String paramString)
  {
    this.newLine = paramString;
    return this;
  }

  public StrBuilder setNullText(String paramString)
  {
    if ((paramString != null) && (paramString.length() == 0))
      paramString = null;
    this.nullText = paramString;
    return this;
  }

  public int size()
  {
    return this.size;
  }

  public boolean startsWith(String paramString)
  {
    if (paramString == null);
    int i;
    do
    {
      return false;
      i = paramString.length();
      if (i == 0)
        return true;
    }
    while (i > this.size);
    for (int j = 0; ; j++)
    {
      if (j >= i)
        break label52;
      if (this.buffer[j] != paramString.charAt(j))
        break;
    }
    label52: return true;
  }

  public CharSequence subSequence(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0)
      throw new StringIndexOutOfBoundsException(paramInt1);
    if (paramInt2 > this.size)
      throw new StringIndexOutOfBoundsException(paramInt2);
    if (paramInt1 > paramInt2)
      throw new StringIndexOutOfBoundsException(paramInt2 - paramInt1);
    return substring(paramInt1, paramInt2);
  }

  public String substring(int paramInt)
  {
    return substring(paramInt, this.size);
  }

  public String substring(int paramInt1, int paramInt2)
  {
    int i = validateRange(paramInt1, paramInt2);
    return new String(this.buffer, paramInt1, i - paramInt1);
  }

  public char[] toCharArray()
  {
    if (this.size == 0)
      return ArrayUtils.EMPTY_CHAR_ARRAY;
    char[] arrayOfChar = new char[this.size];
    System.arraycopy(this.buffer, 0, arrayOfChar, 0, this.size);
    return arrayOfChar;
  }

  public char[] toCharArray(int paramInt1, int paramInt2)
  {
    int i = validateRange(paramInt1, paramInt2) - paramInt1;
    if (i == 0)
      return ArrayUtils.EMPTY_CHAR_ARRAY;
    char[] arrayOfChar = new char[i];
    System.arraycopy(this.buffer, paramInt1, arrayOfChar, 0, i);
    return arrayOfChar;
  }

  public String toString()
  {
    return new String(this.buffer, 0, this.size);
  }

  public StringBuffer toStringBuffer()
  {
    return new StringBuffer(this.size).append(this.buffer, 0, this.size);
  }

  public StrBuilder trim()
  {
    if (this.size == 0);
    int j;
    do
    {
      return this;
      int i = this.size;
      char[] arrayOfChar = this.buffer;
      for (j = 0; (j < i) && (arrayOfChar[j] <= ' '); j++);
      while ((j < i) && (arrayOfChar[(i - 1)] <= ' '))
        i--;
      if (i < this.size)
        delete(i, this.size);
    }
    while (j <= 0);
    delete(0, j);
    return this;
  }

  protected void validateIndex(int paramInt)
  {
    if ((paramInt < 0) || (paramInt > this.size))
      throw new StringIndexOutOfBoundsException(paramInt);
  }

  protected int validateRange(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0)
      throw new StringIndexOutOfBoundsException(paramInt1);
    if (paramInt2 > this.size)
      paramInt2 = this.size;
    if (paramInt1 > paramInt2)
      throw new StringIndexOutOfBoundsException("end < start");
    return paramInt2;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.text.StrBuilder
 * JD-Core Version:    0.6.2
 */