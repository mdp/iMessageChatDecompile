package a;

import com.c.b;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Vector;

public final class a
{
  private Vector a = new Vector();
  private MessageDigest b;
  private int c;

  public final boolean a()
  {
    try
    {
      this.b = MessageDigest.getInstance("SHA-256");
      this.c = 0;
      return true;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      while (true)
        localNoSuchAlgorithmException.printStackTrace();
    }
  }

  public final boolean a(b paramb)
  {
    this.b.update(paramb.a(), 0, paramb.b());
    this.c += paramb.b();
    return true;
  }

  public final boolean b()
  {
    if (this.c == 0)
      return false;
    byte[] arrayOfByte1 = this.b.digest();
    byte[] arrayOfByte2 = this.b.digest(arrayOfByte1);
    byte[] arrayOfByte3 = new byte[32];
    arrayOfByte3[0] = 1;
    System.arraycopy(arrayOfByte2, 0, arrayOfByte3, 1, 20);
    d locald = new d(new b(arrayOfByte3, 21), this.c);
    this.a.add(locald);
    return true;
  }

  final Vector c()
  {
    return this.a;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     a.a
 * JD-Core Version:    0.6.2
 */