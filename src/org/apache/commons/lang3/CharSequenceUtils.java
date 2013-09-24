package org.apache.commons.lang3;

public class CharSequenceUtils
{
  static int indexOf(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    int j;
    if ((paramCharSequence instanceof String))
    {
      j = ((String)paramCharSequence).indexOf(paramInt1, paramInt2);
      return j;
    }
    int i = paramCharSequence.length();
    if (paramInt2 < 0)
      j = 0;
    while (true)
    {
      if (j < i)
      {
        if (paramCharSequence.charAt(j) == paramInt1)
          break;
        j++;
        continue;
      }
      return -1;
      j = paramInt2;
    }
  }

  static int indexOf(CharSequence paramCharSequence1, CharSequence paramCharSequence2, int paramInt)
  {
    return paramCharSequence1.toString().indexOf(paramCharSequence2.toString(), paramInt);
  }

  static int lastIndexOf(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    int i = -1;
    if ((paramCharSequence instanceof String))
      i = ((String)paramCharSequence).lastIndexOf(paramInt1, paramInt2);
    while (true)
    {
      return i;
      int j = paramCharSequence.length();
      if (paramInt2 >= 0)
      {
        int k;
        if (paramInt2 >= j)
          k = j - 1;
        while (k >= 0)
        {
          if (paramCharSequence.charAt(k) == paramInt1)
            return k;
          k--;
          continue;
          k = paramInt2;
        }
      }
    }
  }

  static int lastIndexOf(CharSequence paramCharSequence1, CharSequence paramCharSequence2, int paramInt)
  {
    return paramCharSequence1.toString().lastIndexOf(paramCharSequence2.toString(), paramInt);
  }

  static boolean regionMatches(CharSequence paramCharSequence1, boolean paramBoolean, int paramInt1, CharSequence paramCharSequence2, int paramInt2, int paramInt3)
  {
    if (((paramCharSequence1 instanceof String)) && ((paramCharSequence2 instanceof String)))
      return ((String)paramCharSequence1).regionMatches(paramBoolean, paramInt1, (String)paramCharSequence2, paramInt2, paramInt3);
    return paramCharSequence1.toString().regionMatches(paramBoolean, paramInt1, paramCharSequence2.toString(), paramInt2, paramInt3);
  }

  public static CharSequence subSequence(CharSequence paramCharSequence, int paramInt)
  {
    if (paramCharSequence == null)
      return null;
    return paramCharSequence.subSequence(paramInt, paramCharSequence.length());
  }

  static char[] toCharArray(CharSequence paramCharSequence)
  {
    char[] arrayOfChar;
    if ((paramCharSequence instanceof String))
      arrayOfChar = ((String)paramCharSequence).toCharArray();
    while (true)
    {
      return arrayOfChar;
      int i = paramCharSequence.length();
      arrayOfChar = new char[paramCharSequence.length()];
      for (int j = 0; j < i; j++)
        arrayOfChar[j] = paramCharSequence.charAt(j);
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.CharSequenceUtils
 * JD-Core Version:    0.6.2
 */