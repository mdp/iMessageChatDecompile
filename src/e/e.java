package e;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.zip.GZIPInputStream;

public final class e
{
  private static String a = "utf-8";

  public static String a(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0))
      return null;
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(paramArrayOfByte);
    try
    {
      GZIPInputStream localGZIPInputStream = new GZIPInputStream(localByteArrayInputStream);
      byte[] arrayOfByte = new byte[256];
      while (true)
      {
        int i = localGZIPInputStream.read(arrayOfByte);
        if (i < 0)
          return localByteArrayOutputStream.toString();
        localByteArrayOutputStream.write(arrayOfByte, 0, i);
      }
    }
    catch (IOException localIOException)
    {
      while (true)
        localIOException.printStackTrace();
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     e.e
 * JD-Core Version:    0.6.2
 */