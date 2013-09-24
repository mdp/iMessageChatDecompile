package org.apache.commons.lang3.reflect;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.ClassUtils;

public class MethodUtils
{
  public static Method getAccessibleMethod(Class paramClass, String paramString, Class[] paramArrayOfClass)
  {
    try
    {
      Method localMethod = getAccessibleMethod(paramClass.getMethod(paramString, paramArrayOfClass));
      return localMethod;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
    }
    return null;
  }

  public static Method getAccessibleMethod(Method paramMethod)
  {
    if (!MemberUtils.isAccessible(paramMethod))
      paramMethod = null;
    Class localClass;
    do
    {
      return paramMethod;
      localClass = paramMethod.getDeclaringClass();
    }
    while (Modifier.isPublic(localClass.getModifiers()));
    String str = paramMethod.getName();
    Class[] arrayOfClass = paramMethod.getParameterTypes();
    Method localMethod = getAccessibleMethodFromInterfaceNest(localClass, str, arrayOfClass);
    if (localMethod == null)
      localMethod = getAccessibleMethodFromSuperclass(localClass, str, arrayOfClass);
    return localMethod;
  }

  private static Method getAccessibleMethodFromInterfaceNest(Class paramClass, String paramString, Class[] paramArrayOfClass)
  {
    Object localObject1 = null;
    while (true)
    {
      Class[] arrayOfClass;
      Object localObject2;
      int i;
      if (paramClass != null)
      {
        arrayOfClass = paramClass.getInterfaces();
        localObject2 = localObject1;
        i = 0;
        label18: if ((i < arrayOfClass.length) && (!Modifier.isPublic(arrayOfClass[i].getModifiers())));
      }
      try
      {
        Method localMethod = arrayOfClass[i].getDeclaredMethod(paramString, paramArrayOfClass);
        localObject2 = localMethod;
        label56: if (localObject2 == null)
        {
          localObject2 = getAccessibleMethodFromInterfaceNest(arrayOfClass[i], paramString, paramArrayOfClass);
          if (localObject2 == null)
          {
            i++;
            break label18;
          }
        }
        paramClass = paramClass.getSuperclass();
        localObject1 = localObject2;
        continue;
        return localObject1;
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        break label56;
      }
    }
  }

  private static Method getAccessibleMethodFromSuperclass(Class paramClass, String paramString, Class[] paramArrayOfClass)
  {
    Class localClass = paramClass.getSuperclass();
    while (true)
    {
      Object localObject = null;
      if ((localClass == null) || (Modifier.isPublic(localClass.getModifiers())));
      try
      {
        Method localMethod = localClass.getMethod(paramString, paramArrayOfClass);
        localObject = localMethod;
        return localObject;
        localClass = localClass.getSuperclass();
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
      }
    }
    return null;
  }

  public static Method getMatchingAccessibleMethod(Class paramClass, String paramString, Class[] paramArrayOfClass)
  {
    Object localObject;
    try
    {
      localObject = paramClass.getMethod(paramString, paramArrayOfClass);
      MemberUtils.setAccessibleWorkaround((AccessibleObject)localObject);
      return localObject;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      do
      {
        Method[] arrayOfMethod = paramClass.getMethods();
        int i = arrayOfMethod.length;
        int j = 0;
        localObject = null;
        while (j < i)
        {
          Method localMethod1 = arrayOfMethod[j];
          if ((localMethod1.getName().equals(paramString)) && (ClassUtils.isAssignable(paramArrayOfClass, localMethod1.getParameterTypes(), true)))
          {
            Method localMethod2 = getAccessibleMethod(localMethod1);
            if ((localMethod2 != null) && ((localObject == null) || (MemberUtils.compareParameterTypes(localMethod2.getParameterTypes(), ((Method)localObject).getParameterTypes(), paramArrayOfClass) < 0)))
              localObject = localMethod2;
          }
          j++;
        }
      }
      while (localObject == null);
      MemberUtils.setAccessibleWorkaround((AccessibleObject)localObject);
    }
    return localObject;
  }

  public static Object invokeExactMethod(Object paramObject, String paramString, Object[] paramArrayOfObject)
  {
    if (paramArrayOfObject == null)
      paramArrayOfObject = ArrayUtils.EMPTY_OBJECT_ARRAY;
    int i = paramArrayOfObject.length;
    Class[] arrayOfClass = new Class[i];
    for (int j = 0; j < i; j++)
      arrayOfClass[j] = paramArrayOfObject[j].getClass();
    return invokeExactMethod(paramObject, paramString, paramArrayOfObject, arrayOfClass);
  }

  public static Object invokeExactMethod(Object paramObject, String paramString, Object[] paramArrayOfObject, Class[] paramArrayOfClass)
  {
    if (paramArrayOfObject == null)
      paramArrayOfObject = ArrayUtils.EMPTY_OBJECT_ARRAY;
    if (paramArrayOfClass == null)
      paramArrayOfClass = ArrayUtils.EMPTY_CLASS_ARRAY;
    Method localMethod = getAccessibleMethod(paramObject.getClass(), paramString, paramArrayOfClass);
    if (localMethod == null)
      throw new NoSuchMethodException("No such accessible method: " + paramString + "() on object: " + paramObject.getClass().getName());
    return localMethod.invoke(paramObject, paramArrayOfObject);
  }

  public static Object invokeExactStaticMethod(Class paramClass, String paramString, Object[] paramArrayOfObject)
  {
    if (paramArrayOfObject == null)
      paramArrayOfObject = ArrayUtils.EMPTY_OBJECT_ARRAY;
    int i = paramArrayOfObject.length;
    Class[] arrayOfClass = new Class[i];
    for (int j = 0; j < i; j++)
      arrayOfClass[j] = paramArrayOfObject[j].getClass();
    return invokeExactStaticMethod(paramClass, paramString, paramArrayOfObject, arrayOfClass);
  }

  public static Object invokeExactStaticMethod(Class paramClass, String paramString, Object[] paramArrayOfObject, Class[] paramArrayOfClass)
  {
    if (paramArrayOfObject == null)
      paramArrayOfObject = ArrayUtils.EMPTY_OBJECT_ARRAY;
    if (paramArrayOfClass == null)
      paramArrayOfClass = ArrayUtils.EMPTY_CLASS_ARRAY;
    Method localMethod = getAccessibleMethod(paramClass, paramString, paramArrayOfClass);
    if (localMethod == null)
      throw new NoSuchMethodException("No such accessible method: " + paramString + "() on class: " + paramClass.getName());
    return localMethod.invoke(null, paramArrayOfObject);
  }

  public static Object invokeMethod(Object paramObject, String paramString, Object[] paramArrayOfObject)
  {
    if (paramArrayOfObject == null)
      paramArrayOfObject = ArrayUtils.EMPTY_OBJECT_ARRAY;
    int i = paramArrayOfObject.length;
    Class[] arrayOfClass = new Class[i];
    for (int j = 0; j < i; j++)
      arrayOfClass[j] = paramArrayOfObject[j].getClass();
    return invokeMethod(paramObject, paramString, paramArrayOfObject, arrayOfClass);
  }

  public static Object invokeMethod(Object paramObject, String paramString, Object[] paramArrayOfObject, Class[] paramArrayOfClass)
  {
    if (paramArrayOfClass == null)
      paramArrayOfClass = ArrayUtils.EMPTY_CLASS_ARRAY;
    if (paramArrayOfObject == null)
      paramArrayOfObject = ArrayUtils.EMPTY_OBJECT_ARRAY;
    Method localMethod = getMatchingAccessibleMethod(paramObject.getClass(), paramString, paramArrayOfClass);
    if (localMethod == null)
      throw new NoSuchMethodException("No such accessible method: " + paramString + "() on object: " + paramObject.getClass().getName());
    return localMethod.invoke(paramObject, paramArrayOfObject);
  }

  public static Object invokeStaticMethod(Class paramClass, String paramString, Object[] paramArrayOfObject)
  {
    if (paramArrayOfObject == null)
      paramArrayOfObject = ArrayUtils.EMPTY_OBJECT_ARRAY;
    int i = paramArrayOfObject.length;
    Class[] arrayOfClass = new Class[i];
    for (int j = 0; j < i; j++)
      arrayOfClass[j] = paramArrayOfObject[j].getClass();
    return invokeStaticMethod(paramClass, paramString, paramArrayOfObject, arrayOfClass);
  }

  public static Object invokeStaticMethod(Class paramClass, String paramString, Object[] paramArrayOfObject, Class[] paramArrayOfClass)
  {
    if (paramArrayOfClass == null)
      paramArrayOfClass = ArrayUtils.EMPTY_CLASS_ARRAY;
    if (paramArrayOfObject == null)
      paramArrayOfObject = ArrayUtils.EMPTY_OBJECT_ARRAY;
    Method localMethod = getMatchingAccessibleMethod(paramClass, paramString, paramArrayOfClass);
    if (localMethod == null)
      throw new NoSuchMethodException("No such accessible method: " + paramString + "() on class: " + paramClass.getName());
    return localMethod.invoke(null, paramArrayOfObject);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.reflect.MethodUtils
 * JD-Core Version:    0.6.2
 */