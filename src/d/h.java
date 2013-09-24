package d;

import android.util.Log;
import com.c.b;
import java.util.Random;

public final class h
{
  private b a;
  private b b;
  private b c;
  private b d;
  private byte[] e = new byte[20];
  private long f;
  private long g;
  private long h;
  private boolean i;
  private int j;

  public final b a()
  {
    return this.d;
  }

  public final void a(b paramb)
  {
    this.i = true;
    this.j = 17;
    int k = 7;
    byte[] arrayOfByte1 = paramb.a();
    while (true)
    {
      if (k >= paramb.b())
      {
        Log.d("Attach In", "mA " + new String(this.c.a()));
        Log.d("Attach In", "mU " + new String(this.d.a()));
        return;
      }
      int m = k + 1;
      switch (arrayOfByte1[k])
      {
      default:
        k = m;
        break;
      case 2:
        int i16 = 1 + (m + 1);
        int i17 = i16 + 1;
        int i18 = 0xFF000000 & arrayOfByte1[i16] << 24;
        int i19 = i17 + 1;
        int i20 = i18 | 0xFF0000 & arrayOfByte1[i17] << 16;
        int i21 = i19 + 1;
        int i22 = i20 | 0xFF00 & arrayOfByte1[i19] << 8;
        k = i21 + 1;
        this.g = (i22 | 0xFF & arrayOfByte1[i21] << 0);
        break;
      case 3:
        int i9 = 1 + (m + 1);
        int i10 = i9 + 1;
        int i11 = 0xFF000000 & arrayOfByte1[i9] << 24;
        int i12 = i10 + 1;
        int i13 = i11 | 0xFF0000 & arrayOfByte1[i10] << 16;
        int i14 = i12 + 1;
        int i15 = i13 | 0xFF00 & arrayOfByte1[i12] << 8;
        k = i14 + 1;
        this.h = (i15 | 0xFF & arrayOfByte1[i14] << 0);
        break;
      case 4:
        int i8 = 1 + (m + 1);
        k = i8 + 1;
        if (arrayOfByte1[i8] == 0)
          this.j = 17;
        else
          this.j = 18;
        break;
      case 5:
        int i4 = m + 1;
        int i5 = 0xFF00 & arrayOfByte1[m] << 8;
        int i6 = i4 + 1;
        int i7 = i5 | 0xFF & arrayOfByte1[i4] << 0;
        byte[] arrayOfByte3 = new byte[i7];
        System.arraycopy(arrayOfByte1, i6, arrayOfByte3, 0, i7);
        this.c = new b(arrayOfByte3, i7);
        k = i7 + i6;
        break;
      case 6:
        int n = m + 1;
        int i1 = 0xFF00 & arrayOfByte1[m] << 8;
        int i2 = n + 1;
        int i3 = i1 | 0xFF & arrayOfByte1[n] << 0;
        byte[] arrayOfByte2 = new byte[i3];
        System.arraycopy(arrayOfByte1, i2, arrayOfByte2, 0, i3);
        this.d = new b(arrayOfByte2, i3);
        k = i3 + i2;
      }
    }
  }

  public final void a(b paramb1, b paramb2)
  {
    this.a = paramb1;
    this.b = paramb2;
    this.i = false;
    Random localRandom = new Random(System.currentTimeMillis());
    do
    {
      localRandom.nextBytes(this.e);
      this.f = (this.e[3] << 24 | this.e[2] << 16 | this.e[1] << 8 | this.e[0]);
    }
    while (this.f == 0L);
  }

  public final b b()
  {
    return this.c;
  }

  public final b c()
  {
    int k = this.b.b();
    int m = this.a.b();
    int n = m + (3 + (k + 17));
    byte[] arrayOfByte1 = this.b.a();
    byte[] arrayOfByte2 = this.a.a();
    byte[] arrayOfByte3 = new byte[n];
    arrayOfByte3[0] = 4;
    arrayOfByte3[1] = ((byte)(n >> 24));
    arrayOfByte3[2] = ((byte)(n >> 16));
    arrayOfByte3[3] = ((byte)(n >> 8));
    arrayOfByte3[4] = ((byte)(n >> 0));
    arrayOfByte3[5] = 4;
    arrayOfByte3[6] = 7;
    arrayOfByte3[7] = 2;
    arrayOfByte3[8] = 0;
    arrayOfByte3[9] = 4;
    arrayOfByte3[10] = ((byte)(int)(this.f >> 24));
    arrayOfByte3[11] = ((byte)(int)(this.f >> 16));
    arrayOfByte3[12] = ((byte)(int)(this.f >> 8));
    arrayOfByte3[13] = ((byte)(int)this.f);
    arrayOfByte3[14] = 3;
    arrayOfByte3[15] = ((byte)(k >> 8));
    arrayOfByte3[16] = ((byte)k);
    System.arraycopy(arrayOfByte1, 0, arrayOfByte3, 17, k);
    int i1 = k + 17;
    int i2 = i1 + 1;
    arrayOfByte3[i1] = 4;
    int i3 = i2 + 1;
    arrayOfByte3[i2] = ((byte)(m >> 8));
    int i4 = i3 + 1;
    arrayOfByte3[i3] = ((byte)m);
    System.arraycopy(arrayOfByte2, 0, arrayOfByte3, i4, m);
    return new b(arrayOfByte3, i4 + m);
  }

  public final boolean d()
  {
    return this.i;
  }

  public final long e()
  {
    return this.g;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     d.h
 * JD-Core Version:    0.6.2
 */