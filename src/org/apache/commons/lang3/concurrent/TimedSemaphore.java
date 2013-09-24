package org.apache.commons.lang3.concurrent;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class TimedSemaphore
{
  public static final int NO_LIMIT = 0;
  private static final int THREAD_POOL_SIZE = 1;
  private int acquireCount;
  private final ScheduledExecutorService executorService;
  private int lastCallsPerPeriod;
  private int limit;
  private final boolean ownExecutor;
  private final long period;
  private long periodCount;
  private boolean shutdown;
  private ScheduledFuture task;
  private long totalAcquireCount;
  private final TimeUnit unit;

  public TimedSemaphore(long paramLong, TimeUnit paramTimeUnit, int paramInt)
  {
    this(null, paramLong, paramTimeUnit, paramInt);
  }

  public TimedSemaphore(ScheduledExecutorService paramScheduledExecutorService, long paramLong, TimeUnit paramTimeUnit, int paramInt)
  {
    if (paramLong <= 0L)
      throw new IllegalArgumentException("Time period must be greater 0!");
    this.period = paramLong;
    this.unit = paramTimeUnit;
    if (paramScheduledExecutorService != null)
      this.executorService = paramScheduledExecutorService;
    for (this.ownExecutor = false; ; this.ownExecutor = true)
    {
      setLimit(paramInt);
      return;
      ScheduledThreadPoolExecutor localScheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
      localScheduledThreadPoolExecutor.setContinueExistingPeriodicTasksAfterShutdownPolicy(false);
      localScheduledThreadPoolExecutor.setExecuteExistingDelayedTasksAfterShutdownPolicy(false);
      this.executorService = localScheduledThreadPoolExecutor;
    }
  }

  public void acquire()
  {
    try
    {
      if (isShutdown())
        throw new IllegalStateException("TimedSemaphore is shut down!");
    }
    finally
    {
    }
    if (this.task == null)
      this.task = startTimer();
    if (getLimit() > 0)
      if (this.acquireCount < getLimit())
        break label93;
    while (true)
    {
      if (i == 0)
        wait();
      while (true)
      {
        if (i == 0)
          break label91;
        return;
        i = 0;
        break;
        this.acquireCount = (1 + this.acquireCount);
      }
      label91: break;
      label93: int i = 1;
    }
  }

  void endOfPeriod()
  {
    try
    {
      this.lastCallsPerPeriod = this.acquireCount;
      this.totalAcquireCount += this.acquireCount;
      this.periodCount = (1L + this.periodCount);
      this.acquireCount = 0;
      notifyAll();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public int getAcquireCount()
  {
    try
    {
      int i = this.acquireCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public int getAvailablePermits()
  {
    try
    {
      int i = getLimit();
      int j = getAcquireCount();
      int k = i - j;
      return k;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public double getAverageCallsPerPeriod()
  {
    try
    {
      long l1 = this.periodCount;
      if (l1 == 0L);
      double d1;
      long l2;
      for (double d2 = 0.0D; ; d2 = d1 / l2)
      {
        return d2;
        d1 = this.totalAcquireCount;
        l2 = this.periodCount;
      }
    }
    finally
    {
    }
  }

  protected ScheduledExecutorService getExecutorService()
  {
    return this.executorService;
  }

  public int getLastAcquiresPerPeriod()
  {
    try
    {
      int i = this.lastCallsPerPeriod;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int getLimit()
  {
    try
    {
      int i = this.limit;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public long getPeriod()
  {
    return this.period;
  }

  public TimeUnit getUnit()
  {
    return this.unit;
  }

  public boolean isShutdown()
  {
    try
    {
      boolean bool = this.shutdown;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void setLimit(int paramInt)
  {
    try
    {
      this.limit = paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void shutdown()
  {
    try
    {
      if (!this.shutdown)
      {
        if (this.ownExecutor)
          getExecutorService().shutdownNow();
        if (this.task != null)
          this.task.cancel(false);
        this.shutdown = true;
      }
      return;
    }
    finally
    {
    }
  }

  protected ScheduledFuture startTimer()
  {
    return getExecutorService().scheduleAtFixedRate(new TimedSemaphore.1(this), getPeriod(), getPeriod(), getUnit());
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.concurrent.TimedSemaphore
 * JD-Core Version:    0.6.2
 */