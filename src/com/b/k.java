package com.b;

import android.content.Context;
import android.util.Log;
import com.c.b;
import com.c.j;
import e.d;
import java.io.DataInputStream;
import java.io.IOException;
import java.net.Socket;

public final class k extends Thread
{
  private Socket a;
  private DataInputStream b;
  private q c;
  private boolean d = true;
  private Context e;

  public k(Context paramContext)
  {
    this.e = paramContext;
  }

  public final void a(q paramq)
  {
    this.c = paramq;
  }

  public final void a(Socket paramSocket)
  {
    this.a = paramSocket;
    try
    {
      this.b = new DataInputStream(paramSocket.getInputStream());
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }

  public final boolean a()
  {
    return this.d;
  }

  public final void b()
  {
    this.d = false;
    try
    {
      notify();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void run()
  {
    byte[] arrayOfByte1 = new byte[5];
    try
    {
      while (true)
      {
        if (!this.d);
        int i;
        do
        {
          do
          {
            this.b.close();
            if (this.a != null)
              this.a.close();
            j localj1 = new j();
            this.d = false;
            Log.d("inThread", "over");
            localj1.a(p.a());
            localj1.k();
            this.c.a(localj1);
            return;
            this.b.readFully(arrayOfByte1);
          }
          while (!this.d);
          i = 0xFF000000 & arrayOfByte1[1] << 24 | 0xFF0000 & arrayOfByte1[2] << 16 | 0xFF00 & arrayOfByte1[3] << 8 | 0xFF & arrayOfByte1[4] << 0;
          arrayOfByte2 = new byte[i];
          this.b.readFully(arrayOfByte2);
        }
        while (!this.d);
        if (arrayOfByte1[0] != 1)
          break;
        byte[] arrayOfByte4 = new byte[i + 5];
        System.arraycopy(arrayOfByte1, 0, arrayOfByte4, 0, 5);
        System.arraycopy(arrayOfByte2, 0, arrayOfByte4, 5, i);
        localb = new b(arrayOfByte4, i + 5);
        j localj2 = new j();
        localj2.a(localb);
        this.c.a(localj2);
      }
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        byte[] arrayOfByte2;
        localIOException.printStackTrace();
        continue;
        byte[] arrayOfByte3 = d.a(arrayOfByte2);
        b localb = new b(arrayOfByte3, arrayOfByte3.length);
      }
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.b.k
 * JD-Core Version:    0.6.2
 */