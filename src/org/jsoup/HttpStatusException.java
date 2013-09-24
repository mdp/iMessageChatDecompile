package org.jsoup;

import java.io.IOException;

public class HttpStatusException extends IOException
{
  private int a;
  private String b;

  public String toString()
  {
    return super.toString() + ". Status=" + this.a + ", URL=" + this.b;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.HttpStatusException
 * JD-Core Version:    0.6.2
 */