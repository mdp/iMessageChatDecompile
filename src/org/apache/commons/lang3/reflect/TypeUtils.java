package org.apache.commons.lang3.reflect;

import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.commons.lang3.ClassUtils;

public class TypeUtils
{
  public static Map determineTypeArguments(Class paramClass, ParameterizedType paramParameterizedType)
  {
    Type localType;
    while (true)
    {
      Class localClass = getRawType(paramParameterizedType);
      if (!isAssignable(paramClass, localClass))
        return null;
      if (paramClass.equals(localClass))
        return getTypeArguments(paramParameterizedType, localClass, null);
      localType = getClosestParentType(paramClass, localClass);
      if (!(localType instanceof Class))
        break;
      paramClass = (Class)localType;
    }
    ParameterizedType localParameterizedType = (ParameterizedType)localType;
    Map localMap = determineTypeArguments(getRawType(localParameterizedType), paramParameterizedType);
    mapTypeVariablesToArguments(paramClass, localParameterizedType, localMap);
    return localMap;
  }

  public static Type getArrayComponentType(Type paramType)
  {
    Class localClass1;
    if ((paramType instanceof Class))
    {
      Class localClass2 = (Class)paramType;
      boolean bool2 = localClass2.isArray();
      localClass1 = null;
      if (bool2)
        localClass1 = localClass2.getComponentType();
    }
    boolean bool1;
    do
    {
      return localClass1;
      bool1 = paramType instanceof GenericArrayType;
      localClass1 = null;
    }
    while (!bool1);
    return ((GenericArrayType)paramType).getGenericComponentType();
  }

  private static Type getClosestParentType(Class paramClass1, Class paramClass2)
  {
    Object localObject1;
    int j;
    Object localObject2;
    Class localClass;
    if (paramClass2.isInterface())
    {
      Type[] arrayOfType = paramClass1.getGenericInterfaces();
      localObject1 = null;
      int i = arrayOfType.length;
      j = 0;
      if (j < i)
      {
        localObject2 = arrayOfType[j];
        if ((localObject2 instanceof ParameterizedType))
        {
          localClass = getRawType((ParameterizedType)localObject2);
          label52: if ((!isAssignable(localClass, paramClass2)) || (!isAssignable((Type)localObject1, localClass)))
            break label133;
        }
      }
    }
    while (true)
    {
      j++;
      localObject1 = localObject2;
      break;
      if ((localObject2 instanceof Class))
      {
        localClass = (Class)localObject2;
        break label52;
      }
      throw new IllegalStateException("Unexpected generic interface type found: " + localObject2);
      if (localObject1 != null)
        return localObject1;
      return paramClass1.getGenericSuperclass();
      label133: localObject2 = localObject1;
    }
  }

  public static Type[] getImplicitBounds(TypeVariable paramTypeVariable)
  {
    Type[] arrayOfType = paramTypeVariable.getBounds();
    if (arrayOfType.length == 0)
      return new Type[] { Object.class };
    return normalizeUpperBounds(arrayOfType);
  }

  public static Type[] getImplicitLowerBounds(WildcardType paramWildcardType)
  {
    Type[] arrayOfType = paramWildcardType.getLowerBounds();
    if (arrayOfType.length == 0)
    {
      arrayOfType = new Type[1];
      arrayOfType[0] = null;
    }
    return arrayOfType;
  }

  public static Type[] getImplicitUpperBounds(WildcardType paramWildcardType)
  {
    Type[] arrayOfType = paramWildcardType.getUpperBounds();
    if (arrayOfType.length == 0)
      return new Type[] { Object.class };
    return normalizeUpperBounds(arrayOfType);
  }

  private static Class getRawType(ParameterizedType paramParameterizedType)
  {
    Type localType = paramParameterizedType.getRawType();
    if (!(localType instanceof Class))
      throw new IllegalStateException("Wait... What!? Type of rawType: " + localType);
    return (Class)localType;
  }

  public static Class getRawType(Type paramType1, Type paramType2)
  {
    Type localType = paramType1;
    do
    {
      if ((localType instanceof Class))
        return (Class)localType;
      if ((localType instanceof ParameterizedType))
        return getRawType((ParameterizedType)localType);
      if (!(localType instanceof TypeVariable))
        break;
      if (paramType2 == null)
        return null;
      GenericDeclaration localGenericDeclaration = ((TypeVariable)localType).getGenericDeclaration();
      if (!(localGenericDeclaration instanceof Class))
        return null;
      Map localMap = getTypeArguments(paramType2, (Class)localGenericDeclaration);
      if (localMap == null)
        return null;
      localType = (Type)localMap.get(localType);
    }
    while (localType != null);
    return null;
    if ((localType instanceof GenericArrayType))
      return Array.newInstance(getRawType(((GenericArrayType)localType).getGenericComponentType(), paramType2), 0).getClass();
    if ((localType instanceof WildcardType))
      return null;
    throw new IllegalArgumentException("unknown type: " + localType);
  }

  private static Map getTypeArguments(Class paramClass1, Class paramClass2, Map paramMap)
  {
    Object localObject;
    if (!isAssignable(paramClass1, paramClass2))
      localObject = null;
    while (true)
    {
      return localObject;
      if (paramClass1.isPrimitive())
      {
        if (paramClass2.isPrimitive())
          return new HashMap();
        paramClass1 = ClassUtils.primitiveToWrapper(paramClass1);
      }
      if (paramMap == null);
      for (localObject = new HashMap(); (paramClass1.getTypeParameters().length <= 0) && (!paramClass2.equals(paramClass1)); localObject = new HashMap(paramMap))
        return getTypeArguments(getClosestParentType(paramClass1, paramClass2), paramClass2, (Map)localObject);
    }
  }

  public static Map getTypeArguments(ParameterizedType paramParameterizedType)
  {
    return getTypeArguments(paramParameterizedType, getRawType(paramParameterizedType), null);
  }

  private static Map getTypeArguments(ParameterizedType paramParameterizedType, Class paramClass, Map paramMap)
  {
    Class localClass = getRawType(paramParameterizedType);
    Object localObject;
    if (!isAssignable(localClass, paramClass))
      localObject = null;
    do
    {
      return localObject;
      Type localType1 = paramParameterizedType.getOwnerType();
      if ((localType1 instanceof ParameterizedType))
      {
        ParameterizedType localParameterizedType = (ParameterizedType)localType1;
        localObject = getTypeArguments(localParameterizedType, getRawType(localParameterizedType), paramMap);
      }
      while (true)
      {
        Type[] arrayOfType = paramParameterizedType.getActualTypeArguments();
        TypeVariable[] arrayOfTypeVariable = localClass.getTypeParameters();
        for (int i = 0; i < arrayOfTypeVariable.length; i++)
        {
          Type localType2 = arrayOfType[i];
          TypeVariable localTypeVariable = arrayOfTypeVariable[i];
          if (((Map)localObject).containsKey(localType2))
            localType2 = (Type)((Map)localObject).get(localType2);
          ((Map)localObject).put(localTypeVariable, localType2);
        }
        if (paramMap == null)
          localObject = new HashMap();
        else
          localObject = new HashMap(paramMap);
      }
    }
    while (paramClass.equals(localClass));
    return getTypeArguments(getClosestParentType(localClass, paramClass), paramClass, (Map)localObject);
  }

  public static Map getTypeArguments(Type paramType, Class paramClass)
  {
    return getTypeArguments(paramType, paramClass, null);
  }

  private static Map getTypeArguments(Type paramType, Class paramClass, Map paramMap)
  {
    Type localType = paramType;
    while (true)
    {
      if ((localType instanceof Class))
        return getTypeArguments((Class)localType, paramClass, paramMap);
      if ((localType instanceof ParameterizedType))
        return getTypeArguments((ParameterizedType)localType, paramClass, paramMap);
      if (!(localType instanceof GenericArrayType))
        break;
      localType = ((GenericArrayType)localType).getGenericComponentType();
      if (paramClass.isArray())
        paramClass = paramClass.getComponentType();
    }
    if ((localType instanceof WildcardType))
    {
      Type[] arrayOfType2 = getImplicitUpperBounds((WildcardType)localType);
      int k = arrayOfType2.length;
      for (int m = 0; ; m++)
      {
        if (m >= k)
          break label119;
        localType = arrayOfType2[m];
        if (isAssignable(localType, paramClass))
          break;
      }
      label119: return null;
    }
    if ((localType instanceof TypeVariable))
    {
      Type[] arrayOfType1 = getImplicitBounds((TypeVariable)localType);
      int i = arrayOfType1.length;
      for (int j = 0; ; j++)
      {
        if (j >= i)
          break label172;
        localType = arrayOfType1[j];
        if (isAssignable(localType, paramClass))
          break;
      }
      label172: return null;
    }
    throw new IllegalStateException("found an unhandled type: " + localType);
  }

  public static boolean isArrayType(Type paramType)
  {
    return ((paramType instanceof GenericArrayType)) || (((paramType instanceof Class)) && (((Class)paramType).isArray()));
  }

  private static boolean isAssignable(Type paramType, Class paramClass)
  {
    for (Object localObject = paramType; ; localObject = getRawType((ParameterizedType)localObject))
    {
      if (localObject == null)
        return (paramClass == null) || (!paramClass.isPrimitive());
      if (paramClass == null)
        return false;
      if (paramClass.equals(localObject))
        return true;
      if ((localObject instanceof Class))
        return ClassUtils.isAssignable((Class)localObject, paramClass);
      if (!(localObject instanceof ParameterizedType))
        break;
    }
    if ((localObject instanceof TypeVariable))
    {
      Type[] arrayOfType = ((TypeVariable)localObject).getBounds();
      int i = arrayOfType.length;
      for (int j = 0; j < i; j++)
        if (isAssignable(arrayOfType[j], paramClass))
          return true;
      return false;
    }
    if ((localObject instanceof GenericArrayType))
      return (paramClass.equals(Object.class)) || ((paramClass.isArray()) && (isAssignable(((GenericArrayType)localObject).getGenericComponentType(), paramClass.getComponentType())));
    if ((localObject instanceof WildcardType))
      return false;
    throw new IllegalStateException("found an unhandled type: " + localObject);
  }

  private static boolean isAssignable(Type paramType, GenericArrayType paramGenericArrayType, Map paramMap)
  {
    if (paramType == null);
    Type localType;
    Class localClass;
    do
    {
      do
      {
        return true;
        if (paramGenericArrayType == null)
          return false;
      }
      while (paramGenericArrayType.equals(paramType));
      localType = paramGenericArrayType.getGenericComponentType();
      if (!(paramType instanceof Class))
        break;
      localClass = (Class)paramType;
    }
    while ((localClass.isArray()) && (isAssignable(localClass.getComponentType(), localType, paramMap)));
    return false;
    if ((paramType instanceof GenericArrayType))
      return isAssignable(((GenericArrayType)paramType).getGenericComponentType(), localType, paramMap);
    if ((paramType instanceof WildcardType))
    {
      Type[] arrayOfType2 = getImplicitUpperBounds((WildcardType)paramType);
      int k = arrayOfType2.length;
      for (int m = 0; ; m++)
      {
        if (m >= k)
          break label134;
        if (isAssignable(arrayOfType2[m], paramGenericArrayType))
          break;
      }
      label134: return false;
    }
    if ((paramType instanceof TypeVariable))
    {
      Type[] arrayOfType1 = getImplicitBounds((TypeVariable)paramType);
      int i = arrayOfType1.length;
      for (int j = 0; ; j++)
      {
        if (j >= i)
          break label185;
        if (isAssignable(arrayOfType1[j], paramGenericArrayType))
          break;
      }
      label185: return false;
    }
    if ((paramType instanceof ParameterizedType))
      return false;
    throw new IllegalStateException("found an unhandled type: " + paramType);
  }

  private static boolean isAssignable(Type paramType, ParameterizedType paramParameterizedType, Map paramMap)
  {
    if (paramType == null)
      return true;
    if (paramParameterizedType == null)
      return false;
    if (paramParameterizedType.equals(paramType))
      return true;
    Class localClass = getRawType(paramParameterizedType);
    Map localMap = getTypeArguments(paramType, localClass, null);
    if (localMap == null)
      return false;
    if (localMap.isEmpty())
      return true;
    Iterator localIterator = getTypeArguments(paramParameterizedType, localClass, paramMap).entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Type localType1 = (Type)localEntry.getValue();
      Type localType2 = (Type)localMap.get(localEntry.getKey());
      if ((localType2 != null) && (!localType1.equals(localType2)) && ((!(localType1 instanceof WildcardType)) || (!isAssignable(localType2, localType1, paramMap))))
        return false;
    }
    return true;
  }

  public static boolean isAssignable(Type paramType1, Type paramType2)
  {
    return isAssignable(paramType1, paramType2, null);
  }

  private static boolean isAssignable(Type paramType1, Type paramType2, Map paramMap)
  {
    if ((paramType2 == null) || ((paramType2 instanceof Class)))
      return isAssignable(paramType1, (Class)paramType2);
    if ((paramType2 instanceof ParameterizedType))
      return isAssignable(paramType1, (ParameterizedType)paramType2, paramMap);
    if ((paramType2 instanceof GenericArrayType))
      return isAssignable(paramType1, (GenericArrayType)paramType2, paramMap);
    if ((paramType2 instanceof WildcardType))
      return isAssignable(paramType1, (WildcardType)paramType2, paramMap);
    if ((paramType2 instanceof TypeVariable))
      return isAssignable(paramType1, (TypeVariable)paramType2, paramMap);
    throw new IllegalStateException("found an unhandled type: " + paramType2);
  }

  private static boolean isAssignable(Type paramType, TypeVariable paramTypeVariable, Map paramMap)
  {
    if (paramType == null)
      return true;
    if (paramTypeVariable == null)
      return false;
    if (paramTypeVariable.equals(paramType))
      return true;
    if ((paramType instanceof TypeVariable))
    {
      Type[] arrayOfType = getImplicitBounds((TypeVariable)paramType);
      int i = arrayOfType.length;
      for (int j = 0; j < i; j++)
        if (isAssignable(arrayOfType[j], paramTypeVariable, paramMap))
          return true;
    }
    if (((paramType instanceof Class)) || ((paramType instanceof ParameterizedType)) || ((paramType instanceof GenericArrayType)) || ((paramType instanceof WildcardType)))
      return false;
    throw new IllegalStateException("found an unhandled type: " + paramType);
  }

  private static boolean isAssignable(Type paramType, WildcardType paramWildcardType, Map paramMap)
  {
    if (paramType == null);
    while (true)
    {
      return true;
      if (paramWildcardType == null)
        return false;
      if (!paramWildcardType.equals(paramType))
      {
        Type[] arrayOfType1 = getImplicitUpperBounds(paramWildcardType);
        Type[] arrayOfType2 = getImplicitLowerBounds(paramWildcardType);
        if ((paramType instanceof WildcardType))
        {
          WildcardType localWildcardType = (WildcardType)paramType;
          Type[] arrayOfType3 = getImplicitUpperBounds(localWildcardType);
          Type[] arrayOfType4 = getImplicitLowerBounds(localWildcardType);
          int n = arrayOfType1.length;
          for (int i1 = 0; i1 < n; i1++)
          {
            Type localType2 = substituteTypeVariables(arrayOfType1[i1], paramMap);
            int i6 = arrayOfType3.length;
            for (int i7 = 0; i7 < i6; i7++)
              if (!isAssignable(arrayOfType3[i7], localType2, paramMap))
                return false;
          }
          int i2 = arrayOfType2.length;
          for (int i3 = 0; i3 < i2; i3++)
          {
            Type localType1 = substituteTypeVariables(arrayOfType2[i3], paramMap);
            int i4 = arrayOfType4.length;
            for (int i5 = 0; i5 < i4; i5++)
              if (!isAssignable(localType1, arrayOfType4[i5], paramMap))
                return false;
          }
        }
        else
        {
          int i = arrayOfType1.length;
          for (int j = 0; j < i; j++)
            if (!isAssignable(paramType, substituteTypeVariables(arrayOfType1[j], paramMap), paramMap))
              return false;
          int k = arrayOfType2.length;
          for (int m = 0; m < k; m++)
            if (!isAssignable(substituteTypeVariables(arrayOfType2[m], paramMap), paramType, paramMap))
              return false;
        }
      }
    }
  }

  public static boolean isInstance(Object paramObject, Type paramType)
  {
    if (paramType == null);
    do
    {
      return false;
      if (paramObject != null)
        break;
    }
    while (((paramType instanceof Class)) && (((Class)paramType).isPrimitive()));
    return true;
    return isAssignable(paramObject.getClass(), paramType, null);
  }

  private static void mapTypeVariablesToArguments(Class paramClass, ParameterizedType paramParameterizedType, Map paramMap)
  {
    Type localType1 = paramParameterizedType.getOwnerType();
    if ((localType1 instanceof ParameterizedType))
      mapTypeVariablesToArguments(paramClass, (ParameterizedType)localType1, paramMap);
    Type[] arrayOfType = paramParameterizedType.getActualTypeArguments();
    TypeVariable[] arrayOfTypeVariable = getRawType(paramParameterizedType).getTypeParameters();
    List localList = Arrays.asList(paramClass.getTypeParameters());
    for (int i = 0; i < arrayOfType.length; i++)
    {
      TypeVariable localTypeVariable = arrayOfTypeVariable[i];
      Type localType2 = arrayOfType[i];
      if ((localList.contains(localType2)) && (paramMap.containsKey(localTypeVariable)))
        paramMap.put((TypeVariable)localType2, paramMap.get(localTypeVariable));
    }
  }

  public static Type[] normalizeUpperBounds(Type[] paramArrayOfType)
  {
    if (paramArrayOfType.length < 2)
      return paramArrayOfType;
    HashSet localHashSet = new HashSet(paramArrayOfType.length);
    int i = paramArrayOfType.length;
    int j = 0;
    Type localType1;
    int m;
    if (j < i)
    {
      localType1 = paramArrayOfType[j];
      int k = paramArrayOfType.length;
      m = 0;
      label40: if (m >= k)
        break label119;
      Type localType2 = paramArrayOfType[m];
      if ((localType1 == localType2) || (!isAssignable(localType2, localType1, null)));
    }
    label119: for (int n = 1; ; n = 0)
    {
      if (n == 0)
        localHashSet.add(localType1);
      j++;
      break;
      m++;
      break label40;
      return (Type[])localHashSet.toArray(new Type[localHashSet.size()]);
    }
  }

  private static Type substituteTypeVariables(Type paramType, Map paramMap)
  {
    Type localType;
    if (((paramType instanceof TypeVariable)) && (paramMap != null))
    {
      localType = (Type)paramMap.get(paramType);
      if (localType == null)
        throw new IllegalArgumentException("missing assignment type for type variable " + paramType);
    }
    else
    {
      localType = paramType;
    }
    return localType;
  }

  public static boolean typesSatisfyVariables(Map paramMap)
  {
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      TypeVariable localTypeVariable = (TypeVariable)localEntry.getKey();
      Type localType = (Type)localEntry.getValue();
      Type[] arrayOfType = getImplicitBounds(localTypeVariable);
      int i = arrayOfType.length;
      for (int j = 0; j < i; j++)
        if (!isAssignable(localType, substituteTypeVariables(arrayOfType[j], paramMap), paramMap))
          return false;
    }
    return true;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.reflect.TypeUtils
 * JD-Core Version:    0.6.2
 */