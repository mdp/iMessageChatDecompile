package com.b;

import activity.o;
import android.util.Log;
import com.c.b;
import d.w;
import java.io.File;
import java.util.ArrayList;

public final class y
{
  private String a;
  private byte[] b;
  private long c;
  private String d;
  private String e;
  private String f;
  private w g;
  private int h;

  public y(o paramo)
  {
    String str = paramo.b();
    int i = str.indexOf("||");
    if (i != -1);
    for (this.a = str.substring(0, i); ; this.a = paramo.b())
    {
      Log.d("send", "toUser" + this.a);
      this.f = paramo.e();
      this.e = paramo.f();
      if (this.e == null)
        this.e = "";
      this.c = paramo.m();
      this.b = paramo.o();
      return;
    }
  }

  private static String a(String paramString1, String paramString2, String paramString3)
  {
    return paramString1 + paramString2 + "=\"" + paramString3 + "\"";
  }

  public final int a()
  {
    return 0x7FFFFFFF & (this.b[3] << 24 | this.b[2] << 16 | this.b[1] << 8 | this.b[0]);
  }

  public final void a(w paramw)
  {
    this.g = paramw;
  }

  public final void a(String paramString)
  {
    this.e = (this.e + "<span style=\"font-family: 'Helvetica';font-size: 12px;\">" + paramString + "</span>");
    this.d += paramString;
  }

  public final void a(String paramString1, int paramInt, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    String str1 = Integer.toString(paramInt);
    String str2 = a(a(a(a("<FILE", " name", paramString1), " width", "0"), " height", "0"), " datasize", str1);
    if (paramString2.length() > 0)
      str2 = a(str2, " mime-type", paramString2);
    String str3 = a(a(a(a(a(a(str2, " uti-type", paramString3), " mmcs-owner", paramString4), " mmcs-url", paramString5), " mmcs-signature-hex", paramString6), " file-size", str1), " decryption-key", new StringBuilder("00").append(paramString7).toString()) + "/>";
    this.e += str3;
    this.d = (this.d + " " + paramString1 + " ");
  }

  public final boolean b()
  {
    int i = this.f.indexOf("STARTFILE:");
    int j = this.f.indexOf(":ENDFILE");
    if ((i != -1) && (j != -1) && (this.e.length() == 0))
      return true;
    this.d = this.f;
    return false;
  }

  public final String c()
  {
    return this.e;
  }

  public final ArrayList d()
  {
    int i = 0;
    ArrayList localArrayList = new ArrayList();
    this.h = 0;
    Log.d("Send", "socontext" + this.f);
    while (true)
    {
      if (i >= this.f.length());
      int j;
      int k;
      do
      {
        if (i < this.f.length())
        {
          String str3 = this.f.substring(i);
          if (str3.length() > 0)
            localArrayList.add(str3);
        }
        return localArrayList;
        j = this.f.indexOf("STARTFILE:", i);
        k = this.f.indexOf(":ENDFILE", i);
      }
      while ((j == -1) || (k == -1));
      String str1 = this.f.substring(i, j);
      if (str1.length() > 0)
        localArrayList.add(str1);
      i = k + 8;
      Log.d("Send", "start:" + j + " end:" + k);
      String str2 = this.f.substring(j, i);
      File localFile = new File(str2.substring(10, str2.lastIndexOf(":ENDFILE")));
      this.h += (int)localFile.length();
      localArrayList.add(str2);
    }
  }

  public final b e()
  {
    int i = this.a.getBytes().length;
    int j = this.d.getBytes().length;
    int k = this.e.getBytes().length;
    ArrayList localArrayList1 = this.g.c();
    ArrayList localArrayList2 = this.g.b();
    ArrayList localArrayList3 = this.g.d();
    int m = 0;
    int n = 0;
    byte[] arrayOfByte1;
    int i3;
    int i4;
    label174: byte[] arrayOfByte2;
    int i16;
    int i17;
    label351: int i21;
    byte[] arrayOfByte3;
    int i22;
    label410: byte[] arrayOfByte7;
    int i38;
    label474: int i24;
    if (m >= localArrayList1.size())
    {
      int i1 = n + (42 + (k + (i + j)));
      arrayOfByte1 = new byte[i1];
      int i2 = i1 - 5;
      arrayOfByte1[0] = 4;
      arrayOfByte1[1] = ((byte)(i2 >> 24));
      arrayOfByte1[2] = ((byte)(i2 >> 16));
      arrayOfByte1[3] = ((byte)(i2 >> 8));
      arrayOfByte1[4] = ((byte)i2);
      arrayOfByte1[5] = 4;
      arrayOfByte1[6] = 1;
      arrayOfByte1[7] = 1;
      arrayOfByte1[8] = 0;
      i3 = 10;
      arrayOfByte1[9] = 16;
      i4 = 0;
      if (i4 < 16)
        break label558;
      int i6 = i3 + 1;
      arrayOfByte1[i3] = 2;
      int i7 = i6 + 1;
      arrayOfByte1[i6] = 0;
      int i8 = i7 + 1;
      arrayOfByte1[i7] = 4;
      int i9 = i8 + 1;
      arrayOfByte1[i8] = ((byte)(int)(this.c >> 24));
      int i10 = i9 + 1;
      arrayOfByte1[i9] = ((byte)(int)(this.c >> 16));
      int i11 = i10 + 1;
      arrayOfByte1[i10] = ((byte)(int)(this.c >> 8));
      int i12 = i11 + 1;
      arrayOfByte1[i11] = ((byte)(int)this.c);
      int i13 = i12 + 1;
      arrayOfByte1[i12] = 3;
      int i14 = i13 + 1;
      arrayOfByte1[i13] = ((byte)(i >> 8));
      int i15 = i14 + 1;
      arrayOfByte1[i14] = ((byte)i);
      arrayOfByte2 = this.a.getBytes();
      i16 = i15;
      i17 = 0;
      if (i17 < i)
        break label586;
      int i19 = i16 + 1;
      arrayOfByte1[i16] = 5;
      int i20 = i19 + 1;
      arrayOfByte1[i19] = ((byte)(j >> 8));
      i21 = i20 + 1;
      arrayOfByte1[i20] = ((byte)j);
      arrayOfByte3 = this.d.getBytes();
      i22 = 0;
      if (i22 < j)
        break label612;
      if (k > 0)
      {
        int i36 = i21 + 1;
        arrayOfByte1[i21] = 6;
        int i37 = i36 + 1;
        arrayOfByte1[i36] = ((byte)(k >> 8));
        i21 = i37 + 1;
        arrayOfByte1[i37] = ((byte)k);
        arrayOfByte7 = this.e.getBytes();
        i38 = 0;
        if (i38 < k)
          break label638;
      }
      i24 = 0;
    }
    label558: label586: label612: label638: int i35;
    for (int i25 = i21; ; i25 = i35)
    {
      if (i24 >= localArrayList1.size())
      {
        return new b(arrayOfByte1, i25);
        n += 6 + (((byte[])localArrayList1.get(m)).length + ((byte[])localArrayList2.get(m)).length + ((byte[])localArrayList3.get(m)).length);
        m++;
        break;
        int i5 = i3 + 1;
        arrayOfByte1[i3] = this.b[i4];
        i4++;
        i3 = i5;
        break label174;
        int i18 = i16 + 1;
        arrayOfByte1[i16] = arrayOfByte2[i17];
        i17++;
        i16 = i18;
        break label351;
        int i23 = i21 + 1;
        arrayOfByte1[i21] = arrayOfByte3[i22];
        i22++;
        i21 = i23;
        break label410;
        int i39 = i21 + 1;
        arrayOfByte1[i21] = arrayOfByte7[i38];
        i38++;
        i21 = i39;
        break label474;
      }
      byte[] arrayOfByte4 = (byte[])localArrayList1.get(i24);
      byte[] arrayOfByte5 = (byte[])localArrayList2.get(i24);
      byte[] arrayOfByte6 = (byte[])localArrayList3.get(i24);
      int i26 = 3 + (arrayOfByte4.length + arrayOfByte5.length + arrayOfByte6.length);
      int i27 = i25 + 1;
      arrayOfByte1[i25] = 10;
      int i28 = i27 + 1;
      arrayOfByte1[i27] = ((byte)(i26 >> 8));
      int i29 = i28 + 1;
      arrayOfByte1[i28] = ((byte)i26);
      int i30 = i29 + 1;
      arrayOfByte1[i29] = ((byte)arrayOfByte4.length);
      System.arraycopy(arrayOfByte4, 0, arrayOfByte1, i30, arrayOfByte4.length);
      int i31 = i30 + arrayOfByte4.length;
      int i32 = i31 + 1;
      arrayOfByte1[i31] = ((byte)arrayOfByte5.length);
      System.arraycopy(arrayOfByte5, 0, arrayOfByte1, i32, arrayOfByte5.length);
      int i33 = i32 + arrayOfByte5.length;
      int i34 = i33 + 1;
      arrayOfByte1[i33] = ((byte)arrayOfByte6.length);
      System.arraycopy(arrayOfByte6, 0, arrayOfByte1, i34, arrayOfByte6.length);
      i35 = i34 + arrayOfByte6.length;
      i24++;
    }
  }

  public final void f()
  {
    this.e = "<html><body style=\"background-color:#e9e9e9;color:#000000;\">";
    this.d = "";
  }

  public final void g()
  {
    this.e += "</body><html>";
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.b.y
 * JD-Core Version:    0.6.2
 */