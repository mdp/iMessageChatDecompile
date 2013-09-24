package com.b;

public final class b
{
  public static com.c.b a(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 6;
    com.c.b localb = null;
    while (true)
    {
      if (i >= paramInt)
      {
        if (localb == null)
          localb = new com.c.b(new byte[1], 0);
        return localb;
      }
      int j = i + 1;
      switch (paramArrayOfByte[i])
      {
      default:
        i = j;
        break;
      case 1:
        int k = j + 1;
        int m = 0xFF00 & paramArrayOfByte[j] << 8;
        int n = k + 1;
        int i1 = m | 0xFF & paramArrayOfByte[k];
        byte[] arrayOfByte = new byte[i1];
        System.arraycopy(paramArrayOfByte, n, arrayOfByte, 0, i1);
        localb = new com.c.b(arrayOfByte, i1);
        i = i1 + n;
      }
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.b.b
 * JD-Core Version:    0.6.2
 */