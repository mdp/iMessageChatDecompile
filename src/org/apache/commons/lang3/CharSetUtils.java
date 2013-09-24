package org.apache.commons.lang3;

public class CharSetUtils
{
  public static int count(String paramString, String[] paramArrayOfString)
  {
    boolean bool1 = StringUtils.isEmpty(paramString);
    int i = 0;
    if (!bool1)
    {
      boolean bool2 = deepEmpty(paramArrayOfString);
      i = 0;
      if (!bool2)
        break label26;
    }
    while (true)
    {
      return i;
      label26: CharSet localCharSet = CharSet.getInstance(paramArrayOfString);
      char[] arrayOfChar = paramString.toCharArray();
      int j = arrayOfChar.length;
      for (int k = 0; k < j; k++)
        if (localCharSet.contains(arrayOfChar[k]))
          i++;
    }
  }

  private static boolean deepEmpty(String[] paramArrayOfString)
  {
    if (paramArrayOfString != null)
    {
      int i = paramArrayOfString.length;
      for (int j = 0; j < i; j++)
        if (StringUtils.isNotEmpty(paramArrayOfString[j]))
          return false;
    }
    return true;
  }

  public static String delete(String paramString, String[] paramArrayOfString)
  {
    if ((StringUtils.isEmpty(paramString)) || (deepEmpty(paramArrayOfString)))
      return paramString;
    return modify(paramString, paramArrayOfString, false);
  }

  public static String keep(String paramString, String[] paramArrayOfString)
  {
    if (paramString == null)
      return null;
    if ((paramString.length() == 0) || (deepEmpty(paramArrayOfString)))
      return "";
    return modify(paramString, paramArrayOfString, true);
  }

  private static String modify(String paramString, String[] paramArrayOfString, boolean paramBoolean)
  {
    CharSet localCharSet = CharSet.getInstance(paramArrayOfString);
    StringBuilder localStringBuilder = new StringBuilder(paramString.length());
    char[] arrayOfChar = paramString.toCharArray();
    int i = arrayOfChar.length;
    for (int j = 0; j < i; j++)
      if (localCharSet.contains(arrayOfChar[j]) == paramBoolean)
        localStringBuilder.append(arrayOfChar[j]);
    return localStringBuilder.toString();
  }

  public static String squeeze(String paramString, String[] paramArrayOfString)
  {
    if ((StringUtils.isEmpty(paramString)) || (deepEmpty(paramArrayOfString)))
      return paramString;
    CharSet localCharSet = CharSet.getInstance(paramArrayOfString);
    StringBuilder localStringBuilder = new StringBuilder(paramString.length());
    char[] arrayOfChar = paramString.toCharArray();
    int i = arrayOfChar.length;
    int j = 0;
    int k = 32;
    while (j < i)
    {
      char c = arrayOfChar[j];
      if ((c != k) || (j == 0) || (!localCharSet.contains(c)))
      {
        localStringBuilder.append(c);
        k = c;
      }
      j++;
    }
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.CharSetUtils
 * JD-Core Version:    0.6.2
 */