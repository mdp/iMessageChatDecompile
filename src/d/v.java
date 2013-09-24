package d;

import a.d;
import android.util.Log;
import com.c.b;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;

public final class v extends t
{
  private Vector c;
  private b d;
  private b e;
  private b f;
  private String g;
  private String h;
  private int i;
  private int j;
  private int k;
  private String l;
  private String m;
  private String n;

  public final String a()
  {
    return this.l;
  }

  public final Map a(b paramb)
  {
    Vector localVector1 = new Vector();
    Vector localVector2 = new Vector();
    Vector localVector3 = new Vector();
    new Vector();
    byte[] arrayOfByte = new byte[paramb.b()];
    System.arraycopy(paramb.a(), 0, arrayOfByte, 0, paramb.b());
    Vector localVector4 = f.a(new b(arrayOfByte, paramb.b()));
    int i1 = 0;
    int i2;
    int i3;
    HashMap localHashMap;
    if (i1 >= localVector4.size())
    {
      i2 = 0;
      if (i2 < localVector1.size())
        break label247;
      i3 = 0;
      if (i3 < localVector2.size())
        break label379;
      this.i = 443;
      localHashMap = new HashMap();
    }
    label247: label379: int i5;
    for (int i4 = 0; ; i4 = i5 + 1)
    {
      if (i4 >= localVector3.size())
      {
        localHashMap.put("User-Agent", "IMTransferAgent/900 CFNetwork/596.2.3 Darwin/12.2.0 (x86_64) (Macmini5%2C1)");
        localHashMap.put("x-apple-request-uuid", c.a());
        localHashMap.put("Connection", "close");
        localHashMap.put("Proxy-Connection", "close");
        return localHashMap;
        g localg1 = (g)localVector4.elementAt(i1);
        if ((localg1.a == f.b) && (localg1.b == 1))
          f.a(localVector1, new b(localg1.d));
        i1++;
        break;
        g localg2 = (g)localVector1.elementAt(i2);
        if ((localg2.a == f.b) && (localg2.b == 2))
          f.a(localVector2, new b(localg2.d));
        while (true)
        {
          i2++;
          break;
          if ((localg2.a == f.b) && (localg2.b == 1))
            this.d = new b(localg2.d);
          else if ((localg2.a == f.b) && (localg2.b == 4))
            this.e = new b(localg2.d);
        }
        g localg3 = (g)localVector2.elementAt(i3);
        if ((localg3.a == f.b) && (localg3.b == 8))
          f.a(localVector3, new b(localg3.d));
        while (true)
        {
          i3++;
          break;
          if ((localg3.a == f.b) && (localg3.b == 1))
            this.g = new String(localg3.d.a(), 0, localg3.d.b());
          else if ((localg3.a == f.b) && (localg3.b == 4))
            this.h = new String(localg3.d.a(), 0, localg3.d.b());
          else if ((localg3.a == f.b) && (localg3.b == 3))
            this.n = new String(localg3.d.a(), 0, localg3.d.b());
        }
      }
      g localg4 = (g)localVector3.elementAt(i4);
      String str1 = new String(localg4.d.a(), 0, localg4.d.b());
      i5 = i4 + 1;
      g localg5 = (g)localVector3.elementAt(i5);
      String str2 = new String(localg5.d.a(), 0, localg5.d.b());
      str1.toLowerCase();
      if (!str1.equals("Content-Length"))
      {
        localHashMap.put(str1, str2);
        Log.d("putfile", str1 + ":" + str2);
      }
    }
  }

  public final void a(Vector paramVector, b paramb)
  {
    this.c = paramVector;
    this.f = paramb;
  }

  public final boolean a(Map paramMap, String paramString)
  {
    paramMap.entrySet();
    String str1 = (String)paramMap.get("Content-MD5");
    String str2 = (String)paramMap.get("ETag");
    if (str1 == null);
    while (true)
    {
      this.l = paramString;
      this.m = str2;
      return true;
      paramString = str1;
    }
  }

  public final String b()
  {
    return this.m;
  }

  public final String c()
  {
    return this.n;
  }

  public final String d()
  {
    return new String(this.d.a(), 0, this.d.b());
  }

  public final String e()
  {
    return new String(this.e.a(), 0, this.e.b());
  }

  public final String f()
  {
    return "https://" + this.g + ":443" + this.h;
  }

  public final b j()
  {
    this.k = 0;
    this.j = 0;
    int i1 = 0;
    int i2 = 0;
    byte[] arrayOfByte;
    int i4;
    int i5;
    if (i1 >= this.c.size())
    {
      this.k = (4 + this.k);
      arrayOfByte = new byte[10 + this.k];
      int i3 = this.c.size();
      arrayOfByte[0] = ((byte)(0xFF & i3 >> 24));
      arrayOfByte[1] = ((byte)(0xFF & i3 >> 16));
      arrayOfByte[2] = ((byte)(0xFF & i3 >> 8));
      arrayOfByte[3] = ((byte)(i3 & 0xFF));
      i4 = 0;
      i5 = 4;
    }
    while (true)
    {
      if (i4 >= this.c.size())
      {
        return new b(arrayOfByte, i5);
        d locald1 = (d)this.c.elementAt(i1);
        this.k = (25 + this.k);
        this.j += locald1.a();
        if (locald1.a() > i2)
          i2 = locald1.a();
        i1++;
        break;
      }
      d locald2 = (d)this.c.elementAt(i4);
      System.arraycopy(locald2.b().a(), 0, arrayOfByte, i5, locald2.b().b());
      int i6 = i5 + locald2.b().b();
      int i7 = locald2.a();
      int i8 = i6 + 1;
      arrayOfByte[i6] = ((byte)(0xFF & i7 >> 24));
      int i9 = i8 + 1;
      arrayOfByte[i8] = ((byte)(0xFF & i7 >> 16));
      int i10 = i9 + 1;
      arrayOfByte[i9] = ((byte)(0xFF & i7 >> 8));
      i5 = i10 + 1;
      arrayOfByte[i10] = ((byte)(i7 & 0xFF));
      i4++;
    }
  }

  public final void k()
  {
    this.a = 1;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     d.v
 * JD-Core Version:    0.6.2
 */