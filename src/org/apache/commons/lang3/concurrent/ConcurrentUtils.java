package org.apache.commons.lang3.concurrent;

import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

public class ConcurrentUtils
{
  static Throwable checkedException(Throwable paramThrowable)
  {
    if ((paramThrowable != null) && (!(paramThrowable instanceof RuntimeException)) && (!(paramThrowable instanceof Error)))
      return paramThrowable;
    throw new IllegalArgumentException("Not a checked exception: " + paramThrowable);
  }

  public static Future constantFuture(Object paramObject)
  {
    return new ConcurrentUtils.ConstantFuture(paramObject);
  }

  public static Object createIfAbsent(ConcurrentMap paramConcurrentMap, Object paramObject, ConcurrentInitializer paramConcurrentInitializer)
  {
    Object localObject;
    if ((paramConcurrentMap == null) || (paramConcurrentInitializer == null))
      localObject = null;
    do
    {
      return localObject;
      localObject = paramConcurrentMap.get(paramObject);
    }
    while (localObject != null);
    return putIfAbsent(paramConcurrentMap, paramObject, paramConcurrentInitializer.get());
  }

  public static Object createIfAbsentUnchecked(ConcurrentMap paramConcurrentMap, Object paramObject, ConcurrentInitializer paramConcurrentInitializer)
  {
    try
    {
      Object localObject = createIfAbsent(paramConcurrentMap, paramObject, paramConcurrentInitializer);
      return localObject;
    }
    catch (ConcurrentException localConcurrentException)
    {
      throw new ConcurrentRuntimeException(localConcurrentException.getCause());
    }
  }

  public static ConcurrentException extractCause(ExecutionException paramExecutionException)
  {
    if ((paramExecutionException == null) || (paramExecutionException.getCause() == null))
      return null;
    throwCause(paramExecutionException);
    return new ConcurrentException(paramExecutionException.getMessage(), paramExecutionException.getCause());
  }

  public static ConcurrentRuntimeException extractCauseUnchecked(ExecutionException paramExecutionException)
  {
    if ((paramExecutionException == null) || (paramExecutionException.getCause() == null))
      return null;
    throwCause(paramExecutionException);
    return new ConcurrentRuntimeException(paramExecutionException.getMessage(), paramExecutionException.getCause());
  }

  public static void handleCause(ExecutionException paramExecutionException)
  {
    ConcurrentException localConcurrentException = extractCause(paramExecutionException);
    if (localConcurrentException != null)
      throw localConcurrentException;
  }

  public static void handleCauseUnchecked(ExecutionException paramExecutionException)
  {
    ConcurrentRuntimeException localConcurrentRuntimeException = extractCauseUnchecked(paramExecutionException);
    if (localConcurrentRuntimeException != null)
      throw localConcurrentRuntimeException;
  }

  public static Object initialize(ConcurrentInitializer paramConcurrentInitializer)
  {
    if (paramConcurrentInitializer != null)
      return paramConcurrentInitializer.get();
    return null;
  }

  public static Object initializeUnchecked(ConcurrentInitializer paramConcurrentInitializer)
  {
    try
    {
      Object localObject = initialize(paramConcurrentInitializer);
      return localObject;
    }
    catch (ConcurrentException localConcurrentException)
    {
      throw new ConcurrentRuntimeException(localConcurrentException.getCause());
    }
  }

  public static Object putIfAbsent(ConcurrentMap paramConcurrentMap, Object paramObject1, Object paramObject2)
  {
    if (paramConcurrentMap == null)
      paramObject2 = null;
    Object localObject;
    do
    {
      return paramObject2;
      localObject = paramConcurrentMap.putIfAbsent(paramObject1, paramObject2);
    }
    while (localObject == null);
    return localObject;
  }

  private static void throwCause(ExecutionException paramExecutionException)
  {
    if ((paramExecutionException.getCause() instanceof RuntimeException))
      throw ((RuntimeException)paramExecutionException.getCause());
    if ((paramExecutionException.getCause() instanceof Error))
      throw ((Error)paramExecutionException.getCause());
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.concurrent.ConcurrentUtils
 * JD-Core Version:    0.6.2
 */