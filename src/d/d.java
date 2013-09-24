package d;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public final class d
{
  public static void a(byte[] paramArrayOfByte, String paramString1, String paramString2)
  {
    try
    {
      SecretKeySpec localSecretKeySpec = new SecretKeySpec(paramArrayOfByte, "AES");
      localCipher = Cipher.getInstance("AES/CTR/NoPadding");
      localCipher.init(2, localSecretKeySpec, new IvParameterSpec(new byte[16]));
      localFileOutputStream = new FileOutputStream(new File(paramString2));
      localFileInputStream = new FileInputStream(new File(paramString1));
      byte[] arrayOfByte = new byte[1600];
      while (true)
      {
        int i = localFileInputStream.read(arrayOfByte);
        if (i <= 0)
          break;
        localFileOutputStream.write(localCipher.update(arrayOfByte, 0, i));
      }
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      Cipher localCipher;
      FileOutputStream localFileOutputStream;
      FileInputStream localFileInputStream;
      localNoSuchAlgorithmException.printStackTrace();
      return;
      localFileOutputStream.write(localCipher.doFinal());
      localFileInputStream.close();
      localFileOutputStream.close();
      return;
    }
    catch (NoSuchPaddingException localNoSuchPaddingException)
    {
      localNoSuchPaddingException.printStackTrace();
      return;
    }
    catch (InvalidKeyException localInvalidKeyException)
    {
      localInvalidKeyException.printStackTrace();
      return;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      localFileNotFoundException.printStackTrace();
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      return;
    }
    catch (InvalidAlgorithmParameterException localInvalidAlgorithmParameterException)
    {
      localInvalidAlgorithmParameterException.printStackTrace();
      return;
    }
    catch (IllegalBlockSizeException localIllegalBlockSizeException)
    {
      localIllegalBlockSizeException.printStackTrace();
      return;
    }
    catch (BadPaddingException localBadPaddingException)
    {
      localBadPaddingException.printStackTrace();
    }
  }

  public static void b(byte[] paramArrayOfByte, String paramString1, String paramString2)
  {
    a(paramArrayOfByte, paramString1, paramString2);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     d.d
 * JD-Core Version:    0.6.2
 */