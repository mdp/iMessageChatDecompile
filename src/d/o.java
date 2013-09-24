package d;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;

final class o
  implements HostnameVerifier
{
  public final boolean verify(String paramString, SSLSession paramSSLSession)
  {
    return true;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     d.o
 * JD-Core Version:    0.6.2
 */