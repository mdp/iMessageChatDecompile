package d;

import android.util.Base64;
import com.c.b;
import java.util.HashMap;
import java.util.Map;

public final class u extends t
{
  private String c;
  private String d;
  private String e;
  private b f;
  private String g;
  private String h;
  private String i;
  private long j;
  private long k;
  private int l;

  public final Map a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("User-Agent", "IMTransferAgent/900 CFNetwork/596.2.3 Darwin/12.2.0 (x86_64) (Macmini5%2C1)");
    localHashMap.put("Accept", "application/vnd.com.apple.me.ubchunk+protobuf");
    localHashMap.put("x-apple-mmcs-dataclass", "com.apple.Dataclass.Messenger");
    localHashMap.put("Content-Type", "application/vnd.com.apple.me.ubchunk+protobuf");
    localHashMap.put("x-apple-mmcs-proto-version", "3.3");
    localHashMap.put("x-mme-client-info", "<Macmini5,1> <Mac OS X;10.8.2;12C54> <com.apple.icloud.content/243.10 (com.apple.Messenger/1.0)>");
    localHashMap.put("x-apple-mmcs-dataclass", "com.apple.Dataclass.Messenger");
    localHashMap.put("x-apple-mme-dsid", this.c);
    localHashMap.put("x-apple-mmcs-auth", this.d + " " + Integer.toString(this.l) + " " + this.e);
    localHashMap.put("x-apple-request-uuid", c.a());
    localHashMap.put("Connection", "close");
    return localHashMap;
  }

  public final void a(String paramString1, String paramString2, String paramString3)
  {
    this.d = paramString1;
    this.c = paramString2;
    this.e = paramString3;
  }

  public final void a(String paramString1, String paramString2, String paramString3, long paramLong1, long paramLong2, int paramInt)
  {
    this.j = paramLong1;
    this.k = paramLong2;
    this.l = paramInt;
    this.g = paramString1;
    this.h = paramString2;
    this.i = paramString3;
  }

  public final b b()
  {
    new b(new byte[1], 0);
    b localb1 = new b(new byte[1], 0);
    f.a(localb1, 1, new b(this.g.getBytes(), this.g.length()));
    f.a(localb1, 2, 201);
    if (this.h != null)
    {
      b localb2 = new b(new byte[1], 0);
      f.a(localb2, 1, new b("Content-MD5".getBytes(), "Content-MD5".length()));
      f.a(localb2, 2, new b(this.h.getBytes(), this.h.length()));
      f.a(localb1, 4, localb2);
    }
    if (this.i != null)
    {
      b localb3 = new b(new byte[1], 0);
      f.a(localb3, 1, new b("Etag".getBytes(), "Etag".length()));
      f.a(localb3, 2, new b(this.i.getBytes(), this.i.length()));
      f.a(localb1, 4, localb3);
    }
    if (this.h != null)
    {
      byte[] arrayOfByte = Base64.decode(this.h.getBytes(), 0);
      f.a(localb1, 7, new b(arrayOfByte, arrayOfByte.length));
    }
    b localb4 = new b(new byte[1], 0);
    f.a(localb4, 1, new b("contentlength.bytes".getBytes(), "contentlength.bytes".length()));
    String str1 = Integer.toString(this.l);
    f.a(localb4, 2, new b(str1.getBytes(), str1.length()));
    f.a(localb1, 8, localb4);
    b localb5 = new b(new byte[1], 0);
    f.a(localb5, 1, new b("vendor.roundtrip.millis".getBytes(), "vendor.roundtrip.millis".length()));
    String str2 = Long.toString(this.k);
    f.a(localb5, 2, new b(str2.getBytes(), str2.length()));
    f.a(localb1, 8, localb5);
    b localb6 = new b(new byte[1], 0);
    f.a(localb6, 1, new b("authorizePut.millis".getBytes(), "authorizePut.millis".length()));
    String str3 = Long.toString(this.j);
    f.a(localb6, 2, new b(str3.getBytes(), str3.length()));
    f.a(localb1, 9, localb6);
    b localb7 = new b(new byte[1], 0);
    f.a(localb7, 1, new b("chunking.time.millis".getBytes(), "chunking.time.millis".length()));
    String str4 = Integer.toString(1 + this.l / 100);
    f.a(localb7, 2, new b(str4.getBytes(), str4.length()));
    f.a(localb1, 9, localb7);
    f.a(localb1, 10, new b(this.e.getBytes(), this.e.length()));
    b localb8 = new b(new byte[1], 0);
    f.a(localb8, 1, localb1);
    this.f = localb8;
    return this.f;
  }

  public final void c()
  {
    this.a = 1;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     d.u
 * JD-Core Version:    0.6.2
 */