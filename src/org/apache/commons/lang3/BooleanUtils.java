package org.apache.commons.lang3;

import org.apache.commons.lang3.math.NumberUtils;

public class BooleanUtils
{
  public static Boolean and(Boolean[] paramArrayOfBoolean)
  {
    if (paramArrayOfBoolean == null)
      throw new IllegalArgumentException("The Array must not be null");
    if (paramArrayOfBoolean.length == 0)
      throw new IllegalArgumentException("Array is empty");
    try
    {
      if (and(ArrayUtils.toPrimitive(paramArrayOfBoolean)))
        return Boolean.TRUE;
      Boolean localBoolean = Boolean.FALSE;
      return localBoolean;
    }
    catch (NullPointerException localNullPointerException)
    {
    }
    throw new IllegalArgumentException("The array must not contain any null elements");
  }

  public static boolean and(boolean[] paramArrayOfBoolean)
  {
    if (paramArrayOfBoolean == null)
      throw new IllegalArgumentException("The Array must not be null");
    if (paramArrayOfBoolean.length == 0)
      throw new IllegalArgumentException("Array is empty");
    int i = paramArrayOfBoolean.length;
    for (int j = 0; j < i; j++)
      if (paramArrayOfBoolean[j] == 0)
        return false;
    return true;
  }

  public static boolean isFalse(Boolean paramBoolean)
  {
    return Boolean.FALSE.equals(paramBoolean);
  }

  public static boolean isNotFalse(Boolean paramBoolean)
  {
    return !isFalse(paramBoolean);
  }

  public static boolean isNotTrue(Boolean paramBoolean)
  {
    return !isTrue(paramBoolean);
  }

  public static boolean isTrue(Boolean paramBoolean)
  {
    return Boolean.TRUE.equals(paramBoolean);
  }

  public static Boolean negate(Boolean paramBoolean)
  {
    if (paramBoolean == null)
      return null;
    if (paramBoolean.booleanValue())
      return Boolean.FALSE;
    return Boolean.TRUE;
  }

  public static Boolean or(Boolean[] paramArrayOfBoolean)
  {
    if (paramArrayOfBoolean == null)
      throw new IllegalArgumentException("The Array must not be null");
    if (paramArrayOfBoolean.length == 0)
      throw new IllegalArgumentException("Array is empty");
    try
    {
      if (or(ArrayUtils.toPrimitive(paramArrayOfBoolean)))
        return Boolean.TRUE;
      Boolean localBoolean = Boolean.FALSE;
      return localBoolean;
    }
    catch (NullPointerException localNullPointerException)
    {
    }
    throw new IllegalArgumentException("The array must not contain any null elements");
  }

  public static boolean or(boolean[] paramArrayOfBoolean)
  {
    if (paramArrayOfBoolean == null)
      throw new IllegalArgumentException("The Array must not be null");
    if (paramArrayOfBoolean.length == 0)
      throw new IllegalArgumentException("Array is empty");
    int i = paramArrayOfBoolean.length;
    for (int j = 0; ; j++)
    {
      boolean bool = false;
      if (j < i)
      {
        if (paramArrayOfBoolean[j] != 0)
          bool = true;
      }
      else
        return bool;
    }
  }

  public static boolean toBoolean(int paramInt)
  {
    return paramInt != 0;
  }

  public static boolean toBoolean(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 == paramInt2)
      return true;
    if (paramInt1 == paramInt3)
      return false;
    throw new IllegalArgumentException("The Integer did not match either specified value");
  }

  public static boolean toBoolean(Boolean paramBoolean)
  {
    return (paramBoolean != null) && (paramBoolean.booleanValue());
  }

  public static boolean toBoolean(Integer paramInteger1, Integer paramInteger2, Integer paramInteger3)
  {
    if (paramInteger1 == null)
      if (paramInteger2 != null);
    while (paramInteger1.equals(paramInteger2))
    {
      return true;
      if (paramInteger3 != null)
        break;
      return false;
    }
    if (paramInteger1.equals(paramInteger3))
      return false;
    throw new IllegalArgumentException("The Integer did not match either specified value");
  }

  public static boolean toBoolean(String paramString)
  {
    return toBooleanObject(paramString) == Boolean.TRUE;
  }

  public static boolean toBoolean(String paramString1, String paramString2, String paramString3)
  {
    if (paramString1 == paramString2);
    do
    {
      return true;
      if (paramString1 == paramString3)
        return false;
      if (paramString1 == null)
        break;
    }
    while (paramString1.equals(paramString2));
    if (paramString1.equals(paramString3))
      return false;
    throw new IllegalArgumentException("The String did not match either specified value");
  }

  public static boolean toBooleanDefaultIfNull(Boolean paramBoolean, boolean paramBoolean1)
  {
    if (paramBoolean == null)
      return paramBoolean1;
    return paramBoolean.booleanValue();
  }

  public static Boolean toBooleanObject(int paramInt)
  {
    if (paramInt == 0)
      return Boolean.FALSE;
    return Boolean.TRUE;
  }

  public static Boolean toBooleanObject(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramInt1 == paramInt2)
      return Boolean.TRUE;
    if (paramInt1 == paramInt3)
      return Boolean.FALSE;
    if (paramInt1 == paramInt4)
      return null;
    throw new IllegalArgumentException("The Integer did not match any specified value");
  }

  public static Boolean toBooleanObject(Integer paramInteger)
  {
    if (paramInteger == null)
      return null;
    if (paramInteger.intValue() == 0)
      return Boolean.FALSE;
    return Boolean.TRUE;
  }

  public static Boolean toBooleanObject(Integer paramInteger1, Integer paramInteger2, Integer paramInteger3, Integer paramInteger4)
  {
    if (paramInteger1 == null)
    {
      Boolean localBoolean;
      if (paramInteger2 == null)
        localBoolean = Boolean.TRUE;
      do
      {
        return localBoolean;
        if (paramInteger3 == null)
          return Boolean.FALSE;
        localBoolean = null;
      }
      while (paramInteger4 == null);
    }
    do
    {
      throw new IllegalArgumentException("The Integer did not match any specified value");
      if (paramInteger1.equals(paramInteger2))
        return Boolean.TRUE;
      if (paramInteger1.equals(paramInteger3))
        return Boolean.FALSE;
    }
    while (!paramInteger1.equals(paramInteger4));
    return null;
  }

  public static Boolean toBooleanObject(String paramString)
  {
    if (paramString == "true")
      return Boolean.TRUE;
    if (paramString == null)
      return null;
    switch (paramString.length())
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    }
    int i;
    int j;
    int k;
    int m;
    int n;
    do
    {
      int i1;
      int i2;
      int i3;
      int i4;
      do
      {
        int i5;
        int i6;
        int i7;
        do
        {
          int i8;
          int i9;
          do
          {
            int i10;
            do
            {
              return null;
              i10 = paramString.charAt(0);
              if ((i10 == 121) || (i10 == 89) || (i10 == 116) || (i10 == 84))
                return Boolean.TRUE;
            }
            while ((i10 != 110) && (i10 != 78) && (i10 != 102) && (i10 != 70));
            return Boolean.FALSE;
            i8 = paramString.charAt(0);
            i9 = paramString.charAt(1);
            if (((i8 == 111) || (i8 == 79)) && ((i9 == 110) || (i9 == 78)))
              return Boolean.TRUE;
          }
          while (((i8 != 110) && (i8 != 78)) || ((i9 != 111) && (i9 != 79)));
          return Boolean.FALSE;
          i5 = paramString.charAt(0);
          i6 = paramString.charAt(1);
          i7 = paramString.charAt(2);
          if (((i5 == 121) || (i5 == 89)) && ((i6 == 101) || (i6 == 69)) && ((i7 == 115) || (i7 == 83)))
            return Boolean.TRUE;
        }
        while (((i5 != 111) && (i5 != 79)) || ((i6 != 102) && (i6 != 70)) || ((i7 != 102) && (i7 != 70)));
        return Boolean.FALSE;
        i1 = paramString.charAt(0);
        i2 = paramString.charAt(1);
        i3 = paramString.charAt(2);
        i4 = paramString.charAt(3);
      }
      while (((i1 != 116) && (i1 != 84)) || ((i2 != 114) && (i2 != 82)) || ((i3 != 117) && (i3 != 85)) || ((i4 != 101) && (i4 != 69)));
      return Boolean.TRUE;
      i = paramString.charAt(0);
      j = paramString.charAt(1);
      k = paramString.charAt(2);
      m = paramString.charAt(3);
      n = paramString.charAt(4);
    }
    while (((i != 102) && (i != 70)) || ((j != 97) && (j != 65)) || ((k != 108) && (k != 76)) || ((m != 115) && (m != 83)) || ((n != 101) && (n != 69)));
    return Boolean.FALSE;
  }

  public static Boolean toBooleanObject(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    if (paramString1 == null)
    {
      Boolean localBoolean;
      if (paramString2 == null)
        localBoolean = Boolean.TRUE;
      do
      {
        return localBoolean;
        if (paramString3 == null)
          return Boolean.FALSE;
        localBoolean = null;
      }
      while (paramString4 == null);
    }
    do
    {
      throw new IllegalArgumentException("The String did not match any specified value");
      if (paramString1.equals(paramString2))
        return Boolean.TRUE;
      if (paramString1.equals(paramString3))
        return Boolean.FALSE;
    }
    while (!paramString1.equals(paramString4));
    return null;
  }

  public static int toInteger(Boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramBoolean == null)
      return paramInt3;
    if (paramBoolean.booleanValue())
      return paramInt1;
    return paramInt2;
  }

  public static int toInteger(boolean paramBoolean)
  {
    if (paramBoolean)
      return 1;
    return 0;
  }

  public static int toInteger(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    if (paramBoolean)
      return paramInt1;
    return paramInt2;
  }

  public static Integer toIntegerObject(Boolean paramBoolean)
  {
    if (paramBoolean == null)
      return null;
    if (paramBoolean.booleanValue())
      return NumberUtils.INTEGER_ONE;
    return NumberUtils.INTEGER_ZERO;
  }

  public static Integer toIntegerObject(Boolean paramBoolean, Integer paramInteger1, Integer paramInteger2, Integer paramInteger3)
  {
    if (paramBoolean == null)
      return paramInteger3;
    if (paramBoolean.booleanValue())
      return paramInteger1;
    return paramInteger2;
  }

  public static Integer toIntegerObject(boolean paramBoolean)
  {
    if (paramBoolean)
      return NumberUtils.INTEGER_ONE;
    return NumberUtils.INTEGER_ZERO;
  }

  public static Integer toIntegerObject(boolean paramBoolean, Integer paramInteger1, Integer paramInteger2)
  {
    if (paramBoolean)
      return paramInteger1;
    return paramInteger2;
  }

  public static String toString(Boolean paramBoolean, String paramString1, String paramString2, String paramString3)
  {
    if (paramBoolean == null)
      return paramString3;
    if (paramBoolean.booleanValue())
      return paramString1;
    return paramString2;
  }

  public static String toString(boolean paramBoolean, String paramString1, String paramString2)
  {
    if (paramBoolean)
      return paramString1;
    return paramString2;
  }

  public static String toStringOnOff(Boolean paramBoolean)
  {
    return toString(paramBoolean, "on", "off", null);
  }

  public static String toStringOnOff(boolean paramBoolean)
  {
    return toString(paramBoolean, "on", "off");
  }

  public static String toStringTrueFalse(Boolean paramBoolean)
  {
    return toString(paramBoolean, "true", "false", null);
  }

  public static String toStringTrueFalse(boolean paramBoolean)
  {
    return toString(paramBoolean, "true", "false");
  }

  public static String toStringYesNo(Boolean paramBoolean)
  {
    return toString(paramBoolean, "yes", "no", null);
  }

  public static String toStringYesNo(boolean paramBoolean)
  {
    return toString(paramBoolean, "yes", "no");
  }

  public static Boolean xor(Boolean[] paramArrayOfBoolean)
  {
    if (paramArrayOfBoolean == null)
      throw new IllegalArgumentException("The Array must not be null");
    if (paramArrayOfBoolean.length == 0)
      throw new IllegalArgumentException("Array is empty");
    try
    {
      if (xor(ArrayUtils.toPrimitive(paramArrayOfBoolean)))
        return Boolean.TRUE;
      Boolean localBoolean = Boolean.FALSE;
      return localBoolean;
    }
    catch (NullPointerException localNullPointerException)
    {
    }
    throw new IllegalArgumentException("The array must not contain any null elements");
  }

  public static boolean xor(boolean[] paramArrayOfBoolean)
  {
    if (paramArrayOfBoolean == null)
      throw new IllegalArgumentException("The Array must not be null");
    if (paramArrayOfBoolean.length == 0)
      throw new IllegalArgumentException("Array is empty");
    int i = paramArrayOfBoolean.length;
    int j = 0;
    int k = 0;
    while (j < i)
    {
      if (paramArrayOfBoolean[j] != 0)
      {
        if (k <= 0)
          k++;
      }
      else
      {
        j++;
        continue;
      }
      return false;
    }
    return k == 1;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.BooleanUtils
 * JD-Core Version:    0.6.2
 */