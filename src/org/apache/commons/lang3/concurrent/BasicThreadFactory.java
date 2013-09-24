package org.apache.commons.lang3.concurrent;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

public class BasicThreadFactory
  implements ThreadFactory
{
  private final Boolean daemonFlag;
  private final String namingPattern;
  private final Integer priority;
  private final AtomicLong threadCounter;
  private final Thread.UncaughtExceptionHandler uncaughtExceptionHandler;
  private final ThreadFactory wrappedFactory;

  private BasicThreadFactory(BasicThreadFactory.Builder paramBuilder)
  {
    if (BasicThreadFactory.Builder.access$000(paramBuilder) == null);
    for (this.wrappedFactory = Executors.defaultThreadFactory(); ; this.wrappedFactory = BasicThreadFactory.Builder.access$000(paramBuilder))
    {
      this.namingPattern = BasicThreadFactory.Builder.access$100(paramBuilder);
      this.priority = BasicThreadFactory.Builder.access$200(paramBuilder);
      this.daemonFlag = BasicThreadFactory.Builder.access$300(paramBuilder);
      this.uncaughtExceptionHandler = BasicThreadFactory.Builder.access$400(paramBuilder);
      this.threadCounter = new AtomicLong();
      return;
    }
  }

  private void initializeThread(Thread paramThread)
  {
    if (getNamingPattern() != null)
    {
      Long localLong = Long.valueOf(this.threadCounter.incrementAndGet());
      paramThread.setName(String.format(getNamingPattern(), new Object[] { localLong }));
    }
    if (getUncaughtExceptionHandler() != null)
      paramThread.setUncaughtExceptionHandler(getUncaughtExceptionHandler());
    if (getPriority() != null)
      paramThread.setPriority(getPriority().intValue());
    if (getDaemonFlag() != null)
      paramThread.setDaemon(getDaemonFlag().booleanValue());
  }

  public final Boolean getDaemonFlag()
  {
    return this.daemonFlag;
  }

  public final String getNamingPattern()
  {
    return this.namingPattern;
  }

  public final Integer getPriority()
  {
    return this.priority;
  }

  public long getThreadCount()
  {
    return this.threadCounter.get();
  }

  public final Thread.UncaughtExceptionHandler getUncaughtExceptionHandler()
  {
    return this.uncaughtExceptionHandler;
  }

  public final ThreadFactory getWrappedFactory()
  {
    return this.wrappedFactory;
  }

  public Thread newThread(Runnable paramRunnable)
  {
    Thread localThread = getWrappedFactory().newThread(paramRunnable);
    initializeThread(localThread);
    return localThread;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.concurrent.BasicThreadFactory
 * JD-Core Version:    0.6.2
 */