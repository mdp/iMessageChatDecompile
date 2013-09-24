package org.apache.commons.lang3.builder;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.tuple.Pair;

public class EqualsBuilder
  implements Builder
{
  private static final ThreadLocal REGISTRY = new ThreadLocal();
  private boolean isEquals = true;

  static Pair getRegisterPair(Object paramObject1, Object paramObject2)
  {
    return Pair.of(new IDKey(paramObject1), new IDKey(paramObject2));
  }

  static Set getRegistry()
  {
    return (Set)REGISTRY.get();
  }

  static boolean isRegistered(Object paramObject1, Object paramObject2)
  {
    Set localSet = getRegistry();
    Pair localPair1 = getRegisterPair(paramObject1, paramObject2);
    Pair localPair2 = Pair.of(localPair1.getLeft(), localPair1.getRight());
    return (localSet != null) && ((localSet.contains(localPair1)) || (localSet.contains(localPair2)));
  }

  private static void reflectionAppend(Object paramObject1, Object paramObject2, Class paramClass, EqualsBuilder paramEqualsBuilder, boolean paramBoolean, String[] paramArrayOfString)
  {
    if (isRegistered(paramObject1, paramObject2))
      return;
    try
    {
      register(paramObject1, paramObject2);
      Field[] arrayOfField = paramClass.getDeclaredFields();
      AccessibleObject.setAccessible(arrayOfField, true);
      int i = 0;
      while (true)
        if ((i < arrayOfField.length) && (paramEqualsBuilder.isEquals))
        {
          Field localField = arrayOfField[i];
          if ((!ArrayUtils.contains(paramArrayOfString, localField.getName())) && (localField.getName().indexOf('$') == -1) && ((paramBoolean) || (!Modifier.isTransient(localField.getModifiers()))))
          {
            boolean bool = Modifier.isStatic(localField.getModifiers());
            if (bool);
          }
          try
          {
            paramEqualsBuilder.append(localField.get(paramObject1), localField.get(paramObject2));
            i++;
          }
          catch (IllegalAccessException localIllegalAccessException)
          {
            throw new InternalError("Unexpected IllegalAccessException");
          }
        }
    }
    finally
    {
      unregister(paramObject1, paramObject2);
    }
    unregister(paramObject1, paramObject2);
  }

  public static boolean reflectionEquals(Object paramObject1, Object paramObject2, Collection paramCollection)
  {
    return reflectionEquals(paramObject1, paramObject2, ReflectionToStringBuilder.toNoNullStringArray(paramCollection));
  }

  public static boolean reflectionEquals(Object paramObject1, Object paramObject2, boolean paramBoolean)
  {
    return reflectionEquals(paramObject1, paramObject2, paramBoolean, null, new String[0]);
  }

  public static boolean reflectionEquals(Object paramObject1, Object paramObject2, boolean paramBoolean, Class paramClass, String[] paramArrayOfString)
  {
    if (paramObject1 == paramObject2)
      return true;
    if ((paramObject1 == null) || (paramObject2 == null))
      return false;
    Class localClass1 = paramObject1.getClass();
    Class localClass2 = paramObject2.getClass();
    if (localClass1.isInstance(paramObject2))
      if (localClass2.isInstance(paramObject1))
        break label141;
    while (true)
    {
      EqualsBuilder localEqualsBuilder = new EqualsBuilder();
      try
      {
        reflectionAppend(paramObject1, paramObject2, localClass2, localEqualsBuilder, paramBoolean, paramArrayOfString);
        while ((localClass2.getSuperclass() != null) && (localClass2 != paramClass))
        {
          localClass2 = localClass2.getSuperclass();
          reflectionAppend(paramObject1, paramObject2, localClass2, localEqualsBuilder, paramBoolean, paramArrayOfString);
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        return false;
      }
      if (localClass2.isInstance(paramObject1))
      {
        if (!localClass1.isInstance(paramObject2))
          localClass2 = localClass1;
      }
      else
      {
        return false;
        return localEqualsBuilder.isEquals();
        label141: localClass2 = localClass1;
      }
    }
  }

  public static boolean reflectionEquals(Object paramObject1, Object paramObject2, String[] paramArrayOfString)
  {
    return reflectionEquals(paramObject1, paramObject2, false, null, paramArrayOfString);
  }

  static void register(Object paramObject1, Object paramObject2)
  {
    try
    {
      if (getRegistry() == null)
        REGISTRY.set(new HashSet());
      getRegistry().add(getRegisterPair(paramObject1, paramObject2));
      return;
    }
    finally
    {
    }
  }

  static void unregister(Object paramObject1, Object paramObject2)
  {
    Set localSet1 = getRegistry();
    if (localSet1 != null)
      localSet1.remove(getRegisterPair(paramObject1, paramObject2));
    try
    {
      Set localSet2 = getRegistry();
      if ((localSet2 != null) && (localSet2.isEmpty()))
        REGISTRY.remove();
      return;
    }
    finally
    {
    }
  }

  public EqualsBuilder append(byte paramByte1, byte paramByte2)
  {
    if (!this.isEquals)
      return this;
    if (paramByte1 == paramByte2);
    for (boolean bool = true; ; bool = false)
    {
      this.isEquals = bool;
      return this;
    }
  }

  public EqualsBuilder append(char paramChar1, char paramChar2)
  {
    if (!this.isEquals)
      return this;
    if (paramChar1 == paramChar2);
    for (boolean bool = true; ; bool = false)
    {
      this.isEquals = bool;
      return this;
    }
  }

  public EqualsBuilder append(double paramDouble1, double paramDouble2)
  {
    if (!this.isEquals)
      return this;
    return append(Double.doubleToLongBits(paramDouble1), Double.doubleToLongBits(paramDouble2));
  }

  public EqualsBuilder append(float paramFloat1, float paramFloat2)
  {
    if (!this.isEquals)
      return this;
    return append(Float.floatToIntBits(paramFloat1), Float.floatToIntBits(paramFloat2));
  }

  public EqualsBuilder append(int paramInt1, int paramInt2)
  {
    if (!this.isEquals)
      return this;
    if (paramInt1 == paramInt2);
    for (boolean bool = true; ; bool = false)
    {
      this.isEquals = bool;
      return this;
    }
  }

  public EqualsBuilder append(long paramLong1, long paramLong2)
  {
    if (!this.isEquals)
      return this;
    if (paramLong1 == paramLong2);
    for (boolean bool = true; ; bool = false)
    {
      this.isEquals = bool;
      return this;
    }
  }

  public EqualsBuilder append(Object paramObject1, Object paramObject2)
  {
    if (!this.isEquals);
    while (paramObject1 == paramObject2)
      return this;
    if ((paramObject1 == null) || (paramObject2 == null))
    {
      setEquals(false);
      return this;
    }
    if (!paramObject1.getClass().isArray())
    {
      this.isEquals = paramObject1.equals(paramObject2);
      return this;
    }
    if (paramObject1.getClass() != paramObject2.getClass())
    {
      setEquals(false);
      return this;
    }
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
    append((Object[])paramObject1, (Object[])paramObject2);
    return this;
  }

  public EqualsBuilder append(short paramShort1, short paramShort2)
  {
    if (!this.isEquals)
      return this;
    if (paramShort1 == paramShort2);
    for (boolean bool = true; ; bool = false)
    {
      this.isEquals = bool;
      return this;
    }
  }

  public EqualsBuilder append(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (!this.isEquals)
      return this;
    if (paramBoolean1 == paramBoolean2);
    for (boolean bool = true; ; bool = false)
    {
      this.isEquals = bool;
      return this;
    }
  }

  public EqualsBuilder append(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if (!this.isEquals);
    while (true)
    {
      return this;
      if (paramArrayOfByte1 != paramArrayOfByte2)
      {
        if ((paramArrayOfByte1 == null) || (paramArrayOfByte2 == null))
        {
          setEquals(false);
          return this;
        }
        int i = paramArrayOfByte1.length;
        int j = paramArrayOfByte2.length;
        int k = 0;
        if (i != j)
        {
          setEquals(false);
          return this;
        }
        while ((k < paramArrayOfByte1.length) && (this.isEquals))
        {
          append(paramArrayOfByte1[k], paramArrayOfByte2[k]);
          k++;
        }
      }
    }
  }

  public EqualsBuilder append(char[] paramArrayOfChar1, char[] paramArrayOfChar2)
  {
    if (!this.isEquals);
    while (true)
    {
      return this;
      if (paramArrayOfChar1 != paramArrayOfChar2)
      {
        if ((paramArrayOfChar1 == null) || (paramArrayOfChar2 == null))
        {
          setEquals(false);
          return this;
        }
        int i = paramArrayOfChar1.length;
        int j = paramArrayOfChar2.length;
        int k = 0;
        if (i != j)
        {
          setEquals(false);
          return this;
        }
        while ((k < paramArrayOfChar1.length) && (this.isEquals))
        {
          append(paramArrayOfChar1[k], paramArrayOfChar2[k]);
          k++;
        }
      }
    }
  }

  public EqualsBuilder append(double[] paramArrayOfDouble1, double[] paramArrayOfDouble2)
  {
    if (!this.isEquals);
    while (true)
    {
      return this;
      if (paramArrayOfDouble1 != paramArrayOfDouble2)
      {
        if ((paramArrayOfDouble1 == null) || (paramArrayOfDouble2 == null))
        {
          setEquals(false);
          return this;
        }
        int i = paramArrayOfDouble1.length;
        int j = paramArrayOfDouble2.length;
        int k = 0;
        if (i != j)
        {
          setEquals(false);
          return this;
        }
        while ((k < paramArrayOfDouble1.length) && (this.isEquals))
        {
          append(paramArrayOfDouble1[k], paramArrayOfDouble2[k]);
          k++;
        }
      }
    }
  }

  public EqualsBuilder append(float[] paramArrayOfFloat1, float[] paramArrayOfFloat2)
  {
    if (!this.isEquals);
    while (true)
    {
      return this;
      if (paramArrayOfFloat1 != paramArrayOfFloat2)
      {
        if ((paramArrayOfFloat1 == null) || (paramArrayOfFloat2 == null))
        {
          setEquals(false);
          return this;
        }
        int i = paramArrayOfFloat1.length;
        int j = paramArrayOfFloat2.length;
        int k = 0;
        if (i != j)
        {
          setEquals(false);
          return this;
        }
        while ((k < paramArrayOfFloat1.length) && (this.isEquals))
        {
          append(paramArrayOfFloat1[k], paramArrayOfFloat2[k]);
          k++;
        }
      }
    }
  }

  public EqualsBuilder append(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    if (!this.isEquals);
    while (true)
    {
      return this;
      if (paramArrayOfInt1 != paramArrayOfInt2)
      {
        if ((paramArrayOfInt1 == null) || (paramArrayOfInt2 == null))
        {
          setEquals(false);
          return this;
        }
        int i = paramArrayOfInt1.length;
        int j = paramArrayOfInt2.length;
        int k = 0;
        if (i != j)
        {
          setEquals(false);
          return this;
        }
        while ((k < paramArrayOfInt1.length) && (this.isEquals))
        {
          append(paramArrayOfInt1[k], paramArrayOfInt2[k]);
          k++;
        }
      }
    }
  }

  public EqualsBuilder append(long[] paramArrayOfLong1, long[] paramArrayOfLong2)
  {
    if (!this.isEquals);
    while (true)
    {
      return this;
      if (paramArrayOfLong1 != paramArrayOfLong2)
      {
        if ((paramArrayOfLong1 == null) || (paramArrayOfLong2 == null))
        {
          setEquals(false);
          return this;
        }
        int i = paramArrayOfLong1.length;
        int j = paramArrayOfLong2.length;
        int k = 0;
        if (i != j)
        {
          setEquals(false);
          return this;
        }
        while ((k < paramArrayOfLong1.length) && (this.isEquals))
        {
          append(paramArrayOfLong1[k], paramArrayOfLong2[k]);
          k++;
        }
      }
    }
  }

  public EqualsBuilder append(Object[] paramArrayOfObject1, Object[] paramArrayOfObject2)
  {
    if (!this.isEquals);
    while (true)
    {
      return this;
      if (paramArrayOfObject1 != paramArrayOfObject2)
      {
        if ((paramArrayOfObject1 == null) || (paramArrayOfObject2 == null))
        {
          setEquals(false);
          return this;
        }
        int i = paramArrayOfObject1.length;
        int j = paramArrayOfObject2.length;
        int k = 0;
        if (i != j)
        {
          setEquals(false);
          return this;
        }
        while ((k < paramArrayOfObject1.length) && (this.isEquals))
        {
          append(paramArrayOfObject1[k], paramArrayOfObject2[k]);
          k++;
        }
      }
    }
  }

  public EqualsBuilder append(short[] paramArrayOfShort1, short[] paramArrayOfShort2)
  {
    if (!this.isEquals);
    while (true)
    {
      return this;
      if (paramArrayOfShort1 != paramArrayOfShort2)
      {
        if ((paramArrayOfShort1 == null) || (paramArrayOfShort2 == null))
        {
          setEquals(false);
          return this;
        }
        int i = paramArrayOfShort1.length;
        int j = paramArrayOfShort2.length;
        int k = 0;
        if (i != j)
        {
          setEquals(false);
          return this;
        }
        while ((k < paramArrayOfShort1.length) && (this.isEquals))
        {
          append(paramArrayOfShort1[k], paramArrayOfShort2[k]);
          k++;
        }
      }
    }
  }

  public EqualsBuilder append(boolean[] paramArrayOfBoolean1, boolean[] paramArrayOfBoolean2)
  {
    if (!this.isEquals);
    while (true)
    {
      return this;
      if (paramArrayOfBoolean1 != paramArrayOfBoolean2)
      {
        if ((paramArrayOfBoolean1 == null) || (paramArrayOfBoolean2 == null))
        {
          setEquals(false);
          return this;
        }
        int i = paramArrayOfBoolean1.length;
        int j = paramArrayOfBoolean2.length;
        int k = 0;
        if (i != j)
        {
          setEquals(false);
          return this;
        }
        while ((k < paramArrayOfBoolean1.length) && (this.isEquals))
        {
          append(paramArrayOfBoolean1[k], paramArrayOfBoolean2[k]);
          k++;
        }
      }
    }
  }

  public EqualsBuilder appendSuper(boolean paramBoolean)
  {
    if (!this.isEquals)
      return this;
    this.isEquals = paramBoolean;
    return this;
  }

  public Boolean build()
  {
    return Boolean.valueOf(isEquals());
  }

  public boolean isEquals()
  {
    return this.isEquals;
  }

  public void reset()
  {
    this.isEquals = true;
  }

  protected void setEquals(boolean paramBoolean)
  {
    this.isEquals = paramBoolean;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.builder.EqualsBuilder
 * JD-Core Version:    0.6.2
 */