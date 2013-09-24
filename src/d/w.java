package d;

import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import android.util.Log;
import com.a.f;
import com.c.b;
import com.c.i;
import e.c;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.Signature;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

public final class w extends t
{
  private String c;
  private String d;
  private String e;
  private ArrayList f;
  private ArrayList g;
  private ArrayList h;
  private boolean i = false;
  private Context j;
  private int k;
  private String l = "nothing";

  public w(String paramString, Context paramContext)
  {
    int m = paramString.indexOf("||");
    if (m != -1);
    for (this.e = paramString.substring(0, m); ; this.e = paramString)
    {
      this.j = paramContext;
      return;
    }
  }

  private void a(b paramb)
  {
    new String(paramb.a()).substring(0);
    String str = e.e.a(paramb.a());
    Log.d("Query resBody", str);
    this.h = new ArrayList();
    this.g = new ArrayList();
    int m = str.indexOf("<key>status</key>");
    int n = str.indexOf("<integer>", m);
    int i1 = str.indexOf("</integer>", m);
    int i2 = str.indexOf("<string>");
    int i3 = str.indexOf("</string>");
    this.l = "nothing";
    if ((i2 != -1) && (i3 != -1))
      this.l = str.substring(i2 + 8, i3);
    this.k = Integer.parseInt(str.substring(n + 9, i1));
    int i4 = 0;
    while (true)
    {
      int i5 = str.indexOf("<key>push-token</key>", i4);
      if (i5 == -1)
        break;
      int i6 = i5 + "<key>push-token</key>".length();
      int i7 = str.indexOf("<data>", i6);
      int i8 = str.indexOf("</data>", i6);
      byte[] arrayOfByte1 = Base64.decode(str.substring(i7 + 6, i8), 0);
      this.g.add(arrayOfByte1);
      int i9 = str.indexOf("<key>public-message-identity-key</key>", i6);
      if (i9 == -1)
        break;
      i4 = i9 + "<key>public-message-identity-key</key>".length();
      int i10 = str.indexOf("<data>", i4);
      int i11 = str.indexOf("</data>", i4);
      byte[] arrayOfByte2 = Base64.decode(str.substring(i10 + 6, i11), 0);
      byte[] arrayOfByte3 = new byte['¬'];
      System.arraycopy(arrayOfByte2, -172 + arrayOfByte2.length, arrayOfByte3, 0, 172);
      this.h.add(arrayOfByte3);
    }
    if ((this.j != null) && (this.k == 5032))
    {
      Intent localIntent = new Intent();
      localIntent.setAction("com.way.querystatus");
      localIntent.putExtra("message", this.k);
      this.j.sendBroadcast(localIntent);
    }
    if (this.k != 0)
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("QueryError", this.l);
      com.umeng.a.a.a(this.j, "QueryE", localHashMap);
      Log.d("QueryE", this.l);
    }
    this.a = 1;
  }

  private void a(Map paramMap)
  {
    this.f = new ArrayList();
    List localList1 = (List)paramMap.get("x-id-session-token");
    if (localList1 != null)
    {
      String str2 = (String)localList1.get(0);
      if (str2 != null)
      {
        byte[] arrayOfByte2 = Base64.decode(str2, 0);
        this.f.add(arrayOfByte2);
      }
    }
    int m = 0;
    while (true)
    {
      List localList2 = (List)paramMap.get("x-id-session-token" + "-" + m);
      m++;
      if (localList2 == null)
        break;
      String str1 = (String)localList2.get(0);
      if (str1 != null)
      {
        byte[] arrayOfByte1 = Base64.decode(str1, 0);
        this.f.add(arrayOfByte1);
      }
    }
  }

  private static byte[] f()
  {
    byte[] arrayOfByte = new byte[17];
    double d1 = com.c.a.d;
    if (d1 == -1.0D)
      d1 = System.currentTimeMillis() / 1000L;
    long l1 = ()d1;
    long l2 = 256000L * l1;
    long l3 = -402653184L * l1;
    long l4 = l2 & 0xFF0000;
    long l5 = 0xFF00 & (3892314112L * l1 >> 32) + 3L * l1;
    int m = (int)(256000L * l1 >> 32 | (l5 | (l4 | l3)));
    long l6 = 0L + (1000L * l1 >> 32) << 8;
    long l7 = (int)(0L + (1000L * l1 >> 32)) >> 24;
    long l8 = 0L + (1000L * l1 >> 32) << 24;
    long l9 = l6 & 0xFF0000;
    int n = (int)(0xFF00 & (int)(0L + (l1 * 1000L >> 32)) >> 8 | (l9 | (l7 | l8)));
    arrayOfByte[0] = 1;
    int i1 = 1;
    int i2;
    label193: Random localRandom;
    if (i1 > 4)
    {
      i2 = 5;
      if (i2 <= 8)
        break label249;
      localRandom = new Random(System.currentTimeMillis());
    }
    for (int i3 = 9; ; i3++)
    {
      if (i3 >= 17)
      {
        return arrayOfByte;
        arrayOfByte[i1] = ((byte)(n % 256));
        n >>= 8;
        i1++;
        break;
        label249: arrayOfByte[i2] = ((byte)(m % 256));
        m >>= 8;
        i2++;
        break label193;
      }
      arrayOfByte[i3] = ((byte)localRandom.nextInt(255));
    }
  }

  private String j()
  {
    String str1;
    if (this.e.indexOf("@") == -1)
      str1 = "tel:" + this.e;
    try
    {
      while (true)
      {
        String str4 = URLEncoder.encode(str1, "gb2312");
        str2 = str4;
        String str3 = "query?uri=" + str2;
        return "https://service.ess.apple.com/WebObjects/TDIdentityService.woa/wa/" + str3;
        str1 = "mailto:" + this.e;
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      while (true)
      {
        localUnsupportedEncodingException.printStackTrace();
        String str2 = "";
      }
    }
  }

  public final void a(String paramString, f paramf)
  {
    i locali = paramf.a(paramString, this.e);
    if (locali == null)
    {
      b(paramString, paramf);
      return;
    }
    this.f = locali.a;
    this.g = locali.b;
    this.h = locali.c;
    this.i = true;
  }

  public final boolean a()
  {
    return this.i;
  }

  public final int b(String paramString, f paramf)
  {
    new StringBuilder("mailto:").append(this.e).toString();
    String str1;
    if (this.e.indexOf("@") == -1)
      str1 = "tel:" + this.e;
    try
    {
      String str4 = URLEncoder.encode(str1, "gb2312");
      str2 = str4;
      String str3 = "uri=" + str2;
      int m = 4 + (4 + (21 + "id-query".length()) + str3.length());
      arrayOfByte1 = f();
      arrayOfByte2 = new byte[m];
      System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, 17);
      int n = "id-query".length();
      arrayOfByte2[17] = ((byte)(n >> 24));
      arrayOfByte2[18] = ((byte)(n >> 16));
      arrayOfByte2[19] = ((byte)(n >> 8));
      arrayOfByte2[20] = ((byte)(n >> 0));
      System.arraycopy("id-query".getBytes(), 0, arrayOfByte2, 21, n);
      int i1 = n + 21;
      int i2 = str3.length();
      int i3 = i1 + 1;
      arrayOfByte2[i1] = ((byte)(i2 >> 24));
      int i4 = i3 + 1;
      arrayOfByte2[i3] = ((byte)(i2 >> 16));
      int i5 = i4 + 1;
      arrayOfByte2[i4] = ((byte)(i2 >> 8));
      int i6 = i5 + 1;
      arrayOfByte2[i5] = ((byte)(i2 >> 0));
      System.arraycopy(str3.getBytes(), 0, arrayOfByte2, i6, i2);
      int i7 = i6 + i2;
      int i8 = i7 + 1;
      arrayOfByte2[i7] = 0;
      int i9 = i8 + 1;
      arrayOfByte2[i8] = 0;
      int i10 = i9 + 1;
      arrayOfByte2[i9] = 0;
      arrayOfByte2[i10] = 0;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      try
      {
        while (true)
        {
          byte[] arrayOfByte1;
          byte[] arrayOfByte2;
          PKCS8EncodedKeySpec localPKCS8EncodedKeySpec = new PKCS8EncodedKeySpec(c.c);
          PrivateKey localPrivateKey = KeyFactory.getInstance("RSA", "BC").generatePrivate(localPKCS8EncodedKeySpec);
          Signature localSignature = Signature.getInstance("SHA1withRSA");
          localSignature.initSign(localPrivateKey);
          localSignature.update(arrayOfByte2);
          byte[] arrayOfByte8 = localSignature.sign();
          arrayOfByte3 = arrayOfByte8;
          byte[] arrayOfByte4 = new byte[2 + arrayOfByte3.length];
          arrayOfByte4[0] = 1;
          arrayOfByte4[1] = 1;
          System.arraycopy(arrayOfByte3, 0, arrayOfByte4, 2, arrayOfByte3.length);
          arrayOfByte5 = Base64.encode(arrayOfByte1, 0);
          arrayOfByte6 = Base64.encode(arrayOfByte4, 0);
          i11 = 0;
          i12 = 0;
          if (i11 < arrayOfByte5.length)
            break;
          this.c = new String(arrayOfByte5, 0, i12);
          i14 = 0;
          i15 = 0;
          if (i14 < arrayOfByte6.length)
            break label907;
          this.d = new String(arrayOfByte6, 0, i15);
          HashMap localHashMap = new HashMap();
          localHashMap.put("Accept-Encoding", "gzip");
          localHashMap.put("x-id-sig", this.d);
          localHashMap.put("Accept-Language", "zh-cn");
          arrayOfByte7 = Base64.encode(c.d, 0);
          i17 = 0;
          i18 = 0;
          if (i17 < arrayOfByte7.length)
            break label943;
          localHashMap.put("x-id-cert", new String(arrayOfByte7, 0, i18));
          localHashMap.put("x-id-nonce", this.c);
          localHashMap.put("Accept", "*/*");
          localHashMap.put("Connection", "keep-alive");
          localHashMap.put("User-Agent", "com.apple.madrid-lookup [Mac OS X,10.8.2,12C54,Macmini5,1]");
          e locale = new e(j(), "GET");
          b localb = new b(new byte[100], 100);
          locale.a(true, false);
          locale.a(localHashMap);
          locale.a(null, localb);
          if (!locale.b())
            break label994;
          a(locale.a());
          a(localb);
          if (this.g.isEmpty())
            break label979;
          i locali = new i();
          locali.c = this.h;
          locali.a = this.f;
          locali.b = this.g;
          locali.d = this.g.size();
          paramf.a(paramString, this.e, locali);
          this.i = true;
          return 0;
          str1 = "mailto:" + this.e;
        }
        localUnsupportedEncodingException = localUnsupportedEncodingException;
        localUnsupportedEncodingException.printStackTrace();
        String str2 = "";
      }
      catch (Exception localException)
      {
        while (true)
        {
          byte[] arrayOfByte5;
          byte[] arrayOfByte6;
          int i11;
          int i12;
          int i14;
          int i15;
          byte[] arrayOfByte7;
          int i17;
          int i18;
          localException.printStackTrace();
          byte[] arrayOfByte3 = null;
          continue;
          if (arrayOfByte5[i11] != 10)
          {
            int i13 = i12 + 1;
            arrayOfByte5[i12] = arrayOfByte5[i11];
            i12 = i13;
          }
          i11++;
          continue;
          label907: if (arrayOfByte6[i14] != 10)
          {
            int i16 = i15 + 1;
            arrayOfByte6[i15] = arrayOfByte6[i14];
            i15 = i16;
          }
          i14++;
          continue;
          label943: if (arrayOfByte7[i17] != 10)
          {
            int i19 = i18 + 1;
            arrayOfByte7[i18] = arrayOfByte7[i17];
            i18 = i19;
          }
          i17++;
        }
        label979: if (this.k == 0)
          return -2;
        return this.k;
      }
    }
    label994: return -1;
  }

  public final ArrayList b()
  {
    return this.f;
  }

  public final ArrayList c()
  {
    return this.g;
  }

  public final ArrayList d()
  {
    return this.h;
  }

  public final String e()
  {
    return this.l;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     d.w
 * JD-Core Version:    0.6.2
 */