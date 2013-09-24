package a;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class b
{
  private MessageDigest a;
  private com.c.b b;

  public final boolean a()
  {
    try
    {
      this.a = MessageDigest.getInstance("SHA-1");
      byte[] arrayOfByte1 = new byte[1 + "com.apple.XattrObjectSalt".length()];
      System.arraycopy("com.apple.XattrObjectSalt".getBytes(), 0, arrayOfByte1, 0, "com.apple.XattrObjectSalt".length());
      arrayOfByte1["com.apple.XattrObjectSalt".length()] = 0;
      this.a.update(arrayOfByte1);
      byte[] arrayOfByte2 = new byte[1 + "com.apple.DataObjectSalt".length()];
      System.arraycopy("com.apple.DataObjectSalt".getBytes(), 0, arrayOfByte2, 0, "com.apple.DataObjectSalt".length());
      arrayOfByte2["com.apple.DataObjectSalt".length()] = 0;
      this.a.update(arrayOfByte2);
      return true;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      while (true)
        localNoSuchAlgorithmException.printStackTrace();
    }
  }

  public final boolean a(com.c.b paramb)
  {
    this.a.update(paramb.a(), 0, paramb.b());
    return true;
  }

  public final boolean b()
  {
    byte[] arrayOfByte1 = this.a.digest();
    byte[] arrayOfByte2 = new byte[32];
    arrayOfByte2[0] = 1;
    System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 1, 20);
    this.b = new com.c.b(arrayOfByte2, 21);
    return true;
  }

  public final com.c.b c()
  {
    return this.b;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     a.b
 * JD-Core Version:    0.6.2
 */