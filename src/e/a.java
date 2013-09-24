package e;

import android.util.Base64;
import android.util.Log;
import com.c.b;
import java.io.ByteArrayOutputStream;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import java.util.Random;
import javax.crypto.Cipher;

public final class a
{
  public static void a()
  {
    c.a = new byte[] { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16 };
    new Random(System.currentTimeMillis()).nextBytes(c.a);
    c.n = null;
  }

  public static void a(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte[7] << 8 | paramArrayOfByte[8];
    byte[] arrayOfByte = new byte[i];
    System.arraycopy(paramArrayOfByte, 9, arrayOfByte, 0, i);
    Log.d("Authentication", " Rec rsa key");
    String str = new String(arrayOfByte);
    int j = str.indexOf("-----BEGIN PUBLIC KEY-----");
    int k = str.indexOf("-----END PUBLIC KEY-----");
    c.b = Base64.decode(str.substring(j + "-----BEGIN PUBLIC KEY-----".length(), k), 0);
  }

  public static boolean a(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 6;
    boolean bool = false;
    while (true)
    {
      if (i >= paramInt)
        return bool;
      Log.d("Auth_Result", i);
      int j = i + 1;
      switch (paramArrayOfByte[i])
      {
      default:
        i = j;
        break;
      case 4:
        int i2 = 1 + (j + 1);
        i = i2 + 1;
        if (paramArrayOfByte[i2] == 0)
        {
          Log.e("Authentication", " Authentication Succ");
          bool = true;
        }
        else
        {
          Log.e("Authentication", " Authentication Error");
          bool = false;
        }
        break;
      case 5:
        int k = j + 1;
        int m = 0xFF00 & paramArrayOfByte[j] << 8;
        int n = k + 1;
        int i1 = m | 0xFF & paramArrayOfByte[k];
        byte[] arrayOfByte = new byte[i1];
        System.arraycopy(paramArrayOfByte, n, arrayOfByte, 0, i1);
        i = i1 + n;
        c.e = arrayOfByte;
      }
    }
  }

  public static b b()
  {
    byte[] arrayOfByte = new byte[7];
    arrayOfByte[0] = 1;
    arrayOfByte[4] = 2;
    arrayOfByte[5] = 4;
    arrayOfByte[6] = 1;
    return new b(arrayOfByte, 7);
  }

  public static b c()
  {
    try
    {
      byte[] arrayOfByte3 = c.a;
      X509EncodedKeySpec localX509EncodedKeySpec = new X509EncodedKeySpec(c.b);
      PublicKey localPublicKey = KeyFactory.getInstance("RSA").generatePublic(localX509EncodedKeySpec);
      Cipher localCipher = Cipher.getInstance("RSA/NONE/OAEPPadding");
      localCipher.init(1, localPublicKey);
      new ByteArrayOutputStream();
      byte[] arrayOfByte4 = localCipher.doFinal(arrayOfByte3, 0, arrayOfByte3.length);
      arrayOfByte1 = arrayOfByte4;
      int i = 4 + arrayOfByte1.length;
      int j = 9 + arrayOfByte1.length;
      byte[] arrayOfByte2 = new byte[j];
      arrayOfByte2[0] = 1;
      arrayOfByte2[1] = ((byte)(i >> 24));
      arrayOfByte2[2] = ((byte)(i >> 16));
      arrayOfByte2[3] = ((byte)(i >> 8));
      arrayOfByte2[4] = ((byte)(i >> 0));
      arrayOfByte2[5] = 4;
      arrayOfByte2[6] = 3;
      arrayOfByte2[7] = ((byte)(arrayOfByte1.length >> 8));
      arrayOfByte2[8] = ((byte)(arrayOfByte1.length >> 0));
      System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 9, arrayOfByte1.length);
      return new b(arrayOfByte2, j);
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        byte[] arrayOfByte1 = null;
      }
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     e.a
 * JD-Core Version:    0.6.2
 */