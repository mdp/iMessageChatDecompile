package com.c;

import android.content.Context;
import android.provider.Settings.Secure;
import android.text.format.Time;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.io.RandomAccessFile;
import java.util.UUID;

public final class d
{
  private static String a = null;
  private static final String b = "INSTALLATION-" + UUID.nameUUIDFromBytes("androidkit".getBytes());

  public static String a(Context paramContext)
  {
    try
    {
      File localFile;
      if (a == null)
        localFile = new File(paramContext.getFilesDir(), b);
      try
      {
        if (!localFile.exists())
          a(paramContext, localFile);
        RandomAccessFile localRandomAccessFile = new RandomAccessFile(localFile, "r");
        byte[] arrayOfByte = new byte[(int)localRandomAccessFile.length()];
        localRandomAccessFile.readFully(arrayOfByte);
        localRandomAccessFile.close();
        a = new String(arrayOfByte);
        String str = a;
        return str;
      }
      catch (IOException localIOException)
      {
        while (true)
          localIOException.printStackTrace();
      }
    }
    finally
    {
    }
  }

  private static void a(Context paramContext, File paramFile)
  {
    FileOutputStream localFileOutputStream = new FileOutputStream(paramFile);
    byte[] arrayOfByte1 = Settings.Secure.getString(paramContext.getContentResolver(), "android_id").getBytes();
    Time localTime = new Time();
    localTime.setToNow();
    byte[] arrayOfByte2 = new byte[6 + arrayOfByte1.length];
    for (int i = 0; ; i++)
    {
      if (i >= arrayOfByte1.length)
      {
        int j = i + 1;
        arrayOfByte2[i] = ((byte)localTime.year);
        int k = j + 1;
        arrayOfByte2[j] = ((byte)localTime.month);
        int m = k + 1;
        arrayOfByte2[k] = ((byte)localTime.monthDay);
        int n = m + 1;
        arrayOfByte2[m] = ((byte)localTime.hour);
        int i1 = n + 1;
        arrayOfByte2[n] = ((byte)localTime.minute);
        arrayOfByte2[i1] = ((byte)localTime.second);
        String str = UUID.nameUUIDFromBytes(arrayOfByte2).toString();
        System.out.println("uuid.." + str);
        localFileOutputStream.write(str.getBytes());
        return;
      }
      arrayOfByte2[i] = arrayOfByte1[i];
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.c.d
 * JD-Core Version:    0.6.2
 */