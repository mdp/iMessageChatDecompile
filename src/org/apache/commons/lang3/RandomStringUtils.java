package org.apache.commons.lang3;

import java.util.Random;

public class RandomStringUtils
{
  private static final Random RANDOM = new Random();

  public static String random(int paramInt)
  {
    return random(paramInt, false, false);
  }

  public static String random(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2)
  {
    return random(paramInt1, paramInt2, paramInt3, paramBoolean1, paramBoolean2, null, RANDOM);
  }

  public static String random(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2, char[] paramArrayOfChar)
  {
    return random(paramInt1, paramInt2, paramInt3, paramBoolean1, paramBoolean2, paramArrayOfChar, RANDOM);
  }

  public static String random(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2, char[] paramArrayOfChar, Random paramRandom)
  {
    if (paramInt1 == 0)
      return "";
    if (paramInt1 < 0)
      throw new IllegalArgumentException("Requested random string length " + paramInt1 + " is less than 0.");
    if ((paramInt2 == 0) && (paramInt3 == 0))
    {
      paramInt3 = 123;
      paramInt2 = 32;
      if ((!paramBoolean1) && (!paramBoolean2))
      {
        paramInt2 = 0;
        paramInt3 = 2147483647;
      }
    }
    char[] arrayOfChar = new char[paramInt1];
    int i = paramInt3 - paramInt2;
    while (true)
    {
      int j = paramInt1 - 1;
      if (paramInt1 == 0)
        break;
      int k;
      if (paramArrayOfChar == null)
        k = (char)(paramInt2 + paramRandom.nextInt(i));
      while (true)
        if (((paramBoolean1) && (Character.isLetter(k))) || ((paramBoolean2) && (Character.isDigit(k))) || ((!paramBoolean1) && (!paramBoolean2)))
        {
          int m;
          if ((k >= 56320) && (k <= 57343))
          {
            if (j == 0)
              break label282;
            arrayOfChar[j] = k;
            paramInt1 = j - 1;
            arrayOfChar[paramInt1] = ((char)(55296 + paramRandom.nextInt(128)));
            break;
            m = paramArrayOfChar[(paramInt2 + paramRandom.nextInt(i))];
            continue;
          }
          if ((m >= 55296) && (m <= 56191))
          {
            if (j == 0)
              break label282;
            arrayOfChar[j] = ((char)(56320 + paramRandom.nextInt(128)));
            paramInt1 = j - 1;
            arrayOfChar[paramInt1] = m;
            break;
          }
          if ((m < 56192) || (m > 56319))
          {
            arrayOfChar[j] = m;
            paramInt1 = j;
            break;
          }
        }
      label282: paramInt1 = j + 1;
    }
    return new String(arrayOfChar);
  }

  public static String random(int paramInt, String paramString)
  {
    if (paramString == null)
      return random(paramInt, 0, 0, false, false, null, RANDOM);
    return random(paramInt, paramString.toCharArray());
  }

  public static String random(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    return random(paramInt, 0, 0, paramBoolean1, paramBoolean2);
  }

  public static String random(int paramInt, char[] paramArrayOfChar)
  {
    if (paramArrayOfChar == null)
      return random(paramInt, 0, 0, false, false, null, RANDOM);
    return random(paramInt, 0, paramArrayOfChar.length, false, false, paramArrayOfChar, RANDOM);
  }

  public static String randomAlphabetic(int paramInt)
  {
    return random(paramInt, true, false);
  }

  public static String randomAlphanumeric(int paramInt)
  {
    return random(paramInt, true, true);
  }

  public static String randomAscii(int paramInt)
  {
    return random(paramInt, 32, 127, false, false);
  }

  public static String randomNumeric(int paramInt)
  {
    return random(paramInt, false, true);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.RandomStringUtils
 * JD-Core Version:    0.6.2
 */