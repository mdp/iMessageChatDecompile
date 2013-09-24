package d;

import android.util.Log;
import com.c.b;
import java.util.Random;

public final class l
{
  public boolean a;
  private int b;
  private b c;
  private long d;
  private long e;
  private int f;
  private byte[] g = new byte[20];
  private b h;
  private b i;
  private b j;

  public final b a()
  {
    return this.j;
  }

  public final void a(int paramInt, b paramb)
  {
    this.b = paramInt;
    this.c = paramb;
    this.a = false;
    Random localRandom = new Random(System.currentTimeMillis());
    do
    {
      localRandom.nextBytes(this.g);
      this.d = (this.g[3] << 24 | this.g[2] << 16 | this.g[1] << 8 | this.g[0]);
    }
    while (this.d == 0L);
  }

  public final void a(b paramb)
  {
    this.a = true;
    this.f = 17;
    int k = 7;
    byte[] arrayOfByte1 = paramb.a();
    while (true)
    {
      if (k >= paramb.b())
      {
        Log.d("Attach In", "mA " + new String(this.h.a()));
        Log.d("Attach In", "mR " + new String(this.i.a()));
        Log.d("Attach In", "mU " + new String(this.j.a()));
        return;
      }
      int m = k + 1;
      switch (arrayOfByte1[k])
      {
      default:
        k = m;
        break;
      case 2:
        int i13 = 1 + (m + 1);
        int i14 = i13 + 1;
        int i15 = 0xFF000000 & arrayOfByte1[i13] << 24;
        int i16 = i14 + 1;
        int i17 = i15 | 0xFF0000 & arrayOfByte1[i14] << 16;
        int i18 = i16 + 1;
        int i19 = i17 | 0xFF00 & arrayOfByte1[i16] << 8;
        k = i18 + 1;
        this.e = (i19 | 0xFF & arrayOfByte1[i18] << 0);
        break;
      case 3:
        k = 1 + (1 + (1 + (1 + (1 + (m + 1)))));
        break;
      case 4:
        int i12 = 1 + (m + 1);
        k = i12 + 1;
        if (arrayOfByte1[i12] == 0)
          this.f = 17;
        else
          this.f = 18;
        break;
      case 5:
        int i8 = m + 1;
        int i9 = 0xFF00 & arrayOfByte1[m] << 8;
        int i10 = i8 + 1;
        int i11 = i9 | 0xFF & arrayOfByte1[i8] << 0;
        byte[] arrayOfByte4 = new byte[i11];
        System.arraycopy(arrayOfByte1, i10, arrayOfByte4, 0, i11);
        this.h = new b(arrayOfByte4, i11);
        k = i11 + i10;
        break;
      case 6:
        int i4 = m + 1;
        int i5 = 0xFF00 & arrayOfByte1[m] << 8;
        int i6 = i4 + 1;
        int i7 = i5 | 0xFF & arrayOfByte1[i4] << 0;
        byte[] arrayOfByte3 = new byte[i7];
        System.arraycopy(arrayOfByte1, i6, arrayOfByte3, 0, i7);
        this.i = new b(arrayOfByte3, i7);
        k = i7 + i6;
        break;
      case 7:
        int n = m + 1;
        int i1 = 0xFF00 & arrayOfByte1[m] << 8;
        int i2 = n + 1;
        int i3 = i1 | 0xFF & arrayOfByte1[n] << 0;
        byte[] arrayOfByte2 = new byte[i3];
        System.arraycopy(arrayOfByte1, i2, arrayOfByte2, 0, i3);
        this.j = new b(arrayOfByte2, i3);
        k = i3 + i2;
      }
    }
  }

  public final b b()
  {
    return this.h;
  }

  public final String c()
  {
    String str1 = new String(this.i.a(), 0, this.i.b());
    String str2 = new String(this.j.a(), 0, this.j.b());
    return str1 + "/" + str2;
  }

  public final long d()
  {
    return this.e;
  }

  public final b e()
  {
    byte[] arrayOfByte1 = new byte[16];
    new Random(System.currentTimeMillis()).nextBytes(arrayOfByte1);
    this.d = (arrayOfByte1[3] << 24 | arrayOfByte1[2] << 16 | arrayOfByte1[1] << 8 | arrayOfByte1[0]);
    this.d = (0x7FFFFFFF & this.d);
    int k = this.c.b();
    int m = k + 28;
    byte[] arrayOfByte2 = new byte[m];
    arrayOfByte2[0] = 4;
    arrayOfByte2[1] = ((byte)(m >> 24));
    arrayOfByte2[2] = ((byte)(m >> 16));
    arrayOfByte2[3] = ((byte)(m >> 8));
    arrayOfByte2[4] = ((byte)(m >> 0));
    arrayOfByte2[5] = 4;
    arrayOfByte2[6] = 5;
    arrayOfByte2[7] = 2;
    arrayOfByte2[8] = 0;
    arrayOfByte2[9] = 4;
    arrayOfByte2[10] = ((byte)(int)(this.d >> 24));
    arrayOfByte2[11] = ((byte)(int)(this.d >> 16));
    arrayOfByte2[12] = ((byte)(int)(this.d >> 8));
    arrayOfByte2[13] = ((byte)(int)this.d);
    arrayOfByte2[14] = 3;
    arrayOfByte2[15] = 0;
    arrayOfByte2[16] = 4;
    arrayOfByte2[17] = ((byte)(this.b >> 24));
    arrayOfByte2[18] = ((byte)(this.b >> 16));
    arrayOfByte2[19] = ((byte)(this.b >> 8));
    arrayOfByte2[20] = ((byte)this.b);
    arrayOfByte2[21] = 4;
    arrayOfByte2[22] = ((byte)(k >> 8));
    arrayOfByte2[23] = ((byte)k);
    System.arraycopy(this.c.a(), 0, arrayOfByte2, 24, k);
    return new b(arrayOfByte2, k + 24);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     d.l
 * JD-Core Version:    0.6.2
 */