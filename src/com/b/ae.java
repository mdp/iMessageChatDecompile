package com.b;

import android.util.Base64;
import android.util.Log;
import java.io.ByteArrayInputStream;
import java.net.InetSocketAddress;
import java.security.KeyFactory;
import java.security.KeyStore;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.interfaces.RSAPrivateKey;
import java.security.spec.PKCS8EncodedKeySpec;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

public final class ae extends Thread
{
  private a b = null;
  private c c = null;

  public ae(ad paramad)
  {
  }

  private static byte[] a(byte[] paramArrayOfByte, String paramString1, String paramString2)
  {
    return Base64.decode(new String(paramArrayOfByte).split(paramString1)[1].split(paramString2)[0].getBytes(), 0);
  }

  private boolean c()
  {
    try
    {
      SSLContext localSSLContext = SSLContext.getInstance("SSL");
      byte[] arrayOfByte1 = e.c.i;
      byte[] arrayOfByte2 = a(arrayOfByte1, "-----BEGIN CERTIFICATE-----", "-----END CERTIFICATE-----");
      byte[] arrayOfByte3 = a(arrayOfByte1, "-----BEGIN RSA PRIVATE KEY-----", "-----END RSA PRIVATE KEY-----");
      X509Certificate localX509Certificate = (X509Certificate)CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(arrayOfByte2));
      PKCS8EncodedKeySpec localPKCS8EncodedKeySpec = new PKCS8EncodedKeySpec(arrayOfByte3);
      RSAPrivateKey localRSAPrivateKey = (RSAPrivateKey)KeyFactory.getInstance("RSA", "BC").generatePrivate(localPKCS8EncodedKeySpec);
      KeyStore localKeyStore = KeyStore.getInstance("BKS");
      localKeyStore.load(null);
      localKeyStore.setCertificateEntry("cert-alias", localX509Certificate);
      localKeyStore.setKeyEntry("key-alias", localRSAPrivateKey, "111111".toCharArray(), new Certificate[] { localX509Certificate });
      KeyManagerFactory localKeyManagerFactory = KeyManagerFactory.getInstance("X509");
      localKeyManagerFactory.init(localKeyStore, "111111".toCharArray());
      localSSLContext.init(localKeyManagerFactory.getKeyManagers(), null, null);
      ad.a(this.a, (SSLSocket)localSSLContext.getSocketFactory().createSocket());
      InetSocketAddress localInetSocketAddress = new InetSocketAddress(e.c.g, e.c.h);
      ad.a(this.a).connect(localInetSocketAddress, 10000);
      return true;
    }
    catch (Exception localException)
    {
      Log.e("MySSLSocket", localException.getMessage() + " ");
    }
    return false;
  }

  public final a a()
  {
    return this.b;
  }

  public final c b()
  {
    return this.c;
  }

  // ERROR //
  public final void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 14	com/b/ae:a	Lcom/b/ad;
    //   4: invokestatic 228	com/b/ad:b	(Lcom/b/ad;)Lcom/b/q;
    //   7: ifnull +153 -> 160
    //   10: aload_0
    //   11: invokespecial 230	com/b/ae:c	()Z
    //   14: ifeq +192 -> 206
    //   17: ldc 232
    //   19: ldc 234
    //   21: invokestatic 237	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   24: pop
    //   25: aload_0
    //   26: new 239	com/b/a
    //   29: dup
    //   30: aload_0
    //   31: getfield 14	com/b/ae:a	Lcom/b/ad;
    //   34: invokestatic 242	com/b/ad:c	(Lcom/b/ad;)Landroid/content/Context;
    //   37: invokespecial 245	com/b/a:<init>	(Landroid/content/Context;)V
    //   40: putfield 19	com/b/ae:b	Lcom/b/a;
    //   43: aload_0
    //   44: new 247	com/b/c
    //   47: dup
    //   48: aload_0
    //   49: getfield 14	com/b/ae:a	Lcom/b/ad;
    //   52: invokestatic 250	com/b/ad:d	(Lcom/b/ad;)Ljava/util/ArrayList;
    //   55: aload_0
    //   56: getfield 14	com/b/ae:a	Lcom/b/ad;
    //   59: invokestatic 253	com/b/ad:e	(Lcom/b/ad;)Ljava/util/concurrent/locks/ReentrantLock;
    //   62: aload_0
    //   63: getfield 14	com/b/ae:a	Lcom/b/ad;
    //   66: invokestatic 242	com/b/ad:c	(Lcom/b/ad;)Landroid/content/Context;
    //   69: invokespecial 256	com/b/c:<init>	(Ljava/util/ArrayList;Ljava/util/concurrent/locks/ReentrantLock;Landroid/content/Context;)V
    //   72: putfield 21	com/b/ae:c	Lcom/b/c;
    //   75: aload_0
    //   76: getfield 19	com/b/ae:b	Lcom/b/a;
    //   79: aload_0
    //   80: getfield 14	com/b/ae:a	Lcom/b/ad;
    //   83: invokestatic 228	com/b/ad:b	(Lcom/b/ad;)Lcom/b/q;
    //   86: aload_0
    //   87: getfield 14	com/b/ae:a	Lcom/b/ad;
    //   90: invokestatic 259	com/b/ad:f	(Lcom/b/ad;)Lcom/b/q;
    //   93: invokevirtual 262	com/b/a:a	(Lcom/b/q;Lcom/b/q;)V
    //   96: aload_0
    //   97: getfield 21	com/b/ae:c	Lcom/b/c;
    //   100: aload_0
    //   101: getfield 14	com/b/ae:a	Lcom/b/ad;
    //   104: invokestatic 228	com/b/ad:b	(Lcom/b/ad;)Lcom/b/q;
    //   107: aload_0
    //   108: getfield 14	com/b/ae:a	Lcom/b/ad;
    //   111: invokestatic 259	com/b/ad:f	(Lcom/b/ad;)Lcom/b/q;
    //   114: invokevirtual 263	com/b/c:a	(Lcom/b/q;Lcom/b/q;)V
    //   117: aload_0
    //   118: getfield 19	com/b/ae:b	Lcom/b/a;
    //   121: aload_0
    //   122: getfield 14	com/b/ae:a	Lcom/b/ad;
    //   125: invokestatic 184	com/b/ad:a	(Lcom/b/ad;)Ljavax/net/ssl/SSLSocket;
    //   128: invokevirtual 266	com/b/a:a	(Ljavax/net/ssl/SSLSocket;)V
    //   131: aload_0
    //   132: getfield 21	com/b/ae:c	Lcom/b/c;
    //   135: aload_0
    //   136: getfield 14	com/b/ae:a	Lcom/b/ad;
    //   139: invokestatic 184	com/b/ad:a	(Lcom/b/ad;)Ljavax/net/ssl/SSLSocket;
    //   142: invokevirtual 267	com/b/c:a	(Ljavax/net/ssl/SSLSocket;)V
    //   145: aload_0
    //   146: getfield 19	com/b/ae:b	Lcom/b/a;
    //   149: invokevirtual 270	com/b/a:start	()V
    //   152: aload_0
    //   153: getfield 21	com/b/ae:c	Lcom/b/c;
    //   156: invokevirtual 271	com/b/c:start	()V
    //   159: return
    //   160: ldc2_w 272
    //   163: invokestatic 277	java/lang/Thread:sleep	(J)V
    //   166: ldc_w 279
    //   169: ldc_w 281
    //   172: invokestatic 237	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   175: pop
    //   176: goto -176 -> 0
    //   179: astore_1
    //   180: aload_0
    //   181: getfield 14	com/b/ae:a	Lcom/b/ad;
    //   184: invokestatic 259	com/b/ad:f	(Lcom/b/ad;)Lcom/b/q;
    //   187: aconst_null
    //   188: invokeinterface 286 2 0
    //   193: aload_1
    //   194: invokevirtual 289	java/io/IOException:printStackTrace	()V
    //   197: return
    //   198: astore_2
    //   199: aload_2
    //   200: invokevirtual 290	java/lang/InterruptedException:printStackTrace	()V
    //   203: goto -37 -> 166
    //   206: aload_0
    //   207: getfield 14	com/b/ae:a	Lcom/b/ad;
    //   210: invokestatic 259	com/b/ad:f	(Lcom/b/ad;)Lcom/b/q;
    //   213: aconst_null
    //   214: invokeinterface 286 2 0
    //   219: ldc_w 292
    //   222: ldc_w 294
    //   225: invokestatic 237	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   228: pop
    //   229: return
    //
    // Exception table:
    //   from	to	target	type
    //   0	159	179	java/io/IOException
    //   160	166	179	java/io/IOException
    //   166	176	179	java/io/IOException
    //   199	203	179	java/io/IOException
    //   206	229	179	java/io/IOException
    //   160	166	198	java/lang/InterruptedException
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.b.ae
 * JD-Core Version:    0.6.2
 */