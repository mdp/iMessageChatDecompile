package org.apache.commons.lang3;

import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeSet;
import org.apache.commons.lang3.exception.CloneFailedException;
import org.apache.commons.lang3.mutable.MutableInt;

public class ObjectUtils
{
  public static final ObjectUtils.Null NULL = new ObjectUtils.Null();

  public static Object clone(Object paramObject)
  {
    if ((paramObject instanceof Cloneable))
    {
      if (paramObject.getClass().isArray())
      {
        Class localClass = paramObject.getClass().getComponentType();
        if (!localClass.isPrimitive())
        {
          localObject2 = ((Object[])paramObject).clone();
          return localObject2;
        }
        int i = Array.getLength(paramObject);
        Object localObject2 = Array.newInstance(localClass, i);
        while (true)
        {
          int j = i - 1;
          if (i <= 0)
            break;
          Array.set(localObject2, j, Array.get(paramObject, j));
          i = j;
        }
      }
      try
      {
        Object localObject1 = paramObject.getClass().getMethod("clone", new Class[0]).invoke(paramObject, new Object[0]);
        return localObject1;
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        throw new CloneFailedException("Cloneable type " + paramObject.getClass().getName() + " has no clone method", localNoSuchMethodException);
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        throw new CloneFailedException("Cannot clone Cloneable type " + paramObject.getClass().getName(), localIllegalAccessException);
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        throw new CloneFailedException("Exception cloning Cloneable type " + paramObject.getClass().getName(), localInvocationTargetException.getCause());
      }
    }
    return null;
  }

  public static Object cloneIfPossible(Object paramObject)
  {
    Object localObject = clone(paramObject);
    if (localObject == null)
      return paramObject;
    return localObject;
  }

  public static int compare(Comparable paramComparable1, Comparable paramComparable2)
  {
    return compare(paramComparable1, paramComparable2, false);
  }

  public static int compare(Comparable paramComparable1, Comparable paramComparable2, boolean paramBoolean)
  {
    int i = 1;
    if (paramComparable1 == paramComparable2)
      i = 0;
    do
    {
      do
      {
        return i;
        if (paramComparable1 != null)
          break;
      }
      while (paramBoolean);
      return -1;
      if (paramComparable2 != null)
        break;
    }
    while (!paramBoolean);
    return -1;
    return paramComparable1.compareTo(paramComparable2);
  }

  public static Object defaultIfNull(Object paramObject1, Object paramObject2)
  {
    if (paramObject1 != null)
      return paramObject1;
    return paramObject2;
  }

  public static boolean equals(Object paramObject1, Object paramObject2)
  {
    if (paramObject1 == paramObject2)
      return true;
    if ((paramObject1 == null) || (paramObject2 == null))
      return false;
    return paramObject1.equals(paramObject2);
  }

  public static Object firstNonNull(Object[] paramArrayOfObject)
  {
    if (paramArrayOfObject != null)
    {
      int i = paramArrayOfObject.length;
      for (int j = 0; j < i; j++)
      {
        Object localObject = paramArrayOfObject[j];
        if (localObject != null)
          return localObject;
      }
    }
    return null;
  }

  public static int hashCode(Object paramObject)
  {
    if (paramObject == null)
      return 0;
    return paramObject.hashCode();
  }

  public static int hashCodeMulti(Object[] paramArrayOfObject)
  {
    int i = 1;
    if (paramArrayOfObject != null)
    {
      int j = paramArrayOfObject.length;
      int k = 0;
      while (k < j)
      {
        Object localObject = paramArrayOfObject[k];
        int m = i * 31 + hashCode(localObject);
        k++;
        i = m;
      }
    }
    return i;
  }

  public static String identityToString(Object paramObject)
  {
    if (paramObject == null)
      return null;
    StringBuffer localStringBuffer = new StringBuffer();
    identityToString(localStringBuffer, paramObject);
    return localStringBuffer.toString();
  }

  public static void identityToString(StringBuffer paramStringBuffer, Object paramObject)
  {
    if (paramObject == null)
      throw new NullPointerException("Cannot get the toString of a null identity");
    paramStringBuffer.append(paramObject.getClass().getName()).append('@').append(Integer.toHexString(System.identityHashCode(paramObject)));
  }

  public static Comparable max(Comparable[] paramArrayOfComparable)
  {
    Object localObject1 = null;
    int j;
    Object localObject2;
    if (paramArrayOfComparable != null)
    {
      int i = paramArrayOfComparable.length;
      j = 0;
      if (j < i)
      {
        localObject2 = paramArrayOfComparable[j];
        if (compare((Comparable)localObject2, (Comparable)localObject1, false) <= 0)
          break label42;
      }
    }
    while (true)
    {
      j++;
      localObject1 = localObject2;
      break;
      return localObject1;
      label42: localObject2 = localObject1;
    }
  }

  public static Comparable median(Comparable[] paramArrayOfComparable)
  {
    Validate.notEmpty(paramArrayOfComparable);
    Validate.noNullElements(paramArrayOfComparable);
    TreeSet localTreeSet = new TreeSet();
    Collections.addAll(localTreeSet, paramArrayOfComparable);
    return (Comparable)localTreeSet.toArray()[((-1 + localTreeSet.size()) / 2)];
  }

  public static Object median(Comparator paramComparator, Object[] paramArrayOfObject)
  {
    Validate.notEmpty(paramArrayOfObject, "null/empty items", new Object[0]);
    Validate.noNullElements(paramArrayOfObject);
    Validate.notNull(paramComparator, "null comparator", new Object[0]);
    TreeSet localTreeSet = new TreeSet(paramComparator);
    Collections.addAll(localTreeSet, paramArrayOfObject);
    return localTreeSet.toArray()[((-1 + localTreeSet.size()) / 2)];
  }

  public static Comparable min(Comparable[] paramArrayOfComparable)
  {
    Object localObject1 = null;
    int j;
    Object localObject2;
    if (paramArrayOfComparable != null)
    {
      int i = paramArrayOfComparable.length;
      j = 0;
      if (j < i)
      {
        localObject2 = paramArrayOfComparable[j];
        if (compare((Comparable)localObject2, (Comparable)localObject1, true) >= 0)
          break label42;
      }
    }
    while (true)
    {
      j++;
      localObject1 = localObject2;
      break;
      return localObject1;
      label42: localObject2 = localObject1;
    }
  }

  public static Object mode(Object[] paramArrayOfObject)
  {
    int i = 0;
    Object localObject1;
    Object localObject2;
    int n;
    if (ArrayUtils.isNotEmpty(paramArrayOfObject))
    {
      HashMap localHashMap = new HashMap(paramArrayOfObject.length);
      int j = paramArrayOfObject.length;
      int k = 0;
      if (k < j)
      {
        Object localObject3 = paramArrayOfObject[k];
        MutableInt localMutableInt = (MutableInt)localHashMap.get(localObject3);
        if (localMutableInt == null)
          localHashMap.put(localObject3, new MutableInt(1));
        while (true)
        {
          k++;
          break;
          localMutableInt.increment();
        }
      }
      Iterator localIterator = localHashMap.entrySet().iterator();
      localObject1 = null;
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        int m = ((MutableInt)localEntry.getValue()).intValue();
        if (m == i)
        {
          localObject1 = null;
        }
        else
        {
          if (m <= i)
            break label180;
          localObject2 = localEntry.getKey();
          n = m;
        }
      }
    }
    while (true)
    {
      i = n;
      localObject1 = localObject2;
      break;
      localObject1 = null;
      return localObject1;
      label180: n = i;
      localObject2 = localObject1;
    }
  }

  public static boolean notEqual(Object paramObject1, Object paramObject2)
  {
    return !equals(paramObject1, paramObject2);
  }

  public static String toString(Object paramObject)
  {
    if (paramObject == null)
      return "";
    return paramObject.toString();
  }

  public static String toString(Object paramObject, String paramString)
  {
    if (paramObject == null)
      return paramString;
    return paramObject.toString();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.ObjectUtils
 * JD-Core Version:    0.6.2
 */