package com.b;

import android.util.Base64;
import com.a.c;
import com.c.b;
import java.io.Serializable;

public final class p
  implements Serializable
{
  private boolean a;
  private boolean b;

  public static b a()
  {
    byte[] arrayOfByte = new byte[10];
    arrayOfByte[0] = 3;
    arrayOfByte[4] = 5;
    arrayOfByte[5] = 4;
    arrayOfByte[6] = 1;
    arrayOfByte[8] = 1;
    arrayOfByte[9] = 112;
    return new b(arrayOfByte, arrayOfByte.length);
  }

  public final void a(b paramb)
  {
    byte[] arrayOfByte1 = paramb.a();
    int i = 6;
    this.b = false;
    while (true)
    {
      if (i >= paramb.b())
        return;
      int j = i + 1;
      switch (arrayOfByte1[i])
      {
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      default:
        i = j;
        break;
      case 1:
        int i12 = 1 + (j + 1);
        i = i12 + 1;
        if (arrayOfByte1[i12] == 0)
          this.a = true;
        else
          this.a = false;
        break;
      case 2:
        int i8 = j + 1;
        int i9 = 0xFF00 & arrayOfByte1[j] << 8;
        int i10 = i8 + 1;
        int i11 = i9 | 0xFF & arrayOfByte1[i8];
        byte[] arrayOfByte4 = new byte[i11];
        System.arraycopy(arrayOfByte1, i10, arrayOfByte4, 0, i11);
        i = i11 + i10;
        e.c.d = Base64.decode(new String(arrayOfByte4), 0);
        this.b = true;
        break;
      case 3:
        int i2 = j + 1;
        int i3 = 0xFF00 & arrayOfByte1[j] << 8;
        int i4 = i2 + 1;
        int i5 = i3 | 0xFF & arrayOfByte1[i2];
        byte[] arrayOfByte3 = new byte[i5];
        System.arraycopy(arrayOfByte1, i4, arrayOfByte3, 0, i5);
        i = i5 + i4;
        String str = new String(arrayOfByte3);
        int i6 = str.indexOf("-----BEGIN RSA PRIVATE KEY-----");
        int i7 = str.indexOf("-----END RSA PRIVATE KEY-----");
        e.c.c = Base64.decode(str.substring(i6 + "-----BEGIN RSA PRIVATE KEY-----".length(), i7), 0);
        break;
      case 9:
        int k = j + 1;
        int m = 0xFF00 & arrayOfByte1[j] << 8;
        int n = k + 1;
        int i1 = m | 0xFF & arrayOfByte1[k];
        byte[] arrayOfByte2 = new byte[i1];
        System.arraycopy(arrayOfByte1, n, arrayOfByte2, 0, i1);
        e.c.f = arrayOfByte2;
        i = i1 + n;
      }
    }
  }

  public final void a(String paramString, c paramc)
  {
    if (!this.b)
    {
      paramc.d(paramString);
      return;
    }
    paramc.e(paramString);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.b.p
 * JD-Core Version:    0.6.2
 */