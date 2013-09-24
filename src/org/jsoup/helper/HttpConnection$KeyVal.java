package org.jsoup.helper;

import org.jsoup.Connection.KeyVal;

public class HttpConnection$KeyVal
  implements Connection.KeyVal
{
  private String a;
  private String b;

  public String toString()
  {
    return this.a + "=" + this.b;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.helper.HttpConnection.KeyVal
 * JD-Core Version:    0.6.2
 */