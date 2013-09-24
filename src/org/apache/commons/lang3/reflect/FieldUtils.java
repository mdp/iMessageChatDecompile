package org.apache.commons.lang3.reflect;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.lang3.ClassUtils;

public class FieldUtils
{
  public static Field getDeclaredField(Class paramClass, String paramString)
  {
    return getDeclaredField(paramClass, paramString, false);
  }

  public static Field getDeclaredField(Class paramClass, String paramString, boolean paramBoolean)
  {
    if (paramClass == null)
      throw new IllegalArgumentException("The class must not be null");
    if (paramString == null)
      throw new IllegalArgumentException("The field name must not be null");
    try
    {
      Field localField1 = paramClass.getDeclaredField(paramString);
      Field localField2;
      if (!MemberUtils.isAccessible(localField1))
      {
        localField2 = null;
        if (paramBoolean)
          localField1.setAccessible(true);
      }
      else
      {
        localField2 = localField1;
      }
      return localField2;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
    }
    return null;
  }

  public static Field getField(Class paramClass, String paramString)
  {
    Field localField = getField(paramClass, paramString, false);
    MemberUtils.setAccessibleWorkaround(localField);
    return localField;
  }

  public static Field getField(Class paramClass, String paramString, boolean paramBoolean)
  {
    if (paramClass == null)
      throw new IllegalArgumentException("The class must not be null");
    if (paramString == null)
      throw new IllegalArgumentException("The field name must not be null");
    Class localClass1 = paramClass;
    if (localClass1 != null);
    while (true)
    {
      try
      {
        localObject = localClass1.getDeclaredField(paramString);
        if (!Modifier.isPublic(((Field)localObject).getModifiers()))
        {
          if (paramBoolean)
            ((Field)localObject).setAccessible(true);
        }
        else
          return localObject;
      }
      catch (NoSuchFieldException localNoSuchFieldException2)
      {
        localClass1 = localClass1.getSuperclass();
      }
      break;
      Iterator localIterator = ClassUtils.getAllInterfaces(paramClass).iterator();
      Object localObject = null;
      while (localIterator.hasNext())
      {
        Class localClass2 = (Class)localIterator.next();
        Field localField;
        try
        {
          localField = localClass2.getField(paramString);
          if (localObject == null)
            break label167;
          throw new IllegalArgumentException("Reference to field " + paramString + " is ambiguous relative to " + paramClass + "; a matching field exists on two or more implemented interfaces.");
        }
        catch (NoSuchFieldException localNoSuchFieldException1)
        {
        }
        continue;
        label167: localObject = localField;
      }
    }
  }

  public static Object readDeclaredField(Object paramObject, String paramString)
  {
    return readDeclaredField(paramObject, paramString, false);
  }

  public static Object readDeclaredField(Object paramObject, String paramString, boolean paramBoolean)
  {
    if (paramObject == null)
      throw new IllegalArgumentException("target object must not be null");
    Class localClass = paramObject.getClass();
    Field localField = getDeclaredField(localClass, paramString, paramBoolean);
    if (localField == null)
      throw new IllegalArgumentException("Cannot locate declared field " + localClass.getName() + "." + paramString);
    return readField(localField, paramObject);
  }

  public static Object readDeclaredStaticField(Class paramClass, String paramString)
  {
    return readDeclaredStaticField(paramClass, paramString, false);
  }

  public static Object readDeclaredStaticField(Class paramClass, String paramString, boolean paramBoolean)
  {
    Field localField = getDeclaredField(paramClass, paramString, paramBoolean);
    if (localField == null)
      throw new IllegalArgumentException("Cannot locate declared field " + paramClass.getName() + "." + paramString);
    return readStaticField(localField, false);
  }

  public static Object readField(Object paramObject, String paramString)
  {
    return readField(paramObject, paramString, false);
  }

  public static Object readField(Object paramObject, String paramString, boolean paramBoolean)
  {
    if (paramObject == null)
      throw new IllegalArgumentException("target object must not be null");
    Class localClass = paramObject.getClass();
    Field localField = getField(localClass, paramString, paramBoolean);
    if (localField == null)
      throw new IllegalArgumentException("Cannot locate field " + paramString + " on " + localClass);
    return readField(localField, paramObject);
  }

  public static Object readField(Field paramField, Object paramObject)
  {
    return readField(paramField, paramObject, false);
  }

  public static Object readField(Field paramField, Object paramObject, boolean paramBoolean)
  {
    if (paramField == null)
      throw new IllegalArgumentException("The field must not be null");
    if ((paramBoolean) && (!paramField.isAccessible()))
      paramField.setAccessible(true);
    while (true)
    {
      return paramField.get(paramObject);
      MemberUtils.setAccessibleWorkaround(paramField);
    }
  }

  public static Object readStaticField(Class paramClass, String paramString)
  {
    return readStaticField(paramClass, paramString, false);
  }

  public static Object readStaticField(Class paramClass, String paramString, boolean paramBoolean)
  {
    Field localField = getField(paramClass, paramString, paramBoolean);
    if (localField == null)
      throw new IllegalArgumentException("Cannot locate field " + paramString + " on " + paramClass);
    return readStaticField(localField, false);
  }

  public static Object readStaticField(Field paramField)
  {
    return readStaticField(paramField, false);
  }

  public static Object readStaticField(Field paramField, boolean paramBoolean)
  {
    if (paramField == null)
      throw new IllegalArgumentException("The field must not be null");
    if (!Modifier.isStatic(paramField.getModifiers()))
      throw new IllegalArgumentException("The field '" + paramField.getName() + "' is not static");
    return readField(paramField, null, paramBoolean);
  }

  public static void writeDeclaredField(Object paramObject1, String paramString, Object paramObject2)
  {
    writeDeclaredField(paramObject1, paramString, paramObject2, false);
  }

  public static void writeDeclaredField(Object paramObject1, String paramString, Object paramObject2, boolean paramBoolean)
  {
    if (paramObject1 == null)
      throw new IllegalArgumentException("target object must not be null");
    Class localClass = paramObject1.getClass();
    Field localField = getDeclaredField(localClass, paramString, paramBoolean);
    if (localField == null)
      throw new IllegalArgumentException("Cannot locate declared field " + localClass.getName() + "." + paramString);
    writeField(localField, paramObject1, paramObject2);
  }

  public static void writeDeclaredStaticField(Class paramClass, String paramString, Object paramObject)
  {
    writeDeclaredStaticField(paramClass, paramString, paramObject, false);
  }

  public static void writeDeclaredStaticField(Class paramClass, String paramString, Object paramObject, boolean paramBoolean)
  {
    Field localField = getDeclaredField(paramClass, paramString, paramBoolean);
    if (localField == null)
      throw new IllegalArgumentException("Cannot locate declared field " + paramClass.getName() + "." + paramString);
    writeField(localField, null, paramObject);
  }

  public static void writeField(Object paramObject1, String paramString, Object paramObject2)
  {
    writeField(paramObject1, paramString, paramObject2, false);
  }

  public static void writeField(Object paramObject1, String paramString, Object paramObject2, boolean paramBoolean)
  {
    if (paramObject1 == null)
      throw new IllegalArgumentException("target object must not be null");
    Class localClass = paramObject1.getClass();
    Field localField = getField(localClass, paramString, paramBoolean);
    if (localField == null)
      throw new IllegalArgumentException("Cannot locate declared field " + localClass.getName() + "." + paramString);
    writeField(localField, paramObject1, paramObject2);
  }

  public static void writeField(Field paramField, Object paramObject1, Object paramObject2)
  {
    writeField(paramField, paramObject1, paramObject2, false);
  }

  public static void writeField(Field paramField, Object paramObject1, Object paramObject2, boolean paramBoolean)
  {
    if (paramField == null)
      throw new IllegalArgumentException("The field must not be null");
    if ((paramBoolean) && (!paramField.isAccessible()))
      paramField.setAccessible(true);
    while (true)
    {
      paramField.set(paramObject1, paramObject2);
      return;
      MemberUtils.setAccessibleWorkaround(paramField);
    }
  }

  public static void writeStaticField(Class paramClass, String paramString, Object paramObject)
  {
    writeStaticField(paramClass, paramString, paramObject, false);
  }

  public static void writeStaticField(Class paramClass, String paramString, Object paramObject, boolean paramBoolean)
  {
    Field localField = getField(paramClass, paramString, paramBoolean);
    if (localField == null)
      throw new IllegalArgumentException("Cannot locate field " + paramString + " on " + paramClass);
    writeStaticField(localField, paramObject);
  }

  public static void writeStaticField(Field paramField, Object paramObject)
  {
    writeStaticField(paramField, paramObject, false);
  }

  public static void writeStaticField(Field paramField, Object paramObject, boolean paramBoolean)
  {
    if (paramField == null)
      throw new IllegalArgumentException("The field must not be null");
    if (!Modifier.isStatic(paramField.getModifiers()))
      throw new IllegalArgumentException("The field '" + paramField.getName() + "' is not static");
    writeField(paramField, null, paramObject, paramBoolean);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.reflect.FieldUtils
 * JD-Core Version:    0.6.2
 */