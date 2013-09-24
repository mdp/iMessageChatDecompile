package com.b;

import activity.o;
import android.util.Log;
import com.c.a;
import com.c.b;
import java.io.Serializable;
import java.util.ArrayList;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.select.Elements;

public final class w
  implements Serializable
{
  private String a;
  private byte[] b;
  private long c;
  private long d;
  private String e;
  private String f;
  private boolean g;
  private String h;
  private String i;
  private String j;
  private String k;
  private String l;
  private String m;
  private int n;
  private boolean o = false;

  public w()
  {
  }

  public w(o paramo)
  {
    this.a = paramo.b();
    this.c = paramo.m();
    this.b = new byte[16];
    System.arraycopy(paramo.o(), 0, this.b, 0, 16);
    this.e = paramo.e();
    this.d = 0L;
    this.f = paramo.f();
  }

  private static String a(String paramString1, String paramString2)
  {
    int i1 = paramString1.indexOf(paramString2);
    int i2 = paramString1.indexOf("\"", 2 + (i1 + paramString2.length()));
    if ((i1 != -1) && (i2 != -1))
      return paramString1.substring(2 + (i1 + paramString2.length()), i2);
    return null;
  }

  public final String a()
  {
    return this.f;
  }

  public final boolean a(b paramb)
  {
    byte[] arrayOfByte1 = paramb.a();
    int i1 = 7;
    while (true)
    {
      if (i1 >= paramb.b())
        return true;
      int i2 = i1 + 1;
      switch (arrayOfByte1[i1])
      {
      case 3:
      case 7:
      case 8:
      default:
        i1 = i2;
        break;
      case 1:
        int i29 = i2 + 1;
        int i30 = 0xFF00 & arrayOfByte1[i2] << 8;
        int i31 = i29 + 1;
        int i32 = i30 | 0xFF & arrayOfByte1[i29] << 0;
        this.b = new byte[i32];
        System.arraycopy(arrayOfByte1, i31, this.b, 0, i32);
        i1 = i32 + i31;
        break;
      case 2:
        int i22 = 1 + (i2 + 1);
        int i23 = i22 + 1;
        int i24 = 0xFF000000 & arrayOfByte1[i22] << 24;
        int i25 = i23 + 1;
        int i26 = i24 | 0xFF0000 & arrayOfByte1[i23] << 16;
        int i27 = i25 + 1;
        int i28 = i26 | 0xFF00 & arrayOfByte1[i25] << 8;
        i1 = i27 + 1;
        this.c = (i28 | 0xFF & arrayOfByte1[i27] << 0);
        break;
      case 4:
        int i18 = i2 + 1;
        int i19 = 0xFF00 & arrayOfByte1[i2] << 8;
        int i20 = i18 + 1;
        int i21 = i19 | 0xFF & arrayOfByte1[i18] << 0;
        byte[] arrayOfByte4 = new byte[i21];
        System.arraycopy(arrayOfByte1, i20, arrayOfByte4, 0, i21);
        i1 = i21 + i20;
        this.a = new String(arrayOfByte4);
        if (this.a.startsWith("mailto:", 0))
          this.a = this.a.substring(7);
        Log.d("From User", this.a);
        break;
      case 5:
        int i14 = i2 + 1;
        int i15 = 0xFF00 & arrayOfByte1[i2] << 8;
        int i16 = i14 + 1;
        int i17 = i15 | 0xFF & arrayOfByte1[i14];
        byte[] arrayOfByte3 = new byte[i17];
        System.arraycopy(arrayOfByte1, i16, arrayOfByte3, 0, i17);
        i1 = i17 + i16;
        this.e = new String(arrayOfByte3);
        Log.d("Recive", "Msg :" + this.e);
        break;
      case 6:
        int i10 = i2 + 1;
        int i11 = 0xFF00 & arrayOfByte1[i2] << 8;
        int i12 = i10 + 1;
        int i13 = i11 | 0xFF & arrayOfByte1[i10];
        byte[] arrayOfByte2 = new byte[i13];
        System.arraycopy(arrayOfByte1, i12, arrayOfByte2, 0, i13);
        i1 = i13 + i12;
        this.f = new String(arrayOfByte2);
        break;
      case 9:
        int i3 = 1 + (i2 + 1);
        int i4 = i3 + 1;
        int i5 = 0xFF000000 & arrayOfByte1[i3] << 24;
        int i6 = i4 + 1;
        int i7 = i5 | 0xFF0000 & arrayOfByte1[i4] << 16;
        int i8 = i6 + 1;
        int i9 = i7 | 0xFF00 & arrayOfByte1[i6] << 8;
        i1 = i8 + 1;
        this.d = (i9 | 0xFF & arrayOfByte1[i8] << 0);
      }
    }
  }

  public final byte[] b()
  {
    return this.b;
  }

  public final long c()
  {
    this.c = (this.b[3] << 24 | this.b[2] << 16 | this.b[1] << 8 | this.b[0]);
    return this.c;
  }

  public final String d()
  {
    return this.a;
  }

  public final String e()
  {
    return this.e;
  }

  public final ArrayList f()
  {
    ArrayList localArrayList = new ArrayList();
    this.e = "";
    Element localElement = Jsoup.a(this.f, "gb2312").l().a("body").a(0);
    int i1 = 0;
    if (i1 >= localElement.y())
      return localArrayList;
    Node localNode = localElement.a(i1);
    Log.d("Recive", "XMsg getText:" + localNode.toString());
    String str1 = localNode.toString();
    if (i1 != 0)
      this.e += "\n";
    String str2 = localNode.a();
    if ((str2 != null) && (str2.toLowerCase().equals("file")))
    {
      this.g = true;
      this.h = a(str1, "name");
      this.e = (this.e + "STARTFILE:" + a.a + this.h + ":ENDFILE");
      this.i = a(str1, "mime-type");
      this.j = a(str1, "uti-type");
      this.k = a(str1, "mmcs-owner");
      this.l = a(str1, "mmcs-url");
      this.m = a(str1, "decryption-key");
      this.n = Integer.parseInt(a(str1, "file-size"));
      localArrayList.add(str1);
    }
    while (true)
    {
      i1++;
      break;
      if ((str2 != null) && (str2.toLowerCase().equals("span")))
        for (int i2 = 0; i2 < localNode.y(); i2++)
          this.e += localNode.a(i2).toString();
      else
        this.e += str1;
    }
  }

  public final boolean g()
  {
    return this.f.indexOf("<FILE") != -1;
  }

  public final long h()
  {
    return this.c;
  }

  public final boolean i()
  {
    return ((this.e == null) || (this.e.length() <= 0)) && ((this.f == null) || (this.f.length() <= 0));
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.b.w
 * JD-Core Version:    0.6.2
 */