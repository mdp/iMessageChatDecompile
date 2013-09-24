package e;

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
  public static byte[] a(byte[] paramArrayOfByte)
  {
    SecretKeySpec localSecretKeySpec = new SecretKeySpec(c.a, "AES");
    try
    {
      Cipher localCipher = Cipher.getInstance("AES/CTR/NoPadding");
      localCipher.init(1, localSecretKeySpec, new IvParameterSpec(new byte[16]));
      byte[] arrayOfByte = localCipher.doFinal(paramArrayOfByte);
      return arrayOfByte;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      localNoSuchAlgorithmException.printStackTrace();
      return null;
    }
    catch (NoSuchPaddingException localNoSuchPaddingException)
    {
      while (true)
        localNoSuchPaddingException.printStackTrace();
    }
    catch (InvalidKeyException localInvalidKeyException)
    {
      while (true)
        localInvalidKeyException.printStackTrace();
    }
    catch (InvalidAlgorithmParameterException localInvalidAlgorithmParameterException)
    {
      while (true)
        localInvalidAlgorithmParameterException.printStackTrace();
    }
    catch (IllegalBlockSizeException localIllegalBlockSizeException)
    {
      while (true)
        localIllegalBlockSizeException.printStackTrace();
    }
    catch (BadPaddingException localBadPaddingException)
    {
      while (true)
        localBadPaddingException.printStackTrace();
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     e.d
 * JD-Core Version:    0.6.2
 */