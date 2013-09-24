package org.apache.commons.lang3.exception;

public class CloneFailedException extends RuntimeException
{
  private static final long serialVersionUID = 20091223L;

  public CloneFailedException(String paramString)
  {
    super(paramString);
  }

  public CloneFailedException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }

  public CloneFailedException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.exception.CloneFailedException
 * JD-Core Version:    0.6.2
 */