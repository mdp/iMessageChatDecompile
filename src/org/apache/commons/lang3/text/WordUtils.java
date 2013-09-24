package org.apache.commons.lang3.text;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.SystemUtils;

public class WordUtils
{
  public static String capitalize(String paramString)
  {
    return capitalize(paramString, null);
  }

  public static String capitalize(String paramString, char[] paramArrayOfChar)
  {
    if (paramArrayOfChar == null);
    for (int i = -1; (StringUtils.isEmpty(paramString)) || (i == 0); i = paramArrayOfChar.length)
      return paramString;
    char[] arrayOfChar = paramString.toCharArray();
    int j = 0;
    int k = 1;
    if (j < arrayOfChar.length)
    {
      char c = arrayOfChar[j];
      if (isDelimiter(c, paramArrayOfChar))
        k = 1;
      while (true)
      {
        j++;
        break;
        if (k != 0)
        {
          arrayOfChar[j] = Character.toTitleCase(c);
          k = 0;
        }
      }
    }
    return new String(arrayOfChar);
  }

  public static String capitalizeFully(String paramString)
  {
    return capitalizeFully(paramString, null);
  }

  public static String capitalizeFully(String paramString, char[] paramArrayOfChar)
  {
    if (paramArrayOfChar == null);
    for (int i = -1; (StringUtils.isEmpty(paramString)) || (i == 0); i = paramArrayOfChar.length)
      return paramString;
    return capitalize(paramString.toLowerCase(), paramArrayOfChar);
  }

  public static String initials(String paramString)
  {
    return initials(paramString, null);
  }

  public static String initials(String paramString, char[] paramArrayOfChar)
  {
    if (StringUtils.isEmpty(paramString))
      return paramString;
    if ((paramArrayOfChar != null) && (paramArrayOfChar.length == 0))
      return "";
    int i = paramString.length();
    char[] arrayOfChar = new char[1 + i / 2];
    int j = 0;
    int k = 1;
    int m = 0;
    if (j < i)
    {
      char c = paramString.charAt(j);
      if (isDelimiter(c, paramArrayOfChar))
        k = 1;
      while (true)
      {
        j++;
        break;
        if (k != 0)
        {
          int n = m + 1;
          arrayOfChar[m] = c;
          m = n;
          k = 0;
        }
      }
    }
    return new String(arrayOfChar, 0, m);
  }

  private static boolean isDelimiter(char paramChar, char[] paramArrayOfChar)
  {
    boolean bool;
    if (paramArrayOfChar == null)
    {
      bool = Character.isWhitespace(paramChar);
      return bool;
    }
    int i = paramArrayOfChar.length;
    for (int j = 0; ; j++)
    {
      bool = false;
      if (j >= i)
        break;
      if (paramChar == paramArrayOfChar[j])
        return true;
    }
  }

  public static String swapCase(String paramString)
  {
    if (StringUtils.isEmpty(paramString))
      return paramString;
    char[] arrayOfChar = paramString.toCharArray();
    boolean bool = true;
    int i = 0;
    if (i < arrayOfChar.length)
    {
      char c = arrayOfChar[i];
      if (Character.isUpperCase(c))
      {
        arrayOfChar[i] = Character.toLowerCase(c);
        bool = false;
      }
      while (true)
      {
        i++;
        break;
        if (Character.isTitleCase(c))
        {
          arrayOfChar[i] = Character.toLowerCase(c);
          bool = false;
        }
        else if (Character.isLowerCase(c))
        {
          if (bool)
          {
            arrayOfChar[i] = Character.toTitleCase(c);
            bool = false;
          }
          else
          {
            arrayOfChar[i] = Character.toUpperCase(c);
          }
        }
        else
        {
          bool = Character.isWhitespace(c);
        }
      }
    }
    return new String(arrayOfChar);
  }

  public static String uncapitalize(String paramString)
  {
    return uncapitalize(paramString, null);
  }

  public static String uncapitalize(String paramString, char[] paramArrayOfChar)
  {
    if (paramArrayOfChar == null);
    for (int i = -1; (StringUtils.isEmpty(paramString)) || (i == 0); i = paramArrayOfChar.length)
      return paramString;
    char[] arrayOfChar = paramString.toCharArray();
    int j = 0;
    int k = 1;
    if (j < arrayOfChar.length)
    {
      char c = arrayOfChar[j];
      if (isDelimiter(c, paramArrayOfChar))
        k = 1;
      while (true)
      {
        j++;
        break;
        if (k != 0)
        {
          arrayOfChar[j] = Character.toLowerCase(c);
          k = 0;
        }
      }
    }
    return new String(arrayOfChar);
  }

  public static String wrap(String paramString, int paramInt)
  {
    return wrap(paramString, paramInt, null, false);
  }

  public static String wrap(String paramString1, int paramInt, String paramString2, boolean paramBoolean)
  {
    if (paramString1 == null)
      return null;
    if (paramString2 == null)
      paramString2 = SystemUtils.LINE_SEPARATOR;
    if (paramInt <= 0)
      paramInt = 1;
    int i = paramString1.length();
    int j = 0;
    StringBuilder localStringBuilder = new StringBuilder(i + 32);
    while (i - j > paramInt)
      if (paramString1.charAt(j) == ' ')
      {
        j++;
      }
      else
      {
        int k = paramString1.lastIndexOf(' ', paramInt + j);
        if (k >= j)
        {
          localStringBuilder.append(paramString1.substring(j, k));
          localStringBuilder.append(paramString2);
          j = k + 1;
        }
        else if (paramBoolean)
        {
          localStringBuilder.append(paramString1.substring(j, paramInt + j));
          localStringBuilder.append(paramString2);
          j += paramInt;
        }
        else
        {
          int m = paramString1.indexOf(' ', paramInt + j);
          if (m >= 0)
          {
            localStringBuilder.append(paramString1.substring(j, m));
            localStringBuilder.append(paramString2);
            j = m + 1;
          }
          else
          {
            localStringBuilder.append(paramString1.substring(j));
            j = i;
          }
        }
      }
    localStringBuilder.append(paramString1.substring(j));
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.text.WordUtils
 * JD-Core Version:    0.6.2
 */