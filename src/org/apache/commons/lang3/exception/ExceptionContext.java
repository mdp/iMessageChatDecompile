package org.apache.commons.lang3.exception;

import java.util.List;
import java.util.Set;

public abstract interface ExceptionContext
{
  public abstract ExceptionContext addContextValue(String paramString, Object paramObject);

  public abstract List getContextEntries();

  public abstract Set getContextLabels();

  public abstract List getContextValues(String paramString);

  public abstract Object getFirstContextValue(String paramString);

  public abstract String getFormattedExceptionMessage(String paramString);

  public abstract ExceptionContext setContextValue(String paramString, Object paramObject);
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.exception.ExceptionContext
 * JD-Core Version:    0.6.2
 */