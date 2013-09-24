package org.apache.commons.lang3.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

class BackgroundInitializer$InitializationTask
  implements Callable
{
  private final ExecutorService execFinally;

  public BackgroundInitializer$InitializationTask(BackgroundInitializer paramBackgroundInitializer, ExecutorService paramExecutorService)
  {
    this.execFinally = paramExecutorService;
  }

  public Object call()
  {
    try
    {
      Object localObject2 = this.this$0.initialize();
      return localObject2;
    }
    finally
    {
      if (this.execFinally != null)
        this.execFinally.shutdown();
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.concurrent.BackgroundInitializer.InitializationTask
 * JD-Core Version:    0.6.2
 */