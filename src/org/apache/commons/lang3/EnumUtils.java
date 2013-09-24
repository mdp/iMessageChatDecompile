package org.apache.commons.lang3;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class EnumUtils
{
  private static Class checkBitVectorable(Class paramClass)
  {
    Validate.notNull(paramClass, "EnumClass must be defined.", new Object[0]);
    Enum[] arrayOfEnum = (Enum[])paramClass.getEnumConstants();
    boolean bool1;
    if (arrayOfEnum != null)
    {
      bool1 = true;
      Validate.isTrue(bool1, "%s does not seem to be an Enum type", new Object[] { paramClass });
      if (arrayOfEnum.length > 64)
        break label97;
    }
    label97: for (boolean bool2 = true; ; bool2 = false)
    {
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Integer.valueOf(arrayOfEnum.length);
      arrayOfObject[1] = paramClass.getSimpleName();
      arrayOfObject[2] = Integer.valueOf(64);
      Validate.isTrue(bool2, "Cannot store %s %s values in %s bits", arrayOfObject);
      return paramClass;
      bool1 = false;
      break;
    }
  }

  public static long generateBitVector(Class paramClass, Iterable paramIterable)
  {
    checkBitVectorable(paramClass);
    Validate.notNull(paramIterable);
    Iterator localIterator = paramIterable.iterator();
    for (long l = 0L; localIterator.hasNext(); l |= 1 << ((Enum)localIterator.next()).ordinal());
    return l;
  }

  public static long generateBitVector(Class paramClass, Enum[] paramArrayOfEnum)
  {
    Validate.noNullElements(paramArrayOfEnum);
    return generateBitVector(paramClass, Arrays.asList(paramArrayOfEnum));
  }

  public static Enum getEnum(Class paramClass, String paramString)
  {
    if (paramString == null)
      return null;
    try
    {
      Enum localEnum = Enum.valueOf(paramClass, paramString);
      return localEnum;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
    }
    return null;
  }

  public static List getEnumList(Class paramClass)
  {
    return new ArrayList(Arrays.asList(paramClass.getEnumConstants()));
  }

  public static Map getEnumMap(Class paramClass)
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    for (Enum localEnum : (Enum[])paramClass.getEnumConstants())
      localLinkedHashMap.put(localEnum.name(), localEnum);
    return localLinkedHashMap;
  }

  public static boolean isValidEnum(Class paramClass, String paramString)
  {
    if (paramString == null)
      return false;
    try
    {
      Enum.valueOf(paramClass, paramString);
      return true;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
    }
    return false;
  }

  public static EnumSet processBitVector(Class paramClass, long paramLong)
  {
    Enum[] arrayOfEnum = (Enum[])checkBitVectorable(paramClass).getEnumConstants();
    EnumSet localEnumSet = EnumSet.noneOf(paramClass);
    int i = arrayOfEnum.length;
    for (int j = 0; j < i; j++)
    {
      Enum localEnum = arrayOfEnum[j];
      if ((paramLong & 1 << localEnum.ordinal()) != 0L)
        localEnumSet.add(localEnum);
    }
    return localEnumSet;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.EnumUtils
 * JD-Core Version:    0.6.2
 */