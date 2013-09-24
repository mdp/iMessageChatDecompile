package com.c;

import java.io.Serializable;

public final class b
  implements Serializable
{
  private byte[] a;
  private int b;

  public b()
  {
  }

  public b(b paramb)
  {
    this.a = new byte[paramb.b];
    this.b = paramb.b;
    System.arraycopy(paramb.a, 0, this.a, 0, this.b);
  }

  public b(byte[] paramArrayOfByte, int paramInt)
  {
    this.a = paramArrayOfByte;
    this.b = paramInt;
  }

  public final void a(byte[] paramArrayOfByte, int paramInt)
  {
    this.a = paramArrayOfByte;
    this.b = paramInt;
  }

  public final byte[] a()
  {
    return this.a;
  }

  public final int b()
  {
    return this.b;
  }

  public final void c()
  {
    int i = 0;
    if (i >= this.b / 2)
    {
      this.b /= 2;
      return;
    }
    int j = this.a[(i * 2)];
    int k = this.a[(1 + i * 2)];
    if ((j >= 48) && (j <= 57))
    {
      j -= 48;
      label58: if ((k < 48) || (k > 57))
        break label137;
      k -= 48;
    }
    while (true)
    {
      this.a[i] = ((byte)(k | j << 4));
      i++;
      break;
      if ((j >= 97) && (j <= 102))
      {
        j = 10 + (j - 97);
        break label58;
      }
      if ((j < 65) || (j > 70))
        break label58;
      j = 10 + (j - 65);
      break label58;
      label137: if ((k >= 97) && (k <= 102))
        k = 10 + (k - 97);
      else if ((k >= 65) && (k <= 70))
        k = 10 + (k - 65);
    }
  }

  public final String d()
  {
    byte[] arrayOfByte = new byte[1 + 2 * this.b];
    int i = 0;
    if (i >= this.b)
      return new String(arrayOfByte, 0, 2 * this.b);
    int j = (byte)(0xF & this.a[i] >> 4);
    label70: int k;
    if ((j >= 0) && (j <= 9))
    {
      arrayOfByte[(i * 2)] = ((byte)(j + 48));
      k = (byte)(0xF & this.a[i]);
      if ((k < 0) || (k > 9))
        break label129;
      arrayOfByte[(1 + i * 2)] = ((byte)(k + 48));
    }
    while (true)
    {
      i++;
      break;
      arrayOfByte[(i * 2)] = ((byte)(-10 + (j + 97)));
      break label70;
      label129: arrayOfByte[(1 + i * 2)] = ((byte)(-10 + (k + 97)));
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.c.b
 * JD-Core Version:    0.6.2
 */