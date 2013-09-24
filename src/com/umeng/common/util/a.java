package com.umeng.common.util;

import java.io.ByteArrayOutputStream;
import java.util.zip.Deflater;

public final class a
{
  public static int a;

  public static byte[] a(String paramString1, String paramString2)
  {
    if (b.c(paramString1))
      return null;
    Deflater localDeflater = new Deflater();
    localDeflater.setInput(paramString1.getBytes(paramString2));
    localDeflater.finish();
    byte[] arrayOfByte = new byte[8192];
    a = 0;
    try
    {
      localByteArrayOutputStream = new ByteArrayOutputStream();
      try
      {
        while (!localDeflater.finished())
        {
          int i = localDeflater.deflate(arrayOfByte);
          a = i + a;
          localByteArrayOutputStream.write(arrayOfByte, 0, i);
        }
      }
      finally
      {
      }
      if (localByteArrayOutputStream != null)
        localByteArrayOutputStream.close();
      throw localObject1;
      localDeflater.end();
      localByteArrayOutputStream.close();
      return localByteArrayOutputStream.toByteArray();
    }
    finally
    {
      while (true)
      {
        Object localObject2 = localObject3;
        ByteArrayOutputStream localByteArrayOutputStream = null;
      }
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.umeng.common.util.a
 * JD-Core Version:    0.6.2
 */