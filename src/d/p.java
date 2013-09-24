package d;

import com.c.b;
import java.util.HashMap;
import java.util.Map;

public final class p extends t
{
  private String c;
  private String d;
  private String e;
  private b f;
  private b g;

  public final Map a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("User-Agent", "IMTransferAgent/900 CFNetwork/596.2.3 Darwin/12.2.0 (x86_64) (Macmini5%2C1)");
    localHashMap.put("x-apple-mmcs-proto-version", "3.3");
    localHashMap.put("x-apple-mmcs-dataclass", "com.apple.Dataclass.Messenger");
    localHashMap.put("Accept", "application/vnd.com.apple.me.ubchunk+protobuf");
    localHashMap.put("Content-Type", "application/vnd.com.apple.me.ubchunk+protobuf");
    localHashMap.put("x-apple-mmcs-auth", this.c + " " + this.d);
    localHashMap.put("x-mme-client-info", "<Macmini5,1> <Mac OS X;10.8.2;12C54> <com.apple.icloud.content/243.10 (com.apple.Messenger/1.0)>");
    localHashMap.put("x-apple-request-uuid", c.a());
    localHashMap.put("x-apple-mme-dsid", this.e);
    localHashMap.put("Connection", "close");
    localHashMap.put("Content-Length", this.f.b());
    return localHashMap;
  }

  public final void a(b paramb)
  {
    this.g = paramb;
    byte[] arrayOfByte = new byte[100];
    System.arraycopy(paramb.a(), 0, arrayOfByte, 0, 25);
    arrayOfByte[25] = 0;
    if (new String(arrayOfByte).equals("user authorization failed"))
    {
      this.a = 1;
      return;
    }
    this.g = paramb;
    this.a = 0;
  }

  public final void a(String paramString1, String paramString2, String paramString3)
  {
    this.c = paramString1;
    this.d = paramString2;
    this.e = paramString3;
  }

  public final b b()
  {
    b localb1 = new b(new byte[1], 0);
    b localb2 = new b(this.c.getBytes(), this.c.length());
    localb2.c();
    f.a(localb1, 1, localb2);
    f.a(localb1, 2, new b(this.d.getBytes(), this.d.length()));
    this.f = new b(new byte[1], 0);
    f.a(this.f, 1, localb1);
    return this.f;
  }

  public final b c()
  {
    return this.g;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     d.p
 * JD-Core Version:    0.6.2
 */