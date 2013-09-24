package org.apache.commons.lang3.reflect;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Member;
import java.lang.reflect.Modifier;
import org.apache.commons.lang3.ClassUtils;

abstract class MemberUtils
{
  private static final int ACCESS_TEST = 7;
  private static final Class[] ORDERED_PRIMITIVE_TYPES = arrayOfClass;

  static
  {
    Class[] arrayOfClass = new Class[7];
    arrayOfClass[0] = Byte.TYPE;
    arrayOfClass[1] = Short.TYPE;
    arrayOfClass[2] = Character.TYPE;
    arrayOfClass[3] = Integer.TYPE;
    arrayOfClass[4] = Long.TYPE;
    arrayOfClass[5] = Float.TYPE;
    arrayOfClass[6] = Double.TYPE;
  }

  static int compareParameterTypes(Class[] paramArrayOfClass1, Class[] paramArrayOfClass2, Class[] paramArrayOfClass3)
  {
    float f1 = getTotalTransformationCost(paramArrayOfClass3, paramArrayOfClass1);
    float f2 = getTotalTransformationCost(paramArrayOfClass3, paramArrayOfClass2);
    if (f1 < f2)
      return -1;
    if (f2 < f1)
      return 1;
    return 0;
  }

  private static float getObjectTransformationCost(Class paramClass1, Class paramClass2)
  {
    if (paramClass2.isPrimitive())
    {
      f = getPrimitivePromotionCost(paramClass1, paramClass2);
      return f;
    }
    float f = 0.0F;
    while (true)
    {
      if ((paramClass1 != null) && (!paramClass2.equals(paramClass1)))
      {
        if ((paramClass2.isInterface()) && (ClassUtils.isAssignable(paramClass1, paramClass2)))
          f += 0.25F;
      }
      else
      {
        if (paramClass1 != null)
          break;
        return f + 1.5F;
      }
      f += 1.0F;
      paramClass1 = paramClass1.getSuperclass();
    }
  }

  private static float getPrimitivePromotionCost(Class paramClass1, Class paramClass2)
  {
    boolean bool = paramClass1.isPrimitive();
    float f = 0.0F;
    if (!bool)
    {
      paramClass1 = ClassUtils.wrapperToPrimitive(paramClass1);
      f = 0.1F;
    }
    int i = 0;
    Class localClass = paramClass1;
    while ((localClass != paramClass2) && (i < ORDERED_PRIMITIVE_TYPES.length))
    {
      if (localClass == ORDERED_PRIMITIVE_TYPES[i])
      {
        f += 0.1F;
        if (i < -1 + ORDERED_PRIMITIVE_TYPES.length)
          localClass = ORDERED_PRIMITIVE_TYPES[(i + 1)];
      }
      i++;
    }
    return f;
  }

  private static float getTotalTransformationCost(Class[] paramArrayOfClass1, Class[] paramArrayOfClass2)
  {
    float f = 0.0F;
    for (int i = 0; i < paramArrayOfClass1.length; i++)
      f += getObjectTransformationCost(paramArrayOfClass1[i], paramArrayOfClass2[i]);
    return f;
  }

  static boolean isAccessible(Member paramMember)
  {
    return (paramMember != null) && (Modifier.isPublic(paramMember.getModifiers())) && (!paramMember.isSynthetic());
  }

  static boolean isPackageAccess(int paramInt)
  {
    return (paramInt & 0x7) == 0;
  }

  static void setAccessibleWorkaround(AccessibleObject paramAccessibleObject)
  {
    if ((paramAccessibleObject == null) || (paramAccessibleObject.isAccessible()));
    Member localMember;
    do
    {
      return;
      localMember = (Member)paramAccessibleObject;
    }
    while ((!Modifier.isPublic(localMember.getModifiers())) || (!isPackageAccess(localMember.getDeclaringClass().getModifiers())));
    try
    {
      paramAccessibleObject.setAccessible(true);
      return;
    }
    catch (SecurityException localSecurityException)
    {
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.reflect.MemberUtils
 * JD-Core Version:    0.6.2
 */