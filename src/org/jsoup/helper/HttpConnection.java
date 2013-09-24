package org.jsoup.helper;

import org.jsoup.Connection;
import org.jsoup.Connection.Request;
import org.jsoup.Connection.Response;

public class HttpConnection
  implements Connection
{
  private Connection.Request a = new HttpConnection.Request((byte)0);
  private Connection.Response b = new HttpConnection.Response();
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.helper.HttpConnection
 * JD-Core Version:    0.6.2
 */