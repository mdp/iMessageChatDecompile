package com.b;

import com.c.b;

public final class o
{
  private static int e = 16;
  private String a;
  private byte[] b;
  private byte[] c;
  private byte[] d;

  public o(String paramString, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3)
  {
    this.a = paramString;
    this.b = paramArrayOfByte1;
    this.c = paramArrayOfByte2;
    this.d = paramArrayOfByte3;
  }

  public final b a()
  {
    int i = this.a.length();
    int j = this.c.length;
    int k = this.d.length;
    int m = this.b.length;
    int n = k + (j + (m + (i + 19)));
    byte[] arrayOfByte1 = new byte[n];
    int i1 = n - 5;
    arrayOfByte1[0] = 2;
    arrayOfByte1[1] = ((byte)(i1 >> 24));
    arrayOfByte1[2] = ((byte)(i1 >> 16));
    arrayOfByte1[3] = ((byte)(i1 >> 8));
    arrayOfByte1[4] = ((byte)i1);
    arrayOfByte1[5] = 4;
    arrayOfByte1[6] = 2;
    arrayOfByte1[7] = 5;
    arrayOfByte1[8] = ((byte)(i << 8));
    arrayOfByte1[9] = ((byte)i);
    byte[] arrayOfByte2 = this.a.getBytes();
    int i2 = 10;
    int i3 = 0;
    while (true)
    {
      if (i3 >= i)
      {
        int i5 = i2 + 1;
        arrayOfByte1[i2] = 7;
        int i6 = i5 + 1;
        arrayOfByte1[i5] = ((byte)(j >> 8));
        int i7 = i6 + 1;
        arrayOfByte1[i6] = ((byte)j);
        System.arraycopy(this.c, 0, arrayOfByte1, i7, j);
        int i8 = i7 + j;
        int i9 = i8 + 1;
        arrayOfByte1[i8] = 8;
        int i10 = i9 + 1;
        arrayOfByte1[i9] = ((byte)(k >> 8));
        int i11 = i10 + 1;
        arrayOfByte1[i10] = ((byte)k);
        System.arraycopy(this.d, 0, arrayOfByte1, i11, k);
        int i12 = i11 + k;
        int i13 = i12 + 1;
        arrayOfByte1[i12] = 9;
        int i14 = i13 + 1;
        arrayOfByte1[i13] = ((byte)(m >> 8));
        int i15 = i14 + 1;
        arrayOfByte1[i14] = ((byte)m);
        System.arraycopy(this.b, 0, arrayOfByte1, i15, m);
        return new b(arrayOfByte1, i15 + m);
      }
      int i4 = i2 + 1;
      arrayOfByte1[i2] = arrayOfByte2[i3];
      i3++;
      i2 = i4;
    }
  }

  public final b b()
  {
    byte[] arrayOfByte1 = this.b;
    int i = this.a.length();
    int j = arrayOfByte1.length;
    int k = this.c.length;
    int m = this.d.length;
    int n = m + (k + (j + (i + 20)));
    byte[] arrayOfByte2 = new byte[n];
    int i1 = n - 5;
    arrayOfByte2[0] = 2;
    arrayOfByte2[1] = ((byte)(i1 >> 24));
    arrayOfByte2[2] = ((byte)(i1 >> 16));
    arrayOfByte2[3] = ((byte)(i1 >> 8));
    arrayOfByte2[4] = ((byte)i1);
    arrayOfByte2[5] = 4;
    arrayOfByte2[6] = 1;
    arrayOfByte2[7] = 1;
    arrayOfByte2[8] = 5;
    arrayOfByte2[9] = ((byte)(i >> 8));
    arrayOfByte2[10] = ((byte)i);
    byte[] arrayOfByte3 = this.a.getBytes();
    int i2 = 11;
    int i3 = 0;
    int i8;
    int i9;
    if (i3 >= i)
    {
      int i5 = i2 + 1;
      arrayOfByte2[i2] = 6;
      int i6 = i5 + 1;
      arrayOfByte2[i5] = ((byte)(j >> 8));
      int i7 = i6 + 1;
      arrayOfByte2[i6] = ((byte)j);
      i8 = i7;
      i9 = 0;
    }
    while (true)
    {
      if (i9 >= j)
      {
        int i11 = i8 + 1;
        arrayOfByte2[i8] = 7;
        int i12 = i11 + 1;
        arrayOfByte2[i11] = ((byte)(k >> 8));
        int i13 = i12 + 1;
        arrayOfByte2[i12] = ((byte)k);
        System.arraycopy(this.c, 0, arrayOfByte2, i13, k);
        int i14 = i13 + k;
        int i15 = i14 + 1;
        arrayOfByte2[i14] = 8;
        int i16 = i15 + 1;
        arrayOfByte2[i15] = ((byte)(m >> 8));
        int i17 = i16 + 1;
        arrayOfByte2[i16] = ((byte)m);
        System.arraycopy(this.d, 0, arrayOfByte2, i17, m);
        return new b(arrayOfByte2, i17 + m);
        int i4 = i2 + 1;
        arrayOfByte2[i2] = arrayOfByte3[i3];
        i3++;
        i2 = i4;
        break;
      }
      int i10 = i8 + 1;
      arrayOfByte2[i8] = arrayOfByte1[i9];
      i9++;
      i8 = i10;
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.b.o
 * JD-Core Version:    0.6.2
 */