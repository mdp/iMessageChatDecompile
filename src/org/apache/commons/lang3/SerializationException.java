package org.apache.commons.lang3;

public class SerializationException extends RuntimeException
{
  private static final long serialVersionUID = 4029025366392702726L;

  public SerializationException()
  {
  }

  public SerializationException(String paramString)
  {
    super(paramString);
  }

  public SerializationException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }

  public SerializationException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.SerializationException
 * JD-Core Version:    0.6.2
 */