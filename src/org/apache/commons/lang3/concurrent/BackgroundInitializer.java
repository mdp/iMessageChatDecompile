package org.apache.commons.lang3.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

public abstract class BackgroundInitializer
  implements ConcurrentInitializer
{
  private ExecutorService executor;
  private ExecutorService externalExecutor;
  private Future future;

  protected BackgroundInitializer()
  {
    this(null);
  }

  protected BackgroundInitializer(ExecutorService paramExecutorService)
  {
    setExternalExecutor(paramExecutorService);
  }

  private ExecutorService createExecutor()
  {
    return Executors.newFixedThreadPool(getTaskCount());
  }

  private Callable createTask(ExecutorService paramExecutorService)
  {
    return new BackgroundInitializer.InitializationTask(this, paramExecutorService);
  }

  public Object get()
  {
    try
    {
      Object localObject = getFuture().get();
      return localObject;
    }
    catch (ExecutionException localExecutionException)
    {
      ConcurrentUtils.handleCause(localExecutionException);
      return null;
    }
    catch (InterruptedException localInterruptedException)
    {
      Thread.currentThread().interrupt();
      throw new ConcurrentException(localInterruptedException);
    }
  }

  protected final ExecutorService getActiveExecutor()
  {
    try
    {
      ExecutorService localExecutorService = this.executor;
      return localExecutorService;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final ExecutorService getExternalExecutor()
  {
    try
    {
      ExecutorService localExecutorService = this.externalExecutor;
      return localExecutorService;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public Future getFuture()
  {
    try
    {
      if (this.future == null)
        throw new IllegalStateException("start() must be called first!");
    }
    finally
    {
    }
    Future localFuture = this.future;
    return localFuture;
  }

  protected int getTaskCount()
  {
    return 1;
  }

  protected abstract Object initialize();

  public boolean isStarted()
  {
    try
    {
      Future localFuture = this.future;
      if (localFuture != null)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  public final void setExternalExecutor(ExecutorService paramExecutorService)
  {
    try
    {
      if (isStarted())
        throw new IllegalStateException("Cannot set ExecutorService after start()!");
    }
    finally
    {
    }
    this.externalExecutor = paramExecutorService;
  }

  public boolean start()
  {
    try
    {
      ExecutorService localExecutorService;
      if (!isStarted())
      {
        this.executor = getExternalExecutor();
        if (this.executor == null)
        {
          localExecutorService = createExecutor();
          this.executor = localExecutorService;
          this.future = this.executor.submit(createTask(localExecutorService));
        }
      }
      for (boolean bool = true; ; bool = false)
      {
        return bool;
        localExecutorService = null;
        break;
      }
    }
    finally
    {
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.concurrent.BackgroundInitializer
 * JD-Core Version:    0.6.2
 */