package org.apache.commons.lang3.concurrent;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ExecutorService;

public class MultiBackgroundInitializer extends BackgroundInitializer
{
  private final Map childInitializers = new HashMap();

  public MultiBackgroundInitializer()
  {
  }

  public MultiBackgroundInitializer(ExecutorService paramExecutorService)
  {
    super(paramExecutorService);
  }

  public void addInitializer(String paramString, BackgroundInitializer paramBackgroundInitializer)
  {
    if (paramString == null)
      throw new IllegalArgumentException("Name of child initializer must not be null!");
    if (paramBackgroundInitializer == null)
      throw new IllegalArgumentException("Child initializer must not be null!");
    try
    {
      if (isStarted())
        throw new IllegalStateException("addInitializer() must not be called after start()!");
    }
    finally
    {
    }
    this.childInitializers.put(paramString, paramBackgroundInitializer);
  }

  protected int getTaskCount()
  {
    Iterator localIterator = this.childInitializers.values().iterator();
    int i = 1;
    while (localIterator.hasNext())
      i += ((BackgroundInitializer)localIterator.next()).getTaskCount();
    return i;
  }

  protected MultiBackgroundInitializer.MultiBackgroundInitializerResults initialize()
  {
    HashMap localHashMap1;
    HashMap localHashMap2;
    try
    {
      localHashMap1 = new HashMap(this.childInitializers);
      ExecutorService localExecutorService = getActiveExecutor();
      Iterator localIterator1 = localHashMap1.values().iterator();
      if (localIterator1.hasNext())
      {
        BackgroundInitializer localBackgroundInitializer = (BackgroundInitializer)localIterator1.next();
        if (localBackgroundInitializer.getExternalExecutor() == null)
          localBackgroundInitializer.setExternalExecutor(localExecutorService);
        localBackgroundInitializer.start();
      }
    }
    finally
    {
    }
    HashMap localHashMap3 = new HashMap();
    Iterator localIterator2 = localHashMap1.entrySet().iterator();
    while (localIterator2.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator2.next();
      try
      {
        localHashMap2.put(localEntry.getKey(), ((BackgroundInitializer)localEntry.getValue()).get());
      }
      catch (ConcurrentException localConcurrentException)
      {
        localHashMap3.put(localEntry.getKey(), localConcurrentException);
      }
    }
    return new MultiBackgroundInitializer.MultiBackgroundInitializerResults(localHashMap1, localHashMap2, localHashMap3, null);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.concurrent.MultiBackgroundInitializer
 * JD-Core Version:    0.6.2
 */