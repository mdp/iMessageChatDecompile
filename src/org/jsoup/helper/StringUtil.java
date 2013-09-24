package org.jsoup.helper;

import java.util.Collection;
import java.util.Iterator;

public final class StringUtil
{
  private static final String[] a = { "", " ", "  ", "   ", "    ", "     ", "      ", "       ", "        ", "         ", "          " };

  public static String a(int paramInt)
  {
    if (paramInt < 0)
      throw new IllegalArgumentException("width must be > 0");
    if (paramInt < a.length)
      return a[paramInt];
    char[] arrayOfChar = new char[paramInt];
    for (int i = 0; i < paramInt; i++)
      arrayOfChar[i] = ' ';
    return String.valueOf(arrayOfChar);
  }

  public static String a(Collection paramCollection, String paramString)
  {
    Iterator localIterator = paramCollection.iterator();
    String str;
    if (!localIterator.hasNext())
      str = "";
    do
    {
      return str;
      str = localIterator.next().toString();
    }
    while (!localIterator.hasNext());
    StringBuilder localStringBuilder = new StringBuilder(64).append(str);
    while (localIterator.hasNext())
    {
      localStringBuilder.append(paramString);
      localStringBuilder.append(localIterator.next());
    }
    return localStringBuilder.toString();
  }

  public static boolean a(String paramString)
  {
    boolean bool1;
    if ((paramString == null) || (paramString.length() == 0))
    {
      bool1 = true;
      return bool1;
    }
    int i = paramString.length();
    for (int j = 0; ; j++)
    {
      if (j >= i)
        break label50;
      boolean bool2 = b(paramString.codePointAt(j));
      bool1 = false;
      if (!bool2)
        break;
    }
    label50: return true;
  }

  public static boolean a(String paramString, String[] paramArrayOfString)
  {
    int i = paramArrayOfString.length;
    for (int j = 0; ; j++)
    {
      boolean bool = false;
      if (j < i)
      {
        if (paramArrayOfString[j].equals(paramString))
          bool = true;
      }
      else
        return bool;
    }
  }

  public static String b(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramString.length());
    int i = paramString.length();
    int j = 0;
    int k = 0;
    int m = 0;
    if (j < i)
    {
      int n = paramString.codePointAt(j);
      if (b(n))
        if (m != 0)
          k = 1;
      while (true)
      {
        j += Character.charCount(n);
        break;
        if (n != 32)
          k = 1;
        localStringBuilder.append(' ');
        m = 1;
        continue;
        localStringBuilder.appendCodePoint(n);
        m = 0;
      }
    }
    if (k != 0)
      paramString = localStringBuilder.toString();
    return paramString;
  }

  public static boolean b(int paramInt)
  {
    return (paramInt == 32) || (paramInt == 9) || (paramInt == 10) || (paramInt == 12) || (paramInt == 13);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.helper.StringUtil
 * JD-Core Version:    0.6.2
 */