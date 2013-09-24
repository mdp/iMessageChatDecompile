package d;

import a.d;
import com.c.b;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;

public final class q extends t
{
  private Vector c;
  private String d;
  private String e;
  private String f;
  private b g;
  private b h;
  private int i;

  public final Map a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("User-Agent", "IMTransferAgent/900 CFNetwork/596.2.3 Darwin/12.2.0 (x86_64) (Macmini5%2C1)");
    localHashMap.put("x-apple-mmcs-proto-version", "3.3");
    localHashMap.put("x-apple-mmcs-dataclass", "com.apple.Dataclass.Messenger");
    localHashMap.put("Accept", "application/vnd.com.apple.me.ubchunk+protobuf");
    localHashMap.put("Content-Type", "application/vnd.com.apple.me.ubchunk+protobuf");
    localHashMap.put("x-apple-mmcs-auth", this.e + " " + Integer.toString(this.i) + " " + this.f);
    localHashMap.put("x-mme-client-info", "<Macmini5,1> <Mac OS X;10.8.2;12C54> <com.apple.icloud.content/243.10 (com.apple.Messenger/1.0)>");
    localHashMap.put("x-apple-request-uuid", c.a());
    localHashMap.put("x-apple-mme-dsid", this.d);
    localHashMap.put("Connection", "close");
    return localHashMap;
  }

  public final void a(b paramb)
  {
    this.h = paramb;
    this.a = 1;
  }

  public final void a(String paramString1, String paramString2, String paramString3, int paramInt)
  {
    this.e = paramString1;
    this.d = paramString2;
    this.f = paramString3;
    this.i = paramInt;
  }

  public final void a(Vector paramVector, b paramb)
  {
    this.c = paramVector;
    this.g = paramb;
  }

  public final b b()
  {
    b localb1 = new b(new byte[1], 0);
    f.a(localb1, 1, this.g);
    f.a(localb1, 2, new b(this.f.getBytes(), this.f.length()));
    b localb2 = new b(new byte[1], 0);
    for (int j = 0; ; j++)
    {
      if (j >= this.c.size())
      {
        b localb3 = new b(new byte[1], 0);
        f.a(localb3, 1, localb1);
        localb3.b();
        return localb3;
      }
      d locald = (d)this.c.elementAt(j);
      f.a(localb2, 1, locald.b());
      f.a(localb2, 3, locald.a());
      f.a(localb1, 3, localb2);
    }
  }

  public final b c()
  {
    return this.h;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     d.q
 * JD-Core Version:    0.6.2
 */