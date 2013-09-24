package org.jsoup.helper;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
import org.jsoup.Connection.Method;
import org.jsoup.Connection.Request;
import org.jsoup.parser.Parser;

public class HttpConnection$Request extends HttpConnection.Base
  implements Connection.Request
{
  private int d = 3000;
  private int e = 1048576;
  private boolean f = true;
  private Collection g = new ArrayList();
  private boolean h = false;
  private boolean i = false;
  private Parser j;

  private HttpConnection$Request()
  {
    super((byte)0);
    this.a = Connection.Method.a;
    this.b.put("Accept-Encoding", "gzip");
    this.j = Parser.a();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.helper.HttpConnection.Request
 * JD-Core Version:    0.6.2
 */