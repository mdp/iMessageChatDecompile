package com.c;

public final class e
{
  public static boolean a(String paramString, String[] paramArrayOfString)
  {
    String str = paramString.toLowerCase();
    int i = paramArrayOfString.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return false;
      if (str.endsWith(paramArrayOfString[j]))
        return true;
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.c.e
 * JD-Core Version:    0.6.2
 */