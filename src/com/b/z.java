package com.b;

import com.c.b;

public final class z
{
  private int a;
  private boolean b;
  private byte[] c = new byte[16];
  private long d;

  public final int a()
  {
    return this.a;
  }

  public final void a(b paramb)
  {
    this.b = true;
    byte[] arrayOfByte = paramb.a();
    int i = 7;
    while (true)
    {
      if (i >= paramb.b())
        return;
      int j = i + 1;
      switch (arrayOfByte[i])
      {
      default:
        i = j;
        break;
      case 1:
        int i6 = j + 1;
        int i7 = 0xFF00 & arrayOfByte[j] << 8;
        int i8 = i6 + 1;
        int i9 = i7 | arrayOfByte[i6];
        System.arraycopy(arrayOfByte, i8, this.c, 0, i9);
        i = i9 + i8;
        break;
      case 2:
        int m = 1 + (j + 1);
        int n = m + 1;
        int i1 = 0xFF000000 & arrayOfByte[m] << 24;
        int i2 = n + 1;
        int i3 = i1 | 0xFF0000 & arrayOfByte[n] << 16;
        int i4 = i2 + 1;
        int i5 = i3 | 0xFF00 & arrayOfByte[i2] << 8;
        i = i4 + 1;
        this.d = (i5 | 0xFF & arrayOfByte[i4]);
        break;
      case 7:
        int k = 1 + (j + 1);
        i = k + 1;
        this.a = arrayOfByte[k];
      }
    }
  }

  public final long b()
  {
    return this.d;
  }

  public final long c()
  {
    return 0x7FFFFFFF & (this.c[3] << 24 | this.c[2] << 16 | this.c[1] << 8 | this.c[0]);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.b.z
 * JD-Core Version:    0.6.2
 */