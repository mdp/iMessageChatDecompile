package org.apache.commons.lang3.concurrent;

import java.util.concurrent.atomic.AtomicReference;

public abstract class AtomicSafeInitializer
  implements ConcurrentInitializer
{
  private final AtomicReference factory = new AtomicReference();
  private final AtomicReference reference = new AtomicReference();

  public final Object get()
  {
    Object localObject;
    while (true)
    {
      localObject = this.reference.get();
      if (localObject != null)
        break;
      if (this.factory.compareAndSet(null, this))
        this.reference.set(initialize());
    }
    return localObject;
  }

  protected abstract Object initialize();
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.concurrent.AtomicSafeInitializer
 * JD-Core Version:    0.6.2
 */