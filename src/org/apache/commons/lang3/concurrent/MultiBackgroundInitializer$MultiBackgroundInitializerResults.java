package org.apache.commons.lang3.concurrent;

import java.util.Collections;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

public class MultiBackgroundInitializer$MultiBackgroundInitializerResults
{
  private final Map exceptions;
  private final Map initializers;
  private final Map resultObjects;

  private MultiBackgroundInitializer$MultiBackgroundInitializerResults(Map paramMap1, Map paramMap2, Map paramMap3)
  {
    this.initializers = paramMap1;
    this.resultObjects = paramMap2;
    this.exceptions = paramMap3;
  }

  private BackgroundInitializer checkName(String paramString)
  {
    BackgroundInitializer localBackgroundInitializer = (BackgroundInitializer)this.initializers.get(paramString);
    if (localBackgroundInitializer == null)
      throw new NoSuchElementException("No child initializer with name " + paramString);
    return localBackgroundInitializer;
  }

  public ConcurrentException getException(String paramString)
  {
    checkName(paramString);
    return (ConcurrentException)this.exceptions.get(paramString);
  }

  public BackgroundInitializer getInitializer(String paramString)
  {
    return checkName(paramString);
  }

  public Object getResultObject(String paramString)
  {
    checkName(paramString);
    return this.resultObjects.get(paramString);
  }

  public Set initializerNames()
  {
    return Collections.unmodifiableSet(this.initializers.keySet());
  }

  public boolean isException(String paramString)
  {
    checkName(paramString);
    return this.exceptions.containsKey(paramString);
  }

  public boolean isSuccessful()
  {
    return this.exceptions.isEmpty();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.concurrent.MultiBackgroundInitializer.MultiBackgroundInitializerResults
 * JD-Core Version:    0.6.2
 */