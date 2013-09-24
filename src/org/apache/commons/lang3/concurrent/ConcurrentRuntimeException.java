package org.apache.commons.lang3.concurrent;

public class ConcurrentRuntimeException extends RuntimeException
{
  private static final long serialVersionUID = -6582182735562919670L;

  protected ConcurrentRuntimeException()
  {
  }

  public ConcurrentRuntimeException(String paramString, Throwable paramThrowable)
  {
    super(paramString, ConcurrentUtils.checkedException(paramThrowable));
  }

  public ConcurrentRuntimeException(Throwable paramThrowable)
  {
    super(ConcurrentUtils.checkedException(paramThrowable));
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.concurrent.ConcurrentRuntimeException
 * JD-Core Version:    0.6.2
 */