package d;

import android.util.Log;
import com.b.r;
import java.io.FilterOutputStream;
import java.io.OutputStream;
import java.security.MessageDigest;

public final class b extends FilterOutputStream
{
  private r b;
  private com.c.b c;
  private long d;
  private int e;

  public b(a parama, OutputStream paramOutputStream, com.c.b paramb, r paramr, int paramInt)
  {
    super(paramOutputStream);
    this.c = paramb;
    this.d = 0L;
    this.b = paramr;
    this.e = paramInt;
  }

  public final void write(int paramInt)
  {
    if (this.d == 0L)
    {
      this.out.write(this.c.a(), 0, this.c.b());
      this.d += this.c.b();
      a.a(this.a).update(this.c.a(), 0, this.c.b());
    }
    byte[] arrayOfByte = new byte[1];
    arrayOfByte[0] = ((byte)paramInt);
    a.a(this.a).update(arrayOfByte);
    this.out.write(paramInt);
    this.d = (1L + this.d);
    Log.d("Send data", this.d);
  }

  public final void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.d == 0L)
    {
      this.out.write(this.c.a(), 0, this.c.b());
      this.d += this.c.b();
      a.a(this.a).update(this.c.a(), 0, this.c.b());
    }
    this.out.write(paramArrayOfByte, paramInt1, paramInt2);
    a.a(this.a).update(paramArrayOfByte, paramInt1, paramInt2);
    this.d += paramInt2;
    Log.d("Send data", this.d);
    if (this.b != null)
      this.b.a(1, 1, 1.0F * (float)this.d / this.e);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     d.b
 * JD-Core Version:    0.6.2
 */