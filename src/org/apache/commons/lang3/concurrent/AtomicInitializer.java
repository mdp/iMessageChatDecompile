package org.apache.commons.lang3.concurrent;

import java.util.concurrent.atomic.AtomicReference;

public abstract class AtomicInitializer
  implements ConcurrentInitializer
{
  private final AtomicReference reference = new AtomicReference();

  public Object get()
  {
    Object localObject = this.reference.get();
    if (localObject == null)
    {
      localObject = initialize();
      if (!this.reference.compareAndSet(null, localObject))
        localObject = this.reference.get();
    }
    return localObject;
  }

  protected abstract Object initialize();
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.concurrent.AtomicInitializer
 * JD-Core Version:    0.6.2
 */