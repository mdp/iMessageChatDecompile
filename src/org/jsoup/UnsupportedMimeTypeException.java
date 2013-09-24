package org.jsoup;

import java.io.IOException;

public class UnsupportedMimeTypeException extends IOException
{
  private String a;
  private String b;

  public String toString()
  {
    return super.toString() + ". Mimetype=" + this.a + ", URL=" + this.b;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.UnsupportedMimeTypeException
 * JD-Core Version:    0.6.2
 */