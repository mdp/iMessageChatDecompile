package org.apache.commons.lang3;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

public class AnnotationUtils
{
  private static final ToStringStyle TO_STRING_STYLE = new AnnotationUtils.1();

  private static boolean annotationArrayMemberEquals(Annotation[] paramArrayOfAnnotation1, Annotation[] paramArrayOfAnnotation2)
  {
    if (paramArrayOfAnnotation1.length != paramArrayOfAnnotation2.length)
      return false;
    for (int i = 0; ; i++)
    {
      if (i >= paramArrayOfAnnotation1.length)
        break label35;
      if (!equals(paramArrayOfAnnotation1[i], paramArrayOfAnnotation2[i]))
        break;
    }
    label35: return true;
  }

  private static boolean arrayMemberEquals(Class paramClass, Object paramObject1, Object paramObject2)
  {
    if (paramClass.isAnnotation())
      return annotationArrayMemberEquals((Annotation[])paramObject1, (Annotation[])paramObject2);
    if (paramClass.equals(Byte.TYPE))
      return Arrays.equals((byte[])paramObject1, (byte[])paramObject2);
    if (paramClass.equals(Short.TYPE))
      return Arrays.equals((short[])paramObject1, (short[])paramObject2);
    if (paramClass.equals(Integer.TYPE))
      return Arrays.equals((int[])paramObject1, (int[])paramObject2);
    if (paramClass.equals(Character.TYPE))
      return Arrays.equals((char[])paramObject1, (char[])paramObject2);
    if (paramClass.equals(Long.TYPE))
      return Arrays.equals((long[])paramObject1, (long[])paramObject2);
    if (paramClass.equals(Float.TYPE))
      return Arrays.equals((float[])paramObject1, (float[])paramObject2);
    if (paramClass.equals(Double.TYPE))
      return Arrays.equals((double[])paramObject1, (double[])paramObject2);
    if (paramClass.equals(Boolean.TYPE))
      return Arrays.equals((boolean[])paramObject1, (boolean[])paramObject2);
    return Arrays.equals((Object[])paramObject1, (Object[])paramObject2);
  }

  private static int arrayMemberHash(Class paramClass, Object paramObject)
  {
    if (paramClass.equals(Byte.TYPE))
      return Arrays.hashCode((byte[])paramObject);
    if (paramClass.equals(Short.TYPE))
      return Arrays.hashCode((short[])paramObject);
    if (paramClass.equals(Integer.TYPE))
      return Arrays.hashCode((int[])paramObject);
    if (paramClass.equals(Character.TYPE))
      return Arrays.hashCode((char[])paramObject);
    if (paramClass.equals(Long.TYPE))
      return Arrays.hashCode((long[])paramObject);
    if (paramClass.equals(Float.TYPE))
      return Arrays.hashCode((float[])paramObject);
    if (paramClass.equals(Double.TYPE))
      return Arrays.hashCode((double[])paramObject);
    if (paramClass.equals(Boolean.TYPE))
      return Arrays.hashCode((boolean[])paramObject);
    return Arrays.hashCode((Object[])paramObject);
  }

  public static boolean equals(Annotation paramAnnotation1, Annotation paramAnnotation2)
  {
    if (paramAnnotation1 == paramAnnotation2);
    while (true)
    {
      return true;
      if ((paramAnnotation1 == null) || (paramAnnotation2 == null))
        return false;
      Class localClass1 = paramAnnotation1.annotationType();
      Class localClass2 = paramAnnotation2.annotationType();
      Validate.notNull(localClass1, "Annotation %s with null annotationType()", new Object[] { paramAnnotation1 });
      Validate.notNull(localClass2, "Annotation %s with null annotationType()", new Object[] { paramAnnotation2 });
      if (!localClass1.equals(localClass2))
        return false;
      try
      {
        for (Method localMethod : localClass1.getDeclaredMethods())
          if ((localMethod.getParameterTypes().length == 0) && (isValidAnnotationMemberType(localMethod.getReturnType())))
          {
            Object localObject1 = localMethod.invoke(paramAnnotation1, new Object[0]);
            Object localObject2 = localMethod.invoke(paramAnnotation2, new Object[0]);
            boolean bool = memberEquals(localMethod.getReturnType(), localObject1, localObject2);
            if (!bool)
              return false;
          }
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        return false;
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
      }
    }
    return false;
  }

  public static int hashCode(Annotation paramAnnotation)
  {
    int i = 0;
    Method[] arrayOfMethod = paramAnnotation.annotationType().getDeclaredMethods();
    int j = arrayOfMethod.length;
    int k = 0;
    while (i < j)
    {
      Method localMethod = arrayOfMethod[i];
      try
      {
        localObject = localMethod.invoke(paramAnnotation, new Object[0]);
        if (localObject == null)
          throw new IllegalStateException(String.format("Annotation method %s returned null", new Object[] { localMethod }));
      }
      catch (RuntimeException localRuntimeException)
      {
        Object localObject;
        throw localRuntimeException;
        int m = hashMember(localMethod.getName(), localObject);
        k += m;
        i++;
      }
      catch (Exception localException)
      {
        throw new RuntimeException(localException);
      }
    }
    return k;
  }

  private static int hashMember(String paramString, Object paramObject)
  {
    int i = 127 * paramString.hashCode();
    if (paramObject.getClass().isArray())
      return i ^ arrayMemberHash(paramObject.getClass().getComponentType(), paramObject);
    if ((paramObject instanceof Annotation))
      return i ^ hashCode((Annotation)paramObject);
    return i ^ paramObject.hashCode();
  }

  public static boolean isValidAnnotationMemberType(Class paramClass)
  {
    if (paramClass == null);
    do
    {
      return false;
      if (paramClass.isArray())
        paramClass = paramClass.getComponentType();
    }
    while ((!paramClass.isPrimitive()) && (!paramClass.isEnum()) && (!paramClass.isAnnotation()) && (!String.class.equals(paramClass)) && (!Class.class.equals(paramClass)));
    return true;
  }

  private static boolean memberEquals(Class paramClass, Object paramObject1, Object paramObject2)
  {
    if (paramObject1 == paramObject2)
      return true;
    if ((paramObject1 == null) || (paramObject2 == null))
      return false;
    if (paramClass.isArray())
      return arrayMemberEquals(paramClass.getComponentType(), paramObject1, paramObject2);
    if (paramClass.isAnnotation())
      return equals((Annotation)paramObject1, (Annotation)paramObject2);
    return paramObject1.equals(paramObject2);
  }

  public static String toString(Annotation paramAnnotation)
  {
    int i = 0;
    ToStringBuilder localToStringBuilder = new ToStringBuilder(paramAnnotation, TO_STRING_STYLE);
    Method[] arrayOfMethod = paramAnnotation.annotationType().getDeclaredMethods();
    int j = arrayOfMethod.length;
    while (i < j)
    {
      Method localMethod = arrayOfMethod[i];
      if (localMethod.getParameterTypes().length <= 0);
      try
      {
        localToStringBuilder.append(localMethod.getName(), localMethod.invoke(paramAnnotation, new Object[0]));
        i++;
      }
      catch (RuntimeException localRuntimeException)
      {
        throw localRuntimeException;
      }
      catch (Exception localException)
      {
        throw new RuntimeException(localException);
      }
    }
    return localToStringBuilder.build();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.AnnotationUtils
 * JD-Core Version:    0.6.2
 */