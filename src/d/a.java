package d;

import android.util.Base64;
import android.util.Log;
import com.b.r;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.apache.http.entity.InputStreamEntity;

public final class a extends InputStreamEntity
{
  public int a;
  private com.c.b b;
  private r c;
  private MessageDigest d;

  public a(FileInputStream paramFileInputStream, long paramLong, com.c.b paramb, r paramr)
  {
    super(paramFileInputStream, paramLong + paramb.b());
    this.a = ((int)(paramLong + paramb.b()));
    this.b = paramb;
    this.c = paramr;
    try
    {
      this.d = MessageDigest.getInstance("MD5");
      return;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      localNoSuchAlgorithmException.printStackTrace();
    }
  }

  public final String a()
  {
    String str = new String(Base64.encode(this.d.digest(), 0));
    Log.d("putFile md5", str);
    return str;
  }

  public final void writeTo(OutputStream paramOutputStream)
  {
    super.writeTo(new b(this, paramOutputStream, this.b, this.c, this.a));
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     d.a
 * JD-Core Version:    0.6.2
 */