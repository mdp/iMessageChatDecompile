package org.apache.commons.lang3.builder;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import org.apache.commons.lang3.ArrayUtils;

public class HashCodeBuilder
  implements Builder
{
  private static final ThreadLocal REGISTRY = new ThreadLocal();
  private final int iConstant;
  private int iTotal = 0;

  public HashCodeBuilder()
  {
    this.iConstant = 37;
    this.iTotal = 17;
  }

  public HashCodeBuilder(int paramInt1, int paramInt2)
  {
    if (paramInt1 == 0)
      throw new IllegalArgumentException("HashCodeBuilder requires a non zero initial value");
    if (paramInt1 % 2 == 0)
      throw new IllegalArgumentException("HashCodeBuilder requires an odd initial value");
    if (paramInt2 == 0)
      throw new IllegalArgumentException("HashCodeBuilder requires a non zero multiplier");
    if (paramInt2 % 2 == 0)
      throw new IllegalArgumentException("HashCodeBuilder requires an odd multiplier");
    this.iConstant = paramInt2;
    this.iTotal = paramInt1;
  }

  static Set getRegistry()
  {
    return (Set)REGISTRY.get();
  }

  static boolean isRegistered(Object paramObject)
  {
    Set localSet = getRegistry();
    return (localSet != null) && (localSet.contains(new IDKey(paramObject)));
  }

  private static void reflectionAppend(Object paramObject, Class paramClass, HashCodeBuilder paramHashCodeBuilder, boolean paramBoolean, String[] paramArrayOfString)
  {
    if (isRegistered(paramObject))
      return;
    try
    {
      register(paramObject);
      Field[] arrayOfField = paramClass.getDeclaredFields();
      AccessibleObject.setAccessible(arrayOfField, true);
      int i = arrayOfField.length;
      int j = 0;
      while (true)
        if (j < i)
        {
          Field localField = arrayOfField[j];
          if ((!ArrayUtils.contains(paramArrayOfString, localField.getName())) && (localField.getName().indexOf('$') == -1) && ((paramBoolean) || (!Modifier.isTransient(localField.getModifiers()))))
          {
            boolean bool = Modifier.isStatic(localField.getModifiers());
            if (bool);
          }
          try
          {
            paramHashCodeBuilder.append(localField.get(paramObject));
            j++;
          }
          catch (IllegalAccessException localIllegalAccessException)
          {
            throw new InternalError("Unexpected IllegalAccessException");
          }
        }
    }
    finally
    {
      unregister(paramObject);
    }
    unregister(paramObject);
  }

  public static int reflectionHashCode(int paramInt1, int paramInt2, Object paramObject)
  {
    return reflectionHashCode(paramInt1, paramInt2, paramObject, false, null, new String[0]);
  }

  public static int reflectionHashCode(int paramInt1, int paramInt2, Object paramObject, boolean paramBoolean)
  {
    return reflectionHashCode(paramInt1, paramInt2, paramObject, paramBoolean, null, new String[0]);
  }

  public static int reflectionHashCode(int paramInt1, int paramInt2, Object paramObject, boolean paramBoolean, Class paramClass, String[] paramArrayOfString)
  {
    if (paramObject == null)
      throw new IllegalArgumentException("The object to build a hash code for must not be null");
    HashCodeBuilder localHashCodeBuilder = new HashCodeBuilder(paramInt1, paramInt2);
    Class localClass = paramObject.getClass();
    reflectionAppend(paramObject, localClass, localHashCodeBuilder, paramBoolean, paramArrayOfString);
    while ((localClass.getSuperclass() != null) && (localClass != paramClass))
    {
      localClass = localClass.getSuperclass();
      reflectionAppend(paramObject, localClass, localHashCodeBuilder, paramBoolean, paramArrayOfString);
    }
    return localHashCodeBuilder.toHashCode();
  }

  public static int reflectionHashCode(Object paramObject, Collection paramCollection)
  {
    return reflectionHashCode(paramObject, ReflectionToStringBuilder.toNoNullStringArray(paramCollection));
  }

  public static int reflectionHashCode(Object paramObject, boolean paramBoolean)
  {
    return reflectionHashCode(17, 37, paramObject, paramBoolean, null, new String[0]);
  }

  public static int reflectionHashCode(Object paramObject, String[] paramArrayOfString)
  {
    return reflectionHashCode(17, 37, paramObject, false, null, paramArrayOfString);
  }

  static void register(Object paramObject)
  {
    try
    {
      if (getRegistry() == null)
        REGISTRY.set(new HashSet());
      getRegistry().add(new IDKey(paramObject));
      return;
    }
    finally
    {
    }
  }

  static void unregister(Object paramObject)
  {
    Set localSet1 = getRegistry();
    if (localSet1 != null)
      localSet1.remove(new IDKey(paramObject));
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

  public HashCodeBuilder append(byte paramByte)
  {
    this.iTotal = (paramByte + this.iTotal * this.iConstant);
    return this;
  }

  public HashCodeBuilder append(char paramChar)
  {
    this.iTotal = (paramChar + this.iTotal * this.iConstant);
    return this;
  }

  public HashCodeBuilder append(double paramDouble)
  {
    return append(Double.doubleToLongBits(paramDouble));
  }

  public HashCodeBuilder append(float paramFloat)
  {
    this.iTotal = (this.iTotal * this.iConstant + Float.floatToIntBits(paramFloat));
    return this;
  }

  public HashCodeBuilder append(int paramInt)
  {
    this.iTotal = (paramInt + this.iTotal * this.iConstant);
    return this;
  }

  public HashCodeBuilder append(long paramLong)
  {
    this.iTotal = (this.iTotal * this.iConstant + (int)(paramLong ^ paramLong >> 32));
    return this;
  }

  public HashCodeBuilder append(Object paramObject)
  {
    if (paramObject == null)
    {
      this.iTotal *= this.iConstant;
      return this;
    }
    if (paramObject.getClass().isArray())
    {
      if ((paramObject instanceof long[]))
      {
        append((long[])paramObject);
        return this;
      }
      if ((paramObject instanceof int[]))
      {
        append((int[])paramObject);
        return this;
      }
      if ((paramObject instanceof short[]))
      {
        append((short[])paramObject);
        return this;
      }
      if ((paramObject instanceof char[]))
      {
        append((char[])paramObject);
        return this;
      }
      if ((paramObject instanceof byte[]))
      {
        append((byte[])paramObject);
        return this;
      }
      if ((paramObject instanceof double[]))
      {
        append((double[])paramObject);
        return this;
      }
      if ((paramObject instanceof float[]))
      {
        append((float[])paramObject);
        return this;
      }
      if ((paramObject instanceof boolean[]))
      {
        append((boolean[])paramObject);
        return this;
      }
      append((Object[])paramObject);
      return this;
    }
    this.iTotal = (this.iTotal * this.iConstant + paramObject.hashCode());
    return this;
  }

  public HashCodeBuilder append(short paramShort)
  {
    this.iTotal = (paramShort + this.iTotal * this.iConstant);
    return this;
  }

  public HashCodeBuilder append(boolean paramBoolean)
  {
    int i = this.iTotal * this.iConstant;
    if (paramBoolean);
    for (int j = 0; ; j = 1)
    {
      this.iTotal = (j + i);
      return this;
    }
  }

  public HashCodeBuilder append(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
      this.iTotal *= this.iConstant;
    while (true)
    {
      return this;
      int i = paramArrayOfByte.length;
      for (int j = 0; j < i; j++)
        append(paramArrayOfByte[j]);
    }
  }

  public HashCodeBuilder append(char[] paramArrayOfChar)
  {
    if (paramArrayOfChar == null)
      this.iTotal *= this.iConstant;
    while (true)
    {
      return this;
      int i = paramArrayOfChar.length;
      for (int j = 0; j < i; j++)
        append(paramArrayOfChar[j]);
    }
  }

  public HashCodeBuilder append(double[] paramArrayOfDouble)
  {
    if (paramArrayOfDouble == null)
      this.iTotal *= this.iConstant;
    while (true)
    {
      return this;
      int i = paramArrayOfDouble.length;
      for (int j = 0; j < i; j++)
        append(paramArrayOfDouble[j]);
    }
  }

  public HashCodeBuilder append(float[] paramArrayOfFloat)
  {
    if (paramArrayOfFloat == null)
      this.iTotal *= this.iConstant;
    while (true)
    {
      return this;
      int i = paramArrayOfFloat.length;
      for (int j = 0; j < i; j++)
        append(paramArrayOfFloat[j]);
    }
  }

  public HashCodeBuilder append(int[] paramArrayOfInt)
  {
    if (paramArrayOfInt == null)
      this.iTotal *= this.iConstant;
    while (true)
    {
      return this;
      int i = paramArrayOfInt.length;
      for (int j = 0; j < i; j++)
        append(paramArrayOfInt[j]);
    }
  }

  public HashCodeBuilder append(long[] paramArrayOfLong)
  {
    if (paramArrayOfLong == null)
      this.iTotal *= this.iConstant;
    while (true)
    {
      return this;
      int i = paramArrayOfLong.length;
      for (int j = 0; j < i; j++)
        append(paramArrayOfLong[j]);
    }
  }

  public HashCodeBuilder append(Object[] paramArrayOfObject)
  {
    if (paramArrayOfObject == null)
      this.iTotal *= this.iConstant;
    while (true)
    {
      return this;
      int i = paramArrayOfObject.length;
      for (int j = 0; j < i; j++)
        append(paramArrayOfObject[j]);
    }
  }

  public HashCodeBuilder append(short[] paramArrayOfShort)
  {
    if (paramArrayOfShort == null)
      this.iTotal *= this.iConstant;
    while (true)
    {
      return this;
      int i = paramArrayOfShort.length;
      for (int j = 0; j < i; j++)
        append(paramArrayOfShort[j]);
    }
  }

  public HashCodeBuilder append(boolean[] paramArrayOfBoolean)
  {
    if (paramArrayOfBoolean == null)
      this.iTotal *= this.iConstant;
    while (true)
    {
      return this;
      int i = paramArrayOfBoolean.length;
      for (int j = 0; j < i; j++)
        append(paramArrayOfBoolean[j]);
    }
  }

  public HashCodeBuilder appendSuper(int paramInt)
  {
    this.iTotal = (paramInt + this.iTotal * this.iConstant);
    return this;
  }

  public Integer build()
  {
    return Integer.valueOf(toHashCode());
  }

  public int hashCode()
  {
    return toHashCode();
  }

  public int toHashCode()
  {
    return this.iTotal;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.builder.HashCodeBuilder
 * JD-Core Version:    0.6.2
 */