package com.c;

import e.c;

public final class f
{
  public static void a(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 6;
    while (true)
    {
      if (i >= paramInt)
        return;
      int j = i + 1;
      switch (paramArrayOfByte[i])
      {
      default:
        i = j;
        break;
      case 1:
        int i2 = j + 1;
        int i3 = 0xFF00 & paramArrayOfByte[j] << 8;
        int i4 = i2 + 1;
        int i5 = i3 | 0xFF & paramArrayOfByte[i2];
        byte[] arrayOfByte2 = new byte[i5];
        System.arraycopy(paramArrayOfByte, i4, arrayOfByte2, 0, i5);
        i = i5 + i4;
        c.m = new String(arrayOfByte2);
        break;
      case 2:
        int k = j + 1;
        int m = 0xFF00 & paramArrayOfByte[j] << 8;
        int n = k + 1;
        int i1 = m | 0xFF & paramArrayOfByte[k];
        byte[] arrayOfByte1 = new byte[i1];
        System.arraycopy(paramArrayOfByte, n, arrayOfByte1, 0, i1);
        i = i1 + n;
        if ((c.m == null) || (c.m.length() == 0))
          c.m = new String(arrayOfByte1);
        break;
      }
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.c.f
 * JD-Core Version:    0.6.2
 */