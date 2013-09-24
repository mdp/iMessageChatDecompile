package org.apache.commons.lang3.reflect;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.ClassUtils;

public class ConstructorUtils
{
  public static Constructor getAccessibleConstructor(Class paramClass, Class[] paramArrayOfClass)
  {
    try
    {
      Constructor localConstructor = getAccessibleConstructor(paramClass.getConstructor(paramArrayOfClass));
      return localConstructor;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
    }
    return null;
  }

  public static Constructor getAccessibleConstructor(Constructor paramConstructor)
  {
    if ((MemberUtils.isAccessible(paramConstructor)) && (Modifier.isPublic(paramConstructor.getDeclaringClass().getModifiers())))
      return paramConstructor;
    return null;
  }

  public static Constructor getMatchingAccessibleConstructor(Class paramClass, Class[] paramArrayOfClass)
  {
    Object localObject;
    Constructor[] arrayOfConstructor;
    int i;
    int j;
    try
    {
      localObject = paramClass.getConstructor(paramArrayOfClass);
      MemberUtils.setAccessibleWorkaround((AccessibleObject)localObject);
      return localObject;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      arrayOfConstructor = paramClass.getConstructors();
      i = arrayOfConstructor.length;
      j = 0;
      localObject = null;
    }
    while (j < i)
    {
      Constructor localConstructor1 = arrayOfConstructor[j];
      if (ClassUtils.isAssignable(paramArrayOfClass, localConstructor1.getParameterTypes(), true))
      {
        Constructor localConstructor2 = getAccessibleConstructor(localConstructor1);
        if (localConstructor2 != null)
        {
          MemberUtils.setAccessibleWorkaround(localConstructor2);
          if ((localObject == null) || (MemberUtils.compareParameterTypes(localConstructor2.getParameterTypes(), ((Constructor)localObject).getParameterTypes(), paramArrayOfClass) < 0))
            localObject = localConstructor2;
        }
      }
      j++;
    }
  }

  public static Object invokeConstructor(Class paramClass, Object[] paramArrayOfObject)
  {
    if (paramArrayOfObject == null)
      paramArrayOfObject = ArrayUtils.EMPTY_OBJECT_ARRAY;
    Class[] arrayOfClass = new Class[paramArrayOfObject.length];
    for (int i = 0; i < paramArrayOfObject.length; i++)
      arrayOfClass[i] = paramArrayOfObject[i].getClass();
    return invokeConstructor(paramClass, paramArrayOfObject, arrayOfClass);
  }

  public static Object invokeConstructor(Class paramClass, Object[] paramArrayOfObject, Class[] paramArrayOfClass)
  {
    if (paramArrayOfClass == null)
      paramArrayOfClass = ArrayUtils.EMPTY_CLASS_ARRAY;
    if (paramArrayOfObject == null)
      paramArrayOfObject = ArrayUtils.EMPTY_OBJECT_ARRAY;
    Constructor localConstructor = getMatchingAccessibleConstructor(paramClass, paramArrayOfClass);
    if (localConstructor == null)
      throw new NoSuchMethodException("No such accessible constructor on object: " + paramClass.getName());
    return localConstructor.newInstance(paramArrayOfObject);
  }

  public static Object invokeExactConstructor(Class paramClass, Object[] paramArrayOfObject)
  {
    if (paramArrayOfObject == null)
      paramArrayOfObject = ArrayUtils.EMPTY_OBJECT_ARRAY;
    int i = paramArrayOfObject.length;
    Class[] arrayOfClass = new Class[i];
    for (int j = 0; j < i; j++)
      arrayOfClass[j] = paramArrayOfObject[j].getClass();
    return invokeExactConstructor(paramClass, paramArrayOfObject, arrayOfClass);
  }

  public static Object invokeExactConstructor(Class paramClass, Object[] paramArrayOfObject, Class[] paramArrayOfClass)
  {
    if (paramArrayOfObject == null)
      paramArrayOfObject = ArrayUtils.EMPTY_OBJECT_ARRAY;
    if (paramArrayOfClass == null)
      paramArrayOfClass = ArrayUtils.EMPTY_CLASS_ARRAY;
    Constructor localConstructor = getAccessibleConstructor(paramClass, paramArrayOfClass);
    if (localConstructor == null)
      throw new NoSuchMethodException("No such accessible constructor on object: " + paramClass.getName());
    return localConstructor.newInstance(paramArrayOfObject);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.reflect.ConstructorUtils
 * JD-Core Version:    0.6.2
 */