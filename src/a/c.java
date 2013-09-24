package a;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Vector;

public final class c
{
  public static Vector a(String paramString)
  {
    File localFile = new File(paramString);
    try
    {
      localFileInputStream = new FileInputStream(localFile);
      locala = new a();
      arrayOfByte = new byte[20496];
      do
      {
        locala.a();
        i = 0;
        j = 0;
        if (j < 1048576)
          break;
        locala.b();
      }
      while (i > 0);
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      try
      {
        while (true)
        {
          a locala;
          byte[] arrayOfByte;
          int i;
          int j;
          localFileInputStream.close();
          return locala.c();
          localFileNotFoundException = localFileNotFoundException;
          localFileNotFoundException.printStackTrace();
          FileInputStream localFileInputStream = null;
          continue;
          try
          {
            int k = localFileInputStream.read(arrayOfByte, 0, 4096);
            i = k;
            if (i <= 0)
              continue;
            j += i;
            locala.a(new com.c.b(arrayOfByte, i));
          }
          catch (IOException localIOException1)
          {
            while (true)
              localIOException1.printStackTrace();
          }
        }
      }
      catch (IOException localIOException2)
      {
        while (true)
          localIOException2.printStackTrace();
      }
    }
  }

  public static com.c.b b(String paramString)
  {
    File localFile = new File(paramString);
    FileInputStream localFileInputStream;
    b localb;
    try
    {
      localFileInputStream = new FileInputStream(localFile);
      arrayOfByte = new byte[20496];
      localb = new b();
      localb.a();
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      try
      {
        while (true)
        {
          byte[] arrayOfByte;
          int j = localFileInputStream.read(arrayOfByte, 0, 16384);
          i = j;
          if (i <= 0)
            break;
          localb.a(new com.c.b(arrayOfByte, i));
        }
        localFileNotFoundException = localFileNotFoundException;
        localFileNotFoundException.printStackTrace();
        localFileInputStream = null;
      }
      catch (IOException localIOException1)
      {
        while (true)
        {
          localIOException1.printStackTrace();
          int i = 0;
        }
        localb.b();
      }
    }
    try
    {
      localFileInputStream.close();
      return localb.c();
    }
    catch (IOException localIOException2)
    {
      while (true)
        localIOException2.printStackTrace();
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     a.c
 * JD-Core Version:    0.6.2
 */