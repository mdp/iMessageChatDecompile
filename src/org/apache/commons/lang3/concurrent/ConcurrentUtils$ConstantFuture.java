package org.apache.commons.lang3.concurrent;

import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

final class ConcurrentUtils$ConstantFuture
  implements Future
{
  private final Object value;

  ConcurrentUtils$ConstantFuture(Object paramObject)
  {
    this.value = paramObject;
  }

  public final boolean cancel(boolean paramBoolean)
  {
    return false;
  }

  public final Object get()
  {
    return this.value;
  }

  public final Object get(long paramLong, TimeUnit paramTimeUnit)
  {
    return this.value;
  }

  public final boolean isCancelled()
  {
    return false;
  }

  public final boolean isDone()
  {
    return true;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.concurrent.ConcurrentUtils.ConstantFuture
 * JD-Core Version:    0.6.2
 */