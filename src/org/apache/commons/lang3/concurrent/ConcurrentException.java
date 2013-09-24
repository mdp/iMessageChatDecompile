package org.apache.commons.lang3.concurrent;

public class ConcurrentException extends Exception
{
  private static final long serialVersionUID = 6622707671812226130L;

  protected ConcurrentException()
  {
  }

  public ConcurrentException(String paramString, Throwable paramThrowable)
  {
    super(paramString, ConcurrentUtils.checkedException(paramThrowable));
  }

  public ConcurrentException(Throwable paramThrowable)
  {
    super(ConcurrentUtils.checkedException(paramThrowable));
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.concurrent.ConcurrentException
 * JD-Core Version:    0.6.2
 */