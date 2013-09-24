package org.apache.commons.lang3.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

public class CallableBackgroundInitializer extends BackgroundInitializer
{
  private final Callable callable;

  public CallableBackgroundInitializer(Callable paramCallable)
  {
    checkCallable(paramCallable);
    this.callable = paramCallable;
  }

  public CallableBackgroundInitializer(Callable paramCallable, ExecutorService paramExecutorService)
  {
    super(paramExecutorService);
    checkCallable(paramCallable);
    this.callable = paramCallable;
  }

  private void checkCallable(Callable paramCallable)
  {
    if (paramCallable == null)
      throw new IllegalArgumentException("Callable must not be null!");
  }

  protected Object initialize()
  {
    return this.callable.call();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.concurrent.CallableBackgroundInitializer
 * JD-Core Version:    0.6.2
 */