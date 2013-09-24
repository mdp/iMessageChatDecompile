package d;

import java.security.cert.X509Certificate;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

public final class n
  implements X509TrustManager
{
  private static TrustManager[] a;
  private static final X509Certificate[] b = new X509Certificate[0];

  // ERROR //
  public static void a()
  {
    // Byte code:
    //   0: new 25	d/o
    //   3: dup
    //   4: invokespecial 26	d/o:<init>	()V
    //   7: invokestatic 32	javax/net/ssl/HttpsURLConnection:setDefaultHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   10: getstatic 34	d/n:a	[Ljavax/net/ssl/TrustManager;
    //   13: ifnonnull +25 -> 38
    //   16: iconst_1
    //   17: anewarray 36	javax/net/ssl/TrustManager
    //   20: astore 6
    //   22: aload 6
    //   24: iconst_0
    //   25: new 2	d/n
    //   28: dup
    //   29: invokespecial 37	d/n:<init>	()V
    //   32: aastore
    //   33: aload 6
    //   35: putstatic 34	d/n:a	[Ljavax/net/ssl/TrustManager;
    //   38: ldc 39
    //   40: invokestatic 45	javax/net/ssl/SSLContext:getInstance	(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    //   43: astore 5
    //   45: aload 5
    //   47: astore_1
    //   48: aload_1
    //   49: aconst_null
    //   50: getstatic 34	d/n:a	[Ljavax/net/ssl/TrustManager;
    //   53: new 47	java/security/SecureRandom
    //   56: dup
    //   57: invokespecial 48	java/security/SecureRandom:<init>	()V
    //   60: invokevirtual 52	javax/net/ssl/SSLContext:init	([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    //   63: aload_1
    //   64: invokevirtual 56	javax/net/ssl/SSLContext:getSocketFactory	()Ljavax/net/ssl/SSLSocketFactory;
    //   67: invokestatic 60	javax/net/ssl/HttpsURLConnection:setDefaultSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   70: return
    //   71: astore_3
    //   72: aconst_null
    //   73: astore_1
    //   74: aload_3
    //   75: astore 4
    //   77: aload 4
    //   79: invokevirtual 63	java/security/NoSuchAlgorithmException:printStackTrace	()V
    //   82: goto -19 -> 63
    //   85: astore_0
    //   86: aconst_null
    //   87: astore_1
    //   88: aload_0
    //   89: astore_2
    //   90: aload_2
    //   91: invokevirtual 64	java/security/KeyManagementException:printStackTrace	()V
    //   94: goto -31 -> 63
    //   97: astore_2
    //   98: goto -8 -> 90
    //   101: astore 4
    //   103: goto -26 -> 77
    //
    // Exception table:
    //   from	to	target	type
    //   38	45	71	java/security/NoSuchAlgorithmException
    //   38	45	85	java/security/KeyManagementException
    //   48	63	97	java/security/KeyManagementException
    //   48	63	101	java/security/NoSuchAlgorithmException
  }

  public final void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
  {
  }

  public final void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
  {
  }

  public final X509Certificate[] getAcceptedIssuers()
  {
    return b;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     d.n
 * JD-Core Version:    0.6.2
 */