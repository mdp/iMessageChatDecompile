package org.apache.commons.lang3.exception;

import java.util.List;
import java.util.Set;

public class ContextedException extends Exception
  implements ExceptionContext
{
  private static final long serialVersionUID = 20110706L;
  private final ExceptionContext exceptionContext;

  public ContextedException()
  {
    this.exceptionContext = new DefaultExceptionContext();
  }

  public ContextedException(String paramString)
  {
    super(paramString);
    this.exceptionContext = new DefaultExceptionContext();
  }

  public ContextedException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
    this.exceptionContext = new DefaultExceptionContext();
  }

  public ContextedException(String paramString, Throwable paramThrowable, ExceptionContext paramExceptionContext)
  {
    super(paramString, paramThrowable);
    if (paramExceptionContext == null)
      paramExceptionContext = new DefaultExceptionContext();
    this.exceptionContext = paramExceptionContext;
  }

  public ContextedException(Throwable paramThrowable)
  {
    super(paramThrowable);
    this.exceptionContext = new DefaultExceptionContext();
  }

  public ContextedException addContextValue(String paramString, Object paramObject)
  {
    this.exceptionContext.addContextValue(paramString, paramObject);
    return this;
  }

  public List getContextEntries()
  {
    return this.exceptionContext.getContextEntries();
  }

  public Set getContextLabels()
  {
    return this.exceptionContext.getContextLabels();
  }

  public List getContextValues(String paramString)
  {
    return this.exceptionContext.getContextValues(paramString);
  }

  public Object getFirstContextValue(String paramString)
  {
    return this.exceptionContext.getFirstContextValue(paramString);
  }

  public String getFormattedExceptionMessage(String paramString)
  {
    return this.exceptionContext.getFormattedExceptionMessage(paramString);
  }

  public String getMessage()
  {
    return getFormattedExceptionMessage(super.getMessage());
  }

  public String getRawMessage()
  {
    return super.getMessage();
  }

  public ContextedException setContextValue(String paramString, Object paramObject)
  {
    this.exceptionContext.setContextValue(paramString, paramObject);
    return this;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.exception.ContextedException
 * JD-Core Version:    0.6.2
 */