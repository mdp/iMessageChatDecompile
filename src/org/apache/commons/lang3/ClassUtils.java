package org.apache.commons.lang3;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class ClassUtils
{
  public static final String INNER_CLASS_SEPARATOR;
  public static final char INNER_CLASS_SEPARATOR_CHAR = '$';
  public static final String PACKAGE_SEPARATOR = String.valueOf('.');
  public static final char PACKAGE_SEPARATOR_CHAR = '.';
  private static final Map abbreviationMap;
  private static final Map primitiveWrapperMap;
  private static final Map reverseAbbreviationMap;
  private static final Map wrapperPrimitiveMap;

  static
  {
    INNER_CLASS_SEPARATOR = String.valueOf('$');
    HashMap localHashMap = new HashMap();
    primitiveWrapperMap = localHashMap;
    localHashMap.put(Boolean.TYPE, Boolean.class);
    primitiveWrapperMap.put(Byte.TYPE, Byte.class);
    primitiveWrapperMap.put(Character.TYPE, Character.class);
    primitiveWrapperMap.put(Short.TYPE, Short.class);
    primitiveWrapperMap.put(Integer.TYPE, Integer.class);
    primitiveWrapperMap.put(Long.TYPE, Long.class);
    primitiveWrapperMap.put(Double.TYPE, Double.class);
    primitiveWrapperMap.put(Float.TYPE, Float.class);
    primitiveWrapperMap.put(Void.TYPE, Void.TYPE);
    wrapperPrimitiveMap = new HashMap();
    Iterator localIterator = primitiveWrapperMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      Class localClass1 = (Class)localIterator.next();
      Class localClass2 = (Class)primitiveWrapperMap.get(localClass1);
      if (!localClass1.equals(localClass2))
        wrapperPrimitiveMap.put(localClass2, localClass1);
    }
    abbreviationMap = new HashMap();
    reverseAbbreviationMap = new HashMap();
    addAbbreviation("int", "I");
    addAbbreviation("boolean", "Z");
    addAbbreviation("float", "F");
    addAbbreviation("long", "J");
    addAbbreviation("short", "S");
    addAbbreviation("byte", "B");
    addAbbreviation("double", "D");
    addAbbreviation("char", "C");
  }

  private static void addAbbreviation(String paramString1, String paramString2)
  {
    abbreviationMap.put(paramString1, paramString2);
    reverseAbbreviationMap.put(paramString2, paramString1);
  }

  public static List convertClassNamesToClasses(List paramList)
  {
    if (paramList == null)
      return null;
    ArrayList localArrayList = new ArrayList(paramList.size());
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      try
      {
        localArrayList.add(Class.forName(str));
      }
      catch (Exception localException)
      {
        localArrayList.add(null);
      }
    }
    return localArrayList;
  }

  public static List convertClassesToClassNames(List paramList)
  {
    if (paramList == null)
      return null;
    ArrayList localArrayList = new ArrayList(paramList.size());
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      Class localClass = (Class)localIterator.next();
      if (localClass == null)
        localArrayList.add(null);
      else
        localArrayList.add(localClass.getName());
    }
    return localArrayList;
  }

  public static List getAllInterfaces(Class paramClass)
  {
    if (paramClass == null)
      return null;
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    getAllInterfaces(paramClass, localLinkedHashSet);
    return new ArrayList(localLinkedHashSet);
  }

  private static void getAllInterfaces(Class paramClass, HashSet paramHashSet)
  {
    while (paramClass != null)
    {
      for (Class localClass : paramClass.getInterfaces())
        if (paramHashSet.add(localClass))
          getAllInterfaces(localClass, paramHashSet);
      paramClass = paramClass.getSuperclass();
    }
  }

  public static List getAllSuperclasses(Class paramClass)
  {
    Object localObject;
    if (paramClass == null)
      localObject = null;
    while (true)
    {
      return localObject;
      localObject = new ArrayList();
      for (Class localClass = paramClass.getSuperclass(); localClass != null; localClass = localClass.getSuperclass())
        ((List)localObject).add(localClass);
    }
  }

  private static String getCanonicalName(String paramString)
  {
    int i = 0;
    String str1 = StringUtils.deleteWhitespace(paramString);
    String str2;
    if (str1 == null)
      str2 = null;
    int j;
    do
    {
      return str2;
      j = 0;
      str2 = str1;
      while (str2.startsWith("["))
      {
        int m = j + 1;
        str2 = str2.substring(1);
        j = m;
      }
    }
    while (j <= 0);
    int k;
    String str3;
    if (str2.startsWith("L"))
      if (str2.endsWith(";"))
      {
        k = -1 + str2.length();
        str3 = str2.substring(1, k);
      }
    while (true)
    {
      label94: StringBuilder localStringBuilder = new StringBuilder(str3);
      while (true)
        if (i < j)
        {
          localStringBuilder.append("[]");
          i++;
          continue;
          k = str2.length();
          break;
          if (str2.length() <= 0)
            break label171;
          str3 = (String)reverseAbbreviationMap.get(str2.substring(0, 1));
          break label94;
        }
      return localStringBuilder.toString();
      label171: str3 = str2;
    }
  }

  public static Class getClass(ClassLoader paramClassLoader, String paramString)
  {
    return getClass(paramClassLoader, paramString, true);
  }

  public static Class getClass(ClassLoader paramClassLoader, String paramString, boolean paramBoolean)
  {
    try
    {
      if (abbreviationMap.containsKey(paramString))
        return Class.forName("[" + (String)abbreviationMap.get(paramString), paramBoolean, paramClassLoader).getComponentType();
      Class localClass2 = Class.forName(toCanonicalName(paramString), paramBoolean, paramClassLoader);
      return localClass2;
    }
    catch (ClassNotFoundException localClassNotFoundException1)
    {
      int i = paramString.lastIndexOf('.');
      if (i != -1)
        try
        {
          Class localClass1 = getClass(paramClassLoader, paramString.substring(0, i) + '$' + paramString.substring(i + 1), paramBoolean);
          return localClass1;
        }
        catch (ClassNotFoundException localClassNotFoundException2)
        {
        }
      throw localClassNotFoundException1;
    }
  }

  public static Class getClass(String paramString)
  {
    return getClass(paramString, true);
  }

  public static Class getClass(String paramString, boolean paramBoolean)
  {
    ClassLoader localClassLoader = Thread.currentThread().getContextClassLoader();
    if (localClassLoader == null)
      localClassLoader = ClassUtils.class.getClassLoader();
    return getClass(localClassLoader, paramString, paramBoolean);
  }

  public static String getPackageCanonicalName(Class paramClass)
  {
    if (paramClass == null)
      return "";
    return getPackageCanonicalName(paramClass.getName());
  }

  public static String getPackageCanonicalName(Object paramObject, String paramString)
  {
    if (paramObject == null)
      return paramString;
    return getPackageCanonicalName(paramObject.getClass().getName());
  }

  public static String getPackageCanonicalName(String paramString)
  {
    return getPackageName(getCanonicalName(paramString));
  }

  public static String getPackageName(Class paramClass)
  {
    if (paramClass == null)
      return "";
    return getPackageName(paramClass.getName());
  }

  public static String getPackageName(Object paramObject, String paramString)
  {
    if (paramObject == null)
      return paramString;
    return getPackageName(paramObject.getClass());
  }

  public static String getPackageName(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
      return "";
    while (paramString.charAt(0) == '[')
      paramString = paramString.substring(1);
    if ((paramString.charAt(0) == 'L') && (paramString.charAt(-1 + paramString.length()) == ';'))
      paramString = paramString.substring(1);
    int i = paramString.lastIndexOf('.');
    if (i == -1)
      return "";
    return paramString.substring(0, i);
  }

  public static Method getPublicMethod(Class paramClass, String paramString, Class[] paramArrayOfClass)
  {
    Method localMethod1 = paramClass.getMethod(paramString, paramArrayOfClass);
    if (Modifier.isPublic(localMethod1.getDeclaringClass().getModifiers()))
      return localMethod1;
    ArrayList localArrayList = new ArrayList();
    localArrayList.addAll(getAllInterfaces(paramClass));
    localArrayList.addAll(getAllSuperclasses(paramClass));
    Iterator localIterator = localArrayList.iterator();
    while (true)
    {
      Class localClass;
      if (localIterator.hasNext())
      {
        localClass = (Class)localIterator.next();
        if (!Modifier.isPublic(localClass.getModifiers()));
      }
      else
      {
        try
        {
          Method localMethod2 = localClass.getMethod(paramString, paramArrayOfClass);
          if (Modifier.isPublic(localMethod2.getDeclaringClass().getModifiers()))
          {
            return localMethod2;
            throw new NoSuchMethodException("Can't find a public method for " + paramString + " " + ArrayUtils.toString(paramArrayOfClass));
          }
        }
        catch (NoSuchMethodException localNoSuchMethodException)
        {
        }
      }
    }
  }

  public static String getShortCanonicalName(Class paramClass)
  {
    if (paramClass == null)
      return "";
    return getShortCanonicalName(paramClass.getName());
  }

  public static String getShortCanonicalName(Object paramObject, String paramString)
  {
    if (paramObject == null)
      return paramString;
    return getShortCanonicalName(paramObject.getClass().getName());
  }

  public static String getShortCanonicalName(String paramString)
  {
    return getShortClassName(getCanonicalName(paramString));
  }

  public static String getShortClassName(Class paramClass)
  {
    if (paramClass == null)
      return "";
    return getShortClassName(paramClass.getName());
  }

  public static String getShortClassName(Object paramObject, String paramString)
  {
    if (paramObject == null)
      return paramString;
    return getShortClassName(paramObject.getClass());
  }

  public static String getShortClassName(String paramString)
  {
    if (paramString == null)
      return "";
    if (paramString.length() == 0)
      return "";
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramString.startsWith("["))
    {
      while (paramString.charAt(0) == '[')
      {
        paramString = paramString.substring(1);
        localStringBuilder.append("[]");
      }
      if ((paramString.charAt(0) == 'L') && (paramString.charAt(-1 + paramString.length()) == ';'))
        paramString = paramString.substring(1, -1 + paramString.length());
    }
    if (reverseAbbreviationMap.containsKey(paramString));
    for (String str1 = (String)reverseAbbreviationMap.get(paramString); ; str1 = paramString)
    {
      int i = str1.lastIndexOf('.');
      int j = 0;
      if (i == -1);
      while (true)
      {
        int k = str1.indexOf('$', j);
        String str2 = str1.substring(i + 1);
        if (k != -1)
          str2 = str2.replace('$', '.');
        return str2 + localStringBuilder;
        j = i + 1;
      }
    }
  }

  public static String getSimpleName(Class paramClass)
  {
    if (paramClass == null)
      return "";
    return paramClass.getSimpleName();
  }

  public static String getSimpleName(Object paramObject, String paramString)
  {
    if (paramObject == null)
      return paramString;
    return getSimpleName(paramObject.getClass());
  }

  public static boolean isAssignable(Class paramClass1, Class paramClass2)
  {
    return isAssignable(paramClass1, paramClass2, SystemUtils.isJavaVersionAtLeast(JavaVersion.JAVA_1_5));
  }

  public static boolean isAssignable(Class paramClass1, Class paramClass2, boolean paramBoolean)
  {
    if (paramClass2 == null);
    label69: 
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    do
                    {
                      do
                      {
                        return false;
                        if (paramClass1 != null)
                          break;
                      }
                      while (paramClass2.isPrimitive());
                      return true;
                      if (!paramBoolean)
                        break label69;
                      if ((!paramClass1.isPrimitive()) || (paramClass2.isPrimitive()))
                        break;
                      paramClass1 = primitiveToWrapper(paramClass1);
                    }
                    while (paramClass1 == null);
                    if ((!paramClass2.isPrimitive()) || (paramClass1.isPrimitive()))
                      break;
                    paramClass1 = wrapperToPrimitive(paramClass1);
                  }
                  while (paramClass1 == null);
                  if (paramClass1.equals(paramClass2))
                    return true;
                  if (!paramClass1.isPrimitive())
                    break;
                }
                while (!paramClass2.isPrimitive());
                if (!Integer.TYPE.equals(paramClass1))
                  break;
              }
              while ((!Long.TYPE.equals(paramClass2)) && (!Float.TYPE.equals(paramClass2)) && (!Double.TYPE.equals(paramClass2)));
              return true;
              if (!Long.TYPE.equals(paramClass1))
                break;
            }
            while ((!Float.TYPE.equals(paramClass2)) && (!Double.TYPE.equals(paramClass2)));
            return true;
          }
          while ((Boolean.TYPE.equals(paramClass1)) || (Double.TYPE.equals(paramClass1)));
          if (Float.TYPE.equals(paramClass1))
            return Double.TYPE.equals(paramClass2);
          if (!Character.TYPE.equals(paramClass1))
            break;
        }
        while ((!Integer.TYPE.equals(paramClass2)) && (!Long.TYPE.equals(paramClass2)) && (!Float.TYPE.equals(paramClass2)) && (!Double.TYPE.equals(paramClass2)));
        return true;
        if (!Short.TYPE.equals(paramClass1))
          break;
      }
      while ((!Integer.TYPE.equals(paramClass2)) && (!Long.TYPE.equals(paramClass2)) && (!Float.TYPE.equals(paramClass2)) && (!Double.TYPE.equals(paramClass2)));
      return true;
    }
    while ((!Byte.TYPE.equals(paramClass1)) || ((!Short.TYPE.equals(paramClass2)) && (!Integer.TYPE.equals(paramClass2)) && (!Long.TYPE.equals(paramClass2)) && (!Float.TYPE.equals(paramClass2)) && (!Double.TYPE.equals(paramClass2))));
    return true;
    return paramClass2.isAssignableFrom(paramClass1);
  }

  public static boolean isAssignable(Class[] paramArrayOfClass1, Class[] paramArrayOfClass2)
  {
    return isAssignable(paramArrayOfClass1, paramArrayOfClass2, SystemUtils.isJavaVersionAtLeast(JavaVersion.JAVA_1_5));
  }

  public static boolean isAssignable(Class[] paramArrayOfClass1, Class[] paramArrayOfClass2, boolean paramBoolean)
  {
    if (!ArrayUtils.isSameLength(paramArrayOfClass1, paramArrayOfClass2))
      return false;
    if (paramArrayOfClass1 == null)
      paramArrayOfClass1 = ArrayUtils.EMPTY_CLASS_ARRAY;
    if (paramArrayOfClass2 == null)
      paramArrayOfClass2 = ArrayUtils.EMPTY_CLASS_ARRAY;
    for (int i = 0; ; i++)
    {
      if (i >= paramArrayOfClass1.length)
        break label53;
      if (!isAssignable(paramArrayOfClass1[i], paramArrayOfClass2[i], paramBoolean))
        break;
    }
    label53: return true;
  }

  public static boolean isInnerClass(Class paramClass)
  {
    return (paramClass != null) && (paramClass.getEnclosingClass() != null);
  }

  public static boolean isPrimitiveOrWrapper(Class paramClass)
  {
    if (paramClass == null);
    while ((!paramClass.isPrimitive()) && (!isPrimitiveWrapper(paramClass)))
      return false;
    return true;
  }

  public static boolean isPrimitiveWrapper(Class paramClass)
  {
    return wrapperPrimitiveMap.containsKey(paramClass);
  }

  public static Class primitiveToWrapper(Class paramClass)
  {
    if ((paramClass != null) && (paramClass.isPrimitive()))
      paramClass = (Class)primitiveWrapperMap.get(paramClass);
    return paramClass;
  }

  public static Class[] primitivesToWrappers(Class[] paramArrayOfClass)
  {
    if (paramArrayOfClass == null)
      paramArrayOfClass = null;
    while (paramArrayOfClass.length == 0)
      return paramArrayOfClass;
    Class[] arrayOfClass = new Class[paramArrayOfClass.length];
    for (int i = 0; i < paramArrayOfClass.length; i++)
      arrayOfClass[i] = primitiveToWrapper(paramArrayOfClass[i]);
    return arrayOfClass;
  }

  private static String toCanonicalName(String paramString)
  {
    String str1 = StringUtils.deleteWhitespace(paramString);
    if (str1 == null)
      throw new NullPointerException("className must not be null.");
    StringBuilder localStringBuilder;
    Object localObject;
    if (str1.endsWith("[]"))
    {
      localStringBuilder = new StringBuilder();
      String str3;
      for (localObject = str1; ((String)localObject).endsWith("[]"); localObject = str3)
      {
        str3 = ((String)localObject).substring(0, -2 + ((String)localObject).length());
        localStringBuilder.append("[");
      }
      String str2 = (String)abbreviationMap.get(localObject);
      if (str2 == null)
        break label108;
      localStringBuilder.append(str2);
    }
    while (true)
    {
      str1 = localStringBuilder.toString();
      return str1;
      label108: localStringBuilder.append("L").append((String)localObject).append(";");
    }
  }

  public static Class[] toClass(Object[] paramArrayOfObject)
  {
    if (paramArrayOfObject == null)
      return null;
    if (paramArrayOfObject.length == 0)
      return ArrayUtils.EMPTY_CLASS_ARRAY;
    Class[] arrayOfClass = new Class[paramArrayOfObject.length];
    int i = 0;
    if (i < paramArrayOfObject.length)
    {
      if (paramArrayOfObject[i] == null);
      for (Class localClass = null; ; localClass = paramArrayOfObject[i].getClass())
      {
        arrayOfClass[i] = localClass;
        i++;
        break;
      }
    }
    return arrayOfClass;
  }

  public static Class wrapperToPrimitive(Class paramClass)
  {
    return (Class)wrapperPrimitiveMap.get(paramClass);
  }

  public static Class[] wrappersToPrimitives(Class[] paramArrayOfClass)
  {
    if (paramArrayOfClass == null)
      paramArrayOfClass = null;
    while (paramArrayOfClass.length == 0)
      return paramArrayOfClass;
    Class[] arrayOfClass = new Class[paramArrayOfClass.length];
    for (int i = 0; i < paramArrayOfClass.length; i++)
      arrayOfClass[i] = wrapperToPrimitive(paramArrayOfClass[i]);
    return arrayOfClass;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.ClassUtils
 * JD-Core Version:    0.6.2
 */