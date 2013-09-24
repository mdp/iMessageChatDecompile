package d;

import android.util.Log;
import com.c.b;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;

public final class s extends t
{
  private b c;
  private b d;
  private String e;
  private String f;
  private int g;
  private int h;
  private String i;

  public final String a()
  {
    return this.i;
  }

  public final Map a(b paramb)
  {
    int j = 0;
    Vector localVector1 = new Vector();
    Vector localVector2 = new Vector();
    Vector localVector3 = new Vector();
    Vector localVector4 = new Vector();
    byte[] arrayOfByte = new byte[paramb.b()];
    System.arraycopy(paramb.a(), 0, arrayOfByte, 0, paramb.b());
    Vector localVector5 = f.a(new b(arrayOfByte, paramb.b()));
    int k = 0;
    int m;
    label94: int n;
    int i1;
    HashMap localHashMap;
    int i2;
    if (k >= localVector5.size())
    {
      m = 0;
      if (m < localVector1.size())
        break label317;
      n = 0;
      if (n < localVector2.size())
        break label382;
      i1 = 0;
      if (i1 < localVector3.size())
        break label526;
      Log.d("GetFile", "Host:" + this.e + ":" + this.g + "/" + this.f);
      Log.d("GetFile", "Method: " + this.i);
      localHashMap = new HashMap();
      i2 = 0;
      label215: if (i2 < localVector4.size())
        break label778;
      localHashMap.put("User-Agent", "IMTransferAgent/900 CFNetwork/596.2.3 Darwin/12.2.0 (x86_64) (Macmini5%2C1)");
      localHashMap.put("x-apple-request-uuid", c.a());
    }
    while (true)
    {
      if (j >= localVector4.size())
      {
        return localHashMap;
        g localg1 = (g)localVector5.elementAt(k);
        if ((localg1.a == f.b) && (localg1.b == 1))
          f.a(localVector1, new b(localg1.d));
        k++;
        break;
        label317: g localg2 = (g)localVector1.elementAt(m);
        if ((localg2.a == f.b) && (localg2.b == 1))
          f.a(localVector2, new b(localg2.d));
        m++;
        break label94;
        label382: g localg3 = (g)localVector2.elementAt(n);
        if ((localg3.a == f.b) && (localg3.b == 1))
          f.a(localVector3, new b(localg3.d));
        while (true)
        {
          n++;
          break;
          if ((localg3.a == f.b) && (localg3.b == 3))
            this.c = new b(localg3.d);
          else if ((localg3.a == f.b) && (localg3.b == 4))
            this.d = new b(localg3.d);
        }
        label526: g localg4 = (g)localVector3.elementAt(i1);
        if ((localg4.a == f.b) && (localg4.b == 8))
          f.a(localVector4, new b(localg4.d));
        while (true)
        {
          i1++;
          break;
          if ((localg4.a == f.b) && (localg4.b == 1))
            this.e = new String(localg4.d.a(), 0, localg4.d.b());
          else if ((localg4.a == f.b) && (localg4.b == 4))
            this.f = new String(localg4.d.a(), 0, localg4.d.b());
          else if ((localg4.a == f.a) && (localg4.b == 2))
            this.g = localg4.c;
          else if ((localg4.a == f.b) && (localg4.b == 3))
            this.i = new String(localg4.d.a(), 0, localg4.d.b());
        }
        label778: g localg5 = (g)localVector4.elementAt(i2);
        String str1 = new String(localg5.d.a(), 0, localg5.d.b());
        int i3 = i2 + 1;
        g localg6 = (g)localVector4.elementAt(i3);
        String str2 = new String(localg6.d.a(), 0, localg6.d.b());
        if (!str1.equals("Content-Length"))
          localHashMap.put(str1, str2);
        i2 = i3 + 1;
        break label215;
      }
      j++;
    }
  }

  public final void a(int paramInt)
  {
    this.h = paramInt;
  }

  public final String b()
  {
    return "http://" + this.e + ":80" + this.f;
  }

  public final void c()
  {
    this.a = 0;
  }

  public final String d()
  {
    return new String(this.c.a(), 0, this.c.b());
  }

  public final String e()
  {
    return new String(this.d.a(), 0, this.d.b());
  }

  public final int f()
  {
    return this.h;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     d.s
 * JD-Core Version:    0.6.2
 */