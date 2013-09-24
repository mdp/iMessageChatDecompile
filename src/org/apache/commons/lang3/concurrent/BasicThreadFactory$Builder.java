package org.apache.commons.lang3.concurrent;

import java.util.concurrent.ThreadFactory;
import org.apache.commons.lang3.builder.Builder;

public class BasicThreadFactory$Builder
  implements Builder
{
  private Boolean daemonFlag;
  private Thread.UncaughtExceptionHandler exceptionHandler;
  private String namingPattern;
  private Integer priority;
  private ThreadFactory wrappedFactory;

  public BasicThreadFactory build()
  {
    BasicThreadFactory localBasicThreadFactory = new BasicThreadFactory(this, null);
    reset();
    return localBasicThreadFactory;
  }

  public Builder daemon(boolean paramBoolean)
  {
    this.daemonFlag = Boolean.valueOf(paramBoolean);
    return this;
  }

  public Builder namingPattern(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException("Naming pattern must not be null!");
    this.namingPattern = paramString;
    return this;
  }

  public Builder priority(int paramInt)
  {
    this.priority = Integer.valueOf(paramInt);
    return this;
  }

  public void reset()
  {
    this.wrappedFactory = null;
    this.exceptionHandler = null;
    this.namingPattern = null;
    this.priority = null;
    this.daemonFlag = null;
  }

  public Builder uncaughtExceptionHandler(Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler)
  {
    if (paramUncaughtExceptionHandler == null)
      throw new NullPointerException("Uncaught exception handler must not be null!");
    this.exceptionHandler = paramUncaughtExceptionHandler;
    return this;
  }

  public Builder wrappedFactory(ThreadFactory paramThreadFactory)
  {
    if (paramThreadFactory == null)
      throw new NullPointerException("Wrapped ThreadFactory must not be null!");
    this.wrappedFactory = paramThreadFactory;
    return this;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.concurrent.BasicThreadFactory.Builder
 * JD-Core Version:    0.6.2
 */