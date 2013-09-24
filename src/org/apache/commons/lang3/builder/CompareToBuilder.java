package org.apache.commons.lang3.builder;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Collection;
import java.util.Comparator;
import org.apache.commons.lang3.ArrayUtils;

public class CompareToBuilder
  implements Builder
{
  private int comparison = 0;

  private static void reflectionAppend(Object paramObject1, Object paramObject2, Class paramClass, CompareToBuilder paramCompareToBuilder, boolean paramBoolean, String[] paramArrayOfString)
  {
    Field[] arrayOfField = paramClass.getDeclaredFields();
    AccessibleObject.setAccessible(arrayOfField, true);
    int i = 0;
    while ((i < arrayOfField.length) && (paramCompareToBuilder.comparison == 0))
    {
      Field localField = arrayOfField[i];
      if ((!ArrayUtils.contains(paramArrayOfString, localField.getName())) && (localField.getName().indexOf('$') == -1) && ((paramBoolean) || (!Modifier.isTransient(localField.getModifiers()))) && (!Modifier.isStatic(localField.getModifiers())));
      try
      {
        paramCompareToBuilder.append(localField.get(paramObject1), localField.get(paramObject2));
        i++;
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        throw new InternalError("Unexpected IllegalAccessException");
      }
    }
  }

  public static int reflectionCompare(Object paramObject1, Object paramObject2)
  {
    return reflectionCompare(paramObject1, paramObject2, false, null, new String[0]);
  }

  public static int reflectionCompare(Object paramObject1, Object paramObject2, Collection paramCollection)
  {
    return reflectionCompare(paramObject1, paramObject2, ReflectionToStringBuilder.toNoNullStringArray(paramCollection));
  }

  public static int reflectionCompare(Object paramObject1, Object paramObject2, boolean paramBoolean)
  {
    return reflectionCompare(paramObject1, paramObject2, paramBoolean, null, new String[0]);
  }

  public static int reflectionCompare(Object paramObject1, Object paramObject2, boolean paramBoolean, Class paramClass, String[] paramArrayOfString)
  {
    if (paramObject1 == paramObject2)
      return 0;
    if ((paramObject1 == null) || (paramObject2 == null))
      throw new NullPointerException();
    Class localClass = paramObject1.getClass();
    if (!localClass.isInstance(paramObject2))
      throw new ClassCastException();
    CompareToBuilder localCompareToBuilder = new CompareToBuilder();
    reflectionAppend(paramObject1, paramObject2, localClass, localCompareToBuilder, paramBoolean, paramArrayOfString);
    while ((localClass.getSuperclass() != null) && (localClass != paramClass))
    {
      localClass = localClass.getSuperclass();
      reflectionAppend(paramObject1, paramObject2, localClass, localCompareToBuilder, paramBoolean, paramArrayOfString);
    }
    return localCompareToBuilder.toComparison();
  }

  public static int reflectionCompare(Object paramObject1, Object paramObject2, String[] paramArrayOfString)
  {
    return reflectionCompare(paramObject1, paramObject2, false, null, paramArrayOfString);
  }

  public CompareToBuilder append(byte paramByte1, byte paramByte2)
  {
    if (this.comparison != 0)
      return this;
    int i;
    if (paramByte1 < paramByte2)
      i = -1;
    while (true)
    {
      this.comparison = i;
      return this;
      if (paramByte1 > paramByte2)
        i = 1;
      else
        i = 0;
    }
  }

  public CompareToBuilder append(char paramChar1, char paramChar2)
  {
    if (this.comparison != 0)
      return this;
    int i;
    if (paramChar1 < paramChar2)
      i = -1;
    while (true)
    {
      this.comparison = i;
      return this;
      if (paramChar1 > paramChar2)
        i = 1;
      else
        i = 0;
    }
  }

  public CompareToBuilder append(double paramDouble1, double paramDouble2)
  {
    if (this.comparison != 0)
      return this;
    this.comparison = Double.compare(paramDouble1, paramDouble2);
    return this;
  }

  public CompareToBuilder append(float paramFloat1, float paramFloat2)
  {
    if (this.comparison != 0)
      return this;
    this.comparison = Float.compare(paramFloat1, paramFloat2);
    return this;
  }

  public CompareToBuilder append(int paramInt1, int paramInt2)
  {
    if (this.comparison != 0)
      return this;
    int i;
    if (paramInt1 < paramInt2)
      i = -1;
    while (true)
    {
      this.comparison = i;
      return this;
      if (paramInt1 > paramInt2)
        i = 1;
      else
        i = 0;
    }
  }

  public CompareToBuilder append(long paramLong1, long paramLong2)
  {
    if (this.comparison != 0)
      return this;
    int i;
    if (paramLong1 < paramLong2)
      i = -1;
    while (true)
    {
      this.comparison = i;
      return this;
      if (paramLong1 > paramLong2)
        i = 1;
      else
        i = 0;
    }
  }

  public CompareToBuilder append(Object paramObject1, Object paramObject2)
  {
    return append(paramObject1, paramObject2, null);
  }

  public CompareToBuilder append(Object paramObject1, Object paramObject2, Comparator paramComparator)
  {
    if (this.comparison != 0);
    while (paramObject1 == paramObject2)
      return this;
    if (paramObject1 == null)
    {
      this.comparison = -1;
      return this;
    }
    if (paramObject2 == null)
    {
      this.comparison = 1;
      return this;
    }
    if (paramObject1.getClass().isArray())
    {
      if ((paramObject1 instanceof long[]))
      {
        append((long[])paramObject1, (long[])paramObject2);
        return this;
      }
      if ((paramObject1 instanceof int[]))
      {
        append((int[])paramObject1, (int[])paramObject2);
        return this;
      }
      if ((paramObject1 instanceof short[]))
      {
        append((short[])paramObject1, (short[])paramObject2);
        return this;
      }
      if ((paramObject1 instanceof char[]))
      {
        append((char[])paramObject1, (char[])paramObject2);
        return this;
      }
      if ((paramObject1 instanceof byte[]))
      {
        append((byte[])paramObject1, (byte[])paramObject2);
        return this;
      }
      if ((paramObject1 instanceof double[]))
      {
        append((double[])paramObject1, (double[])paramObject2);
        return this;
      }
      if ((paramObject1 instanceof float[]))
      {
        append((float[])paramObject1, (float[])paramObject2);
        return this;
      }
      if ((paramObject1 instanceof boolean[]))
      {
        append((boolean[])paramObject1, (boolean[])paramObject2);
        return this;
      }
      append((Object[])paramObject1, (Object[])paramObject2, paramComparator);
      return this;
    }
    if (paramComparator == null)
    {
      this.comparison = ((Comparable)paramObject1).compareTo(paramObject2);
      return this;
    }
    this.comparison = paramComparator.compare(paramObject1, paramObject2);
    return this;
  }

  public CompareToBuilder append(short paramShort1, short paramShort2)
  {
    if (this.comparison != 0)
      return this;
    int i;
    if (paramShort1 < paramShort2)
      i = -1;
    while (true)
    {
      this.comparison = i;
      return this;
      if (paramShort1 > paramShort2)
        i = 1;
      else
        i = 0;
    }
  }

  public CompareToBuilder append(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (this.comparison != 0);
    while (paramBoolean1 == paramBoolean2)
      return this;
    if (!paramBoolean1)
    {
      this.comparison = -1;
      return this;
    }
    this.comparison = 1;
    return this;
  }

  public CompareToBuilder append(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int i = -1;
    if (this.comparison != 0);
    while (true)
    {
      return this;
      if (paramArrayOfByte1 != paramArrayOfByte2)
      {
        if (paramArrayOfByte1 == null)
        {
          this.comparison = i;
          return this;
        }
        if (paramArrayOfByte2 == null)
        {
          this.comparison = 1;
          return this;
        }
        if (paramArrayOfByte1.length != paramArrayOfByte2.length)
        {
          if (paramArrayOfByte1.length < paramArrayOfByte2.length);
          while (true)
          {
            this.comparison = i;
            return this;
            i = 1;
          }
        }
        for (int j = 0; (j < paramArrayOfByte1.length) && (this.comparison == 0); j++)
          append(paramArrayOfByte1[j], paramArrayOfByte2[j]);
      }
    }
  }

  public CompareToBuilder append(char[] paramArrayOfChar1, char[] paramArrayOfChar2)
  {
    int i = -1;
    if (this.comparison != 0);
    while (true)
    {
      return this;
      if (paramArrayOfChar1 != paramArrayOfChar2)
      {
        if (paramArrayOfChar1 == null)
        {
          this.comparison = i;
          return this;
        }
        if (paramArrayOfChar2 == null)
        {
          this.comparison = 1;
          return this;
        }
        if (paramArrayOfChar1.length != paramArrayOfChar2.length)
        {
          if (paramArrayOfChar1.length < paramArrayOfChar2.length);
          while (true)
          {
            this.comparison = i;
            return this;
            i = 1;
          }
        }
        for (int j = 0; (j < paramArrayOfChar1.length) && (this.comparison == 0); j++)
          append(paramArrayOfChar1[j], paramArrayOfChar2[j]);
      }
    }
  }

  public CompareToBuilder append(double[] paramArrayOfDouble1, double[] paramArrayOfDouble2)
  {
    int i = -1;
    if (this.comparison != 0);
    while (true)
    {
      return this;
      if (paramArrayOfDouble1 != paramArrayOfDouble2)
      {
        if (paramArrayOfDouble1 == null)
        {
          this.comparison = i;
          return this;
        }
        if (paramArrayOfDouble2 == null)
        {
          this.comparison = 1;
          return this;
        }
        if (paramArrayOfDouble1.length != paramArrayOfDouble2.length)
        {
          if (paramArrayOfDouble1.length < paramArrayOfDouble2.length);
          while (true)
          {
            this.comparison = i;
            return this;
            i = 1;
          }
        }
        for (int j = 0; (j < paramArrayOfDouble1.length) && (this.comparison == 0); j++)
          append(paramArrayOfDouble1[j], paramArrayOfDouble2[j]);
      }
    }
  }

  public CompareToBuilder append(float[] paramArrayOfFloat1, float[] paramArrayOfFloat2)
  {
    int i = -1;
    if (this.comparison != 0);
    while (true)
    {
      return this;
      if (paramArrayOfFloat1 != paramArrayOfFloat2)
      {
        if (paramArrayOfFloat1 == null)
        {
          this.comparison = i;
          return this;
        }
        if (paramArrayOfFloat2 == null)
        {
          this.comparison = 1;
          return this;
        }
        if (paramArrayOfFloat1.length != paramArrayOfFloat2.length)
        {
          if (paramArrayOfFloat1.length < paramArrayOfFloat2.length);
          while (true)
          {
            this.comparison = i;
            return this;
            i = 1;
          }
        }
        for (int j = 0; (j < paramArrayOfFloat1.length) && (this.comparison == 0); j++)
          append(paramArrayOfFloat1[j], paramArrayOfFloat2[j]);
      }
    }
  }

  public CompareToBuilder append(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int i = -1;
    if (this.comparison != 0);
    while (true)
    {
      return this;
      if (paramArrayOfInt1 != paramArrayOfInt2)
      {
        if (paramArrayOfInt1 == null)
        {
          this.comparison = i;
          return this;
        }
        if (paramArrayOfInt2 == null)
        {
          this.comparison = 1;
          return this;
        }
        if (paramArrayOfInt1.length != paramArrayOfInt2.length)
        {
          if (paramArrayOfInt1.length < paramArrayOfInt2.length);
          while (true)
          {
            this.comparison = i;
            return this;
            i = 1;
          }
        }
        for (int j = 0; (j < paramArrayOfInt1.length) && (this.comparison == 0); j++)
          append(paramArrayOfInt1[j], paramArrayOfInt2[j]);
      }
    }
  }

  public CompareToBuilder append(long[] paramArrayOfLong1, long[] paramArrayOfLong2)
  {
    int i = -1;
    if (this.comparison != 0);
    while (true)
    {
      return this;
      if (paramArrayOfLong1 != paramArrayOfLong2)
      {
        if (paramArrayOfLong1 == null)
        {
          this.comparison = i;
          return this;
        }
        if (paramArrayOfLong2 == null)
        {
          this.comparison = 1;
          return this;
        }
        if (paramArrayOfLong1.length != paramArrayOfLong2.length)
        {
          if (paramArrayOfLong1.length < paramArrayOfLong2.length);
          while (true)
          {
            this.comparison = i;
            return this;
            i = 1;
          }
        }
        for (int j = 0; (j < paramArrayOfLong1.length) && (this.comparison == 0); j++)
          append(paramArrayOfLong1[j], paramArrayOfLong2[j]);
      }
    }
  }

  public CompareToBuilder append(Object[] paramArrayOfObject1, Object[] paramArrayOfObject2)
  {
    return append(paramArrayOfObject1, paramArrayOfObject2, null);
  }

  public CompareToBuilder append(Object[] paramArrayOfObject1, Object[] paramArrayOfObject2, Comparator paramComparator)
  {
    int i = -1;
    if (this.comparison != 0);
    while (true)
    {
      return this;
      if (paramArrayOfObject1 != paramArrayOfObject2)
      {
        if (paramArrayOfObject1 == null)
        {
          this.comparison = i;
          return this;
        }
        if (paramArrayOfObject2 == null)
        {
          this.comparison = 1;
          return this;
        }
        if (paramArrayOfObject1.length != paramArrayOfObject2.length)
        {
          if (paramArrayOfObject1.length < paramArrayOfObject2.length);
          while (true)
          {
            this.comparison = i;
            return this;
            i = 1;
          }
        }
        for (int j = 0; (j < paramArrayOfObject1.length) && (this.comparison == 0); j++)
          append(paramArrayOfObject1[j], paramArrayOfObject2[j], paramComparator);
      }
    }
  }

  public CompareToBuilder append(short[] paramArrayOfShort1, short[] paramArrayOfShort2)
  {
    int i = -1;
    if (this.comparison != 0);
    while (true)
    {
      return this;
      if (paramArrayOfShort1 != paramArrayOfShort2)
      {
        if (paramArrayOfShort1 == null)
        {
          this.comparison = i;
          return this;
        }
        if (paramArrayOfShort2 == null)
        {
          this.comparison = 1;
          return this;
        }
        if (paramArrayOfShort1.length != paramArrayOfShort2.length)
        {
          if (paramArrayOfShort1.length < paramArrayOfShort2.length);
          while (true)
          {
            this.comparison = i;
            return this;
            i = 1;
          }
        }
        for (int j = 0; (j < paramArrayOfShort1.length) && (this.comparison == 0); j++)
          append(paramArrayOfShort1[j], paramArrayOfShort2[j]);
      }
    }
  }

  public CompareToBuilder append(boolean[] paramArrayOfBoolean1, boolean[] paramArrayOfBoolean2)
  {
    int i = -1;
    if (this.comparison != 0);
    while (true)
    {
      return this;
      if (paramArrayOfBoolean1 != paramArrayOfBoolean2)
      {
        if (paramArrayOfBoolean1 == null)
        {
          this.comparison = i;
          return this;
        }
        if (paramArrayOfBoolean2 == null)
        {
          this.comparison = 1;
          return this;
        }
        if (paramArrayOfBoolean1.length != paramArrayOfBoolean2.length)
        {
          if (paramArrayOfBoolean1.length < paramArrayOfBoolean2.length);
          while (true)
          {
            this.comparison = i;
            return this;
            i = 1;
          }
        }
        for (int j = 0; (j < paramArrayOfBoolean1.length) && (this.comparison == 0); j++)
          append(paramArrayOfBoolean1[j], paramArrayOfBoolean2[j]);
      }
    }
  }

  public CompareToBuilder appendSuper(int paramInt)
  {
    if (this.comparison != 0)
      return this;
    this.comparison = paramInt;
    return this;
  }

  public Integer build()
  {
    return Integer.valueOf(toComparison());
  }

  public int toComparison()
  {
    return this.comparison;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.builder.CompareToBuilder
 * JD-Core Version:    0.6.2
 */