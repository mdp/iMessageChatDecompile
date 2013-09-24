package com.b;

import com.c.b;

public final class t
{
  private int a;
  private String b;

  public t(int paramInt, String paramString)
  {
    this.a = paramInt;
    this.b = paramString;
  }

  public final b a()
  {
    byte[] arrayOfByte1 = this.b.getBytes();
    int i = arrayOfByte1.length;
    int j = i + 16;
    byte[] arrayOfByte2 = new byte[j];
    int k = j - 5;
    arrayOfByte2[0] = 14;
    arrayOfByte2[1] = ((byte)(k >> 24));
    arrayOfByte2[2] = ((byte)(k >> 16));
    arrayOfByte2[3] = ((byte)(k >> 8));
    arrayOfByte2[4] = ((byte)(k >> 0));
    arrayOfByte2[5] = 4;
    arrayOfByte2[6] = 1;
    arrayOfByte2[7] = 0;
    arrayOfByte2[8] = 4;
    arrayOfByte2[9] = ((byte)(this.a >> 24));
    arrayOfByte2[10] = ((byte)(this.a >> 16));
    arrayOfByte2[11] = ((byte)(this.a >> 8));
    arrayOfByte2[12] = ((byte)(this.a >> 0));
    arrayOfByte2[13] = 2;
    arrayOfByte2[14] = ((byte)(i >> 8));
    arrayOfByte2[15] = ((byte)(i >> 0));
    System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 16, i);
    return new b(arrayOfByte2, 16);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.b.t
 * JD-Core Version:    0.6.2
 */