package e;

public final class b
{
  public static byte[] a(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = new byte[paramArrayOfByte.length];
    for (int i = 0; ; i++)
    {
      if (i >= arrayOfByte.length)
        return arrayOfByte;
      int j = paramArrayOfByte[i];
      arrayOfByte[i] = ((byte)(0xF0 & j << 4 | 0xF & j >> 4));
      arrayOfByte[i] = ((byte)(0xFFFFFFFA ^ arrayOfByte[i]));
    }
  }

  public static byte[] b(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = new byte[paramArrayOfByte.length];
    for (int i = 0; ; i++)
    {
      if (i >= arrayOfByte.length)
        return arrayOfByte;
      arrayOfByte[i] = ((byte)(0xFFFFFFFA ^ paramArrayOfByte[i]));
      arrayOfByte[i] = ((byte)(0xF0 & arrayOfByte[i] << 4 | 0xF & arrayOfByte[i] >> 4));
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     e.b
 * JD-Core Version:    0.6.2
 */