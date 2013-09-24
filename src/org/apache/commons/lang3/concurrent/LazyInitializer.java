package org.apache.commons.lang3.concurrent;

public abstract class LazyInitializer
  implements ConcurrentInitializer
{
  private volatile Object object;

  public Object get()
  {
    Object localObject1 = this.object;
    if (localObject1 == null);
    try
    {
      localObject1 = this.object;
      if (localObject1 == null)
      {
        localObject1 = initialize();
        this.object = localObject1;
      }
      return localObject1;
    }
    finally
    {
    }
  }

  protected abstract Object initialize();
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.concurrent.LazyInitializer
 * JD-Core Version:    0.6.2
 */