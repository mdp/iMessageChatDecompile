package org.apache.commons.lang3;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Pattern;

public class Validate
{
  private static final String DEFAULT_EXCLUSIVE_BETWEEN_EX_MESSAGE = "The value %s is not in the specified exclusive range of %s to %s";
  private static final String DEFAULT_INCLUSIVE_BETWEEN_EX_MESSAGE = "The value %s is not in the specified inclusive range of %s to %s";
  private static final String DEFAULT_IS_ASSIGNABLE_EX_MESSAGE = "Cannot assign a %s to a %s";
  private static final String DEFAULT_IS_INSTANCE_OF_EX_MESSAGE = "Expected type: %s, actual: %s";
  private static final String DEFAULT_IS_NULL_EX_MESSAGE = "The validated object is null";
  private static final String DEFAULT_IS_TRUE_EX_MESSAGE = "The validated expression is false";
  private static final String DEFAULT_MATCHES_PATTERN_EX = "The string %s does not match the pattern %s";
  private static final String DEFAULT_NOT_BLANK_EX_MESSAGE = "The validated character sequence is blank";
  private static final String DEFAULT_NOT_EMPTY_ARRAY_EX_MESSAGE = "The validated array is empty";
  private static final String DEFAULT_NOT_EMPTY_CHAR_SEQUENCE_EX_MESSAGE = "The validated character sequence is empty";
  private static final String DEFAULT_NOT_EMPTY_COLLECTION_EX_MESSAGE = "The validated collection is empty";
  private static final String DEFAULT_NOT_EMPTY_MAP_EX_MESSAGE = "The validated map is empty";
  private static final String DEFAULT_NO_NULL_ELEMENTS_ARRAY_EX_MESSAGE = "The validated array contains null element at index: %d";
  private static final String DEFAULT_NO_NULL_ELEMENTS_COLLECTION_EX_MESSAGE = "The validated collection contains null element at index: %d";
  private static final String DEFAULT_VALID_INDEX_ARRAY_EX_MESSAGE = "The validated array index is invalid: %d";
  private static final String DEFAULT_VALID_INDEX_CHAR_SEQUENCE_EX_MESSAGE = "The validated character sequence index is invalid: %d";
  private static final String DEFAULT_VALID_INDEX_COLLECTION_EX_MESSAGE = "The validated collection index is invalid: %d";
  private static final String DEFAULT_VALID_STATE_EX_MESSAGE = "The validated state is false";

  public static void exclusiveBetween(Object paramObject1, Object paramObject2, Comparable paramComparable)
  {
    if ((paramComparable.compareTo(paramObject1) <= 0) || (paramComparable.compareTo(paramObject2) >= 0))
      throw new IllegalArgumentException(String.format("The value %s is not in the specified exclusive range of %s to %s", new Object[] { paramComparable, paramObject1, paramObject2 }));
  }

  public static void exclusiveBetween(Object paramObject1, Object paramObject2, Comparable paramComparable, String paramString, Object[] paramArrayOfObject)
  {
    if ((paramComparable.compareTo(paramObject1) <= 0) || (paramComparable.compareTo(paramObject2) >= 0))
      throw new IllegalArgumentException(String.format(paramString, paramArrayOfObject));
  }

  public static void inclusiveBetween(Object paramObject1, Object paramObject2, Comparable paramComparable)
  {
    if ((paramComparable.compareTo(paramObject1) < 0) || (paramComparable.compareTo(paramObject2) > 0))
      throw new IllegalArgumentException(String.format("The value %s is not in the specified inclusive range of %s to %s", new Object[] { paramComparable, paramObject1, paramObject2 }));
  }

  public static void inclusiveBetween(Object paramObject1, Object paramObject2, Comparable paramComparable, String paramString, Object[] paramArrayOfObject)
  {
    if ((paramComparable.compareTo(paramObject1) < 0) || (paramComparable.compareTo(paramObject2) > 0))
      throw new IllegalArgumentException(String.format(paramString, paramArrayOfObject));
  }

  public static void isAssignableFrom(Class paramClass1, Class paramClass2)
  {
    if (!paramClass1.isAssignableFrom(paramClass2))
    {
      Object[] arrayOfObject = new Object[2];
      if (paramClass2 == null);
      for (String str = "null"; ; str = paramClass2.getName())
      {
        arrayOfObject[0] = str;
        arrayOfObject[1] = paramClass1.getName();
        throw new IllegalArgumentException(String.format("Cannot assign a %s to a %s", arrayOfObject));
      }
    }
  }

  public static void isAssignableFrom(Class paramClass1, Class paramClass2, String paramString, Object[] paramArrayOfObject)
  {
    if (!paramClass1.isAssignableFrom(paramClass2))
      throw new IllegalArgumentException(String.format(paramString, paramArrayOfObject));
  }

  public static void isInstanceOf(Class paramClass, Object paramObject)
  {
    if (!paramClass.isInstance(paramObject))
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = paramClass.getName();
      if (paramObject == null);
      for (String str = "null"; ; str = paramObject.getClass().getName())
      {
        arrayOfObject[1] = str;
        throw new IllegalArgumentException(String.format("Expected type: %s, actual: %s", arrayOfObject));
      }
    }
  }

  public static void isInstanceOf(Class paramClass, Object paramObject, String paramString, Object[] paramArrayOfObject)
  {
    if (!paramClass.isInstance(paramObject))
      throw new IllegalArgumentException(String.format(paramString, paramArrayOfObject));
  }

  public static void isTrue(boolean paramBoolean)
  {
    if (!paramBoolean)
      throw new IllegalArgumentException("The validated expression is false");
  }

  public static void isTrue(boolean paramBoolean, String paramString, double paramDouble)
  {
    if (!paramBoolean)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Double.valueOf(paramDouble);
      throw new IllegalArgumentException(String.format(paramString, arrayOfObject));
    }
  }

  public static void isTrue(boolean paramBoolean, String paramString, long paramLong)
  {
    if (!paramBoolean)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(paramLong);
      throw new IllegalArgumentException(String.format(paramString, arrayOfObject));
    }
  }

  public static void isTrue(boolean paramBoolean, String paramString, Object[] paramArrayOfObject)
  {
    if (!paramBoolean)
      throw new IllegalArgumentException(String.format(paramString, paramArrayOfObject));
  }

  public static void matchesPattern(CharSequence paramCharSequence, String paramString)
  {
    if (!Pattern.matches(paramString, paramCharSequence))
      throw new IllegalArgumentException(String.format("The string %s does not match the pattern %s", new Object[] { paramCharSequence, paramString }));
  }

  public static void matchesPattern(CharSequence paramCharSequence, String paramString1, String paramString2, Object[] paramArrayOfObject)
  {
    if (!Pattern.matches(paramString1, paramCharSequence))
      throw new IllegalArgumentException(String.format(paramString2, paramArrayOfObject));
  }

  public static Iterable noNullElements(Iterable paramIterable)
  {
    return noNullElements(paramIterable, "The validated collection contains null element at index: %d", new Object[0]);
  }

  public static Iterable noNullElements(Iterable paramIterable, String paramString, Object[] paramArrayOfObject)
  {
    notNull(paramIterable);
    Iterator localIterator = paramIterable.iterator();
    for (int i = 0; localIterator.hasNext(); i++)
      if (localIterator.next() == null)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(i);
        throw new IllegalArgumentException(String.format(paramString, ArrayUtils.addAll(paramArrayOfObject, arrayOfObject)));
      }
    return paramIterable;
  }

  public static Object[] noNullElements(Object[] paramArrayOfObject)
  {
    return noNullElements(paramArrayOfObject, "The validated array contains null element at index: %d", new Object[0]);
  }

  public static Object[] noNullElements(Object[] paramArrayOfObject1, String paramString, Object[] paramArrayOfObject2)
  {
    notNull(paramArrayOfObject1);
    for (int i = 0; i < paramArrayOfObject1.length; i++)
      if (paramArrayOfObject1[i] == null)
        throw new IllegalArgumentException(String.format(paramString, ArrayUtils.add(paramArrayOfObject2, Integer.valueOf(i))));
    return paramArrayOfObject1;
  }

  public static CharSequence notBlank(CharSequence paramCharSequence)
  {
    return notBlank(paramCharSequence, "The validated character sequence is blank", new Object[0]);
  }

  public static CharSequence notBlank(CharSequence paramCharSequence, String paramString, Object[] paramArrayOfObject)
  {
    if (paramCharSequence == null)
      throw new NullPointerException(String.format(paramString, paramArrayOfObject));
    if (StringUtils.isBlank(paramCharSequence))
      throw new IllegalArgumentException(String.format(paramString, paramArrayOfObject));
    return paramCharSequence;
  }

  public static CharSequence notEmpty(CharSequence paramCharSequence)
  {
    return notEmpty(paramCharSequence, "The validated character sequence is empty", new Object[0]);
  }

  public static CharSequence notEmpty(CharSequence paramCharSequence, String paramString, Object[] paramArrayOfObject)
  {
    if (paramCharSequence == null)
      throw new NullPointerException(String.format(paramString, paramArrayOfObject));
    if (paramCharSequence.length() == 0)
      throw new IllegalArgumentException(String.format(paramString, paramArrayOfObject));
    return paramCharSequence;
  }

  public static Collection notEmpty(Collection paramCollection)
  {
    return notEmpty(paramCollection, "The validated collection is empty", new Object[0]);
  }

  public static Collection notEmpty(Collection paramCollection, String paramString, Object[] paramArrayOfObject)
  {
    if (paramCollection == null)
      throw new NullPointerException(String.format(paramString, paramArrayOfObject));
    if (paramCollection.isEmpty())
      throw new IllegalArgumentException(String.format(paramString, paramArrayOfObject));
    return paramCollection;
  }

  public static Map notEmpty(Map paramMap)
  {
    return notEmpty(paramMap, "The validated map is empty", new Object[0]);
  }

  public static Map notEmpty(Map paramMap, String paramString, Object[] paramArrayOfObject)
  {
    if (paramMap == null)
      throw new NullPointerException(String.format(paramString, paramArrayOfObject));
    if (paramMap.isEmpty())
      throw new IllegalArgumentException(String.format(paramString, paramArrayOfObject));
    return paramMap;
  }

  public static Object[] notEmpty(Object[] paramArrayOfObject)
  {
    return notEmpty(paramArrayOfObject, "The validated array is empty", new Object[0]);
  }

  public static Object[] notEmpty(Object[] paramArrayOfObject1, String paramString, Object[] paramArrayOfObject2)
  {
    if (paramArrayOfObject1 == null)
      throw new NullPointerException(String.format(paramString, paramArrayOfObject2));
    if (paramArrayOfObject1.length == 0)
      throw new IllegalArgumentException(String.format(paramString, paramArrayOfObject2));
    return paramArrayOfObject1;
  }

  public static Object notNull(Object paramObject)
  {
    return notNull(paramObject, "The validated object is null", new Object[0]);
  }

  public static Object notNull(Object paramObject, String paramString, Object[] paramArrayOfObject)
  {
    if (paramObject == null)
      throw new NullPointerException(String.format(paramString, paramArrayOfObject));
    return paramObject;
  }

  public static CharSequence validIndex(CharSequence paramCharSequence, int paramInt)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    return validIndex(paramCharSequence, paramInt, "The validated character sequence index is invalid: %d", arrayOfObject);
  }

  public static CharSequence validIndex(CharSequence paramCharSequence, int paramInt, String paramString, Object[] paramArrayOfObject)
  {
    notNull(paramCharSequence);
    if ((paramInt < 0) || (paramInt >= paramCharSequence.length()))
      throw new IndexOutOfBoundsException(String.format(paramString, paramArrayOfObject));
    return paramCharSequence;
  }

  public static Collection validIndex(Collection paramCollection, int paramInt)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    return validIndex(paramCollection, paramInt, "The validated collection index is invalid: %d", arrayOfObject);
  }

  public static Collection validIndex(Collection paramCollection, int paramInt, String paramString, Object[] paramArrayOfObject)
  {
    notNull(paramCollection);
    if ((paramInt < 0) || (paramInt >= paramCollection.size()))
      throw new IndexOutOfBoundsException(String.format(paramString, paramArrayOfObject));
    return paramCollection;
  }

  public static Object[] validIndex(Object[] paramArrayOfObject, int paramInt)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    return validIndex(paramArrayOfObject, paramInt, "The validated array index is invalid: %d", arrayOfObject);
  }

  public static Object[] validIndex(Object[] paramArrayOfObject1, int paramInt, String paramString, Object[] paramArrayOfObject2)
  {
    notNull(paramArrayOfObject1);
    if ((paramInt < 0) || (paramInt >= paramArrayOfObject1.length))
      throw new IndexOutOfBoundsException(String.format(paramString, paramArrayOfObject2));
    return paramArrayOfObject1;
  }

  public static void validState(boolean paramBoolean)
  {
    if (!paramBoolean)
      throw new IllegalStateException("The validated state is false");
  }

  public static void validState(boolean paramBoolean, String paramString, Object[] paramArrayOfObject)
  {
    if (!paramBoolean)
      throw new IllegalStateException(String.format(paramString, paramArrayOfObject));
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.Validate
 * JD-Core Version:    0.6.2
 */