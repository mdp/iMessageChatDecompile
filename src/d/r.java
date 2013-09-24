package d;

import com.c.b;
import java.util.HashMap;
import java.util.Map;

public final class r extends t
{
  private b c;
  private String d;
  private String e;
  private String f;
  private String g;
  private long h;
  private long i;
  private int j;

  public final Map a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("User-Agent", "IMTransferAgent/900 CFNetwork/596.2.3 Darwin/12.2.0 (x86_64) (Macmini5%2C1)");
    localHashMap.put("Content-Length", this.c.b());
    localHashMap.put("x-apple-mmcs-dataclass", "com.apple.Dataclass.Messenger");
    localHashMap.put("Content-Type", "application/vnd.com.apple.me.ubchunk+protobuf");
    localHashMap.put("x-apple-mmcs-proto-version", "3.3");
    localHashMap.put("x-mme-client-info", "<Macmini5,1> <Mac OS X;10.8.2;12C54> <com.apple.icloud.content/243.10 (com.apple.Messenger/1.0)>");
    localHashMap.put("x-apple-mmcs-dataclass", "com.apple.Dataclass.Messenger");
    localHashMap.put("x-apple-mme-dsid", this.d);
    localHashMap.put("x-apple-mmcs-auth", this.f + " " + this.e);
    localHashMap.put("x-apple-request-uuid", c.a());
    localHashMap.put("Connection", "close");
    return localHashMap;
  }

  public final void a(String paramString, long paramLong1, long paramLong2, int paramInt)
  {
    this.h = paramLong1;
    this.i = paramLong2;
    this.j = paramInt;
    this.g = paramString;
  }

  public final void a(String paramString1, String paramString2, String paramString3)
  {
    this.f = paramString1;
    this.d = paramString2;
    this.e = paramString3;
  }

  public final b b()
  {
    b localb1 = new b(new byte[1], 0);
    byte[] arrayOfByte = new byte[500];
    System.arraycopy(this.g.getBytes(), 0, arrayOfByte, 0, this.g.length());
    b localb2 = new b(arrayOfByte, this.g.length());
    f.a(localb1, 1, localb2);
    f.a(localb1, 2, 206);
    b localb3 = new b(new byte[1], 0);
    localb2.a("vendor.roundtrip.millis".getBytes(), "vendor.roundtrip.millis".length());
    f.a(localb3, 1, localb2);
    String str1 = Long.toString(this.i);
    localb2.a(str1.getBytes(), str1.length());
    f.a(localb3, 2, localb2);
    f.a(localb1, 8, localb3);
    b localb4 = new b(new byte[1], 0);
    localb2.a("contentlength.byte".getBytes(), "contentlength.byte".length());
    f.a(localb4, 1, localb2);
    String str2 = Integer.toString(this.j);
    localb2.a(str2.getBytes(), str2.length());
    f.a(localb4, 2, localb2);
    f.a(localb1, 8, localb4);
    b localb5 = new b(new byte[1], 0);
    localb2.a("authorizeGetForFiles.millis".getBytes(), "authorizeGetForFiles.millis".length());
    f.a(localb5, 1, localb2);
    String str3 = Long.toString(this.h);
    localb2.a(str3.getBytes(), str3.length());
    f.a(localb5, 2, localb2);
    f.a(localb1, 9, localb5);
    localb2.a(this.e.getBytes(), this.e.length());
    f.a(localb1, 10, localb2);
    b localb6 = new b(new byte[1], 0);
    f.a(localb6, 1, localb1);
    this.c = localb6;
    return this.c;
  }

  public final void c()
  {
    this.a = 0;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     d.r
 * JD-Core Version:    0.6.2
 */