package com.b;

import android.content.Context;
import android.util.Log;
import com.c.b;
import com.c.j;
import e.c;
import java.io.DataInputStream;
import java.io.IOException;
import javax.net.ssl.SSLSocket;

public final class a extends Thread
{
  public static boolean a = false;
  private DataInputStream b;
  private q c;
  private q d;
  private boolean e = true;
  private Context f;
  private SSLSocket g;
  private boolean h;
  private int i;
  private int j;
  private byte[] k;
  private byte[] l;

  public a(Context paramContext)
  {
    this.f = paramContext;
  }

  private boolean c()
  {
    int m = 16;
    if (ag.a)
      if (this.k == null)
        break label391;
    label391: for (int n = 51; ; n = m)
    {
      if (this.l != null)
        n += 35;
      byte[] arrayOfByte2 = new byte[n];
      int i1 = n - 5;
      arrayOfByte2[0] = 2;
      arrayOfByte2[1] = 0;
      arrayOfByte2[2] = 0;
      arrayOfByte2[3] = 0;
      arrayOfByte2[4] = ((byte)i1);
      arrayOfByte2[5] = 4;
      arrayOfByte2[6] = 1;
      arrayOfByte2[7] = 13;
      arrayOfByte2[8] = 1;
      arrayOfByte2[9] = 0;
      arrayOfByte2[10] = 1;
      arrayOfByte2[11] = ((byte)this.i);
      arrayOfByte2[12] = 2;
      arrayOfByte2[13] = 0;
      arrayOfByte2[14] = 1;
      arrayOfByte2[15] = ((byte)this.j);
      if (this.k != null)
      {
        arrayOfByte2[m] = 3;
        arrayOfByte2[17] = 0;
        arrayOfByte2[18] = 32;
        System.arraycopy(this.k, 0, arrayOfByte2, 19, 32);
        m = 51;
      }
      byte[] arrayOfByte1;
      if (this.l != null)
      {
        int i2 = m + 1;
        arrayOfByte2[m] = 4;
        int i3 = i2 + 1;
        arrayOfByte2[i2] = 0;
        int i4 = i3 + 1;
        arrayOfByte2[i3] = 32;
        System.arraycopy(this.l, 0, arrayOfByte2, i4, 32);
        m = i4 + 32;
        arrayOfByte1 = arrayOfByte2;
      }
      while (true)
      {
        b localb = new b(arrayOfByte1, m);
        j localj = new j();
        localj.a(localb);
        localj.a(false);
        this.c.a(localj);
        return true;
        arrayOfByte1 = new byte[m];
        arrayOfByte1[0] = 2;
        arrayOfByte1[1] = 0;
        arrayOfByte1[2] = 0;
        arrayOfByte1[3] = 0;
        arrayOfByte1[4] = 11;
        arrayOfByte1[5] = 4;
        arrayOfByte1[6] = 1;
        arrayOfByte1[7] = 21;
        arrayOfByte1[8] = 1;
        arrayOfByte1[9] = 0;
        arrayOfByte1[10] = 1;
        arrayOfByte1[11] = ((byte)this.i);
        arrayOfByte1[12] = 2;
        arrayOfByte1[13] = 0;
        arrayOfByte1[14] = 1;
        arrayOfByte1[15] = ((byte)this.j);
        continue;
        arrayOfByte1 = arrayOfByte2;
      }
    }
  }

  public final void a(q paramq1, q paramq2)
  {
    this.d = paramq2;
    this.c = paramq1;
  }

  public final void a(SSLSocket paramSSLSocket)
  {
    this.b = new DataInputStream(paramSSLSocket.getInputStream());
    this.g = paramSSLSocket;
  }

  public final boolean a()
  {
    return this.e;
  }

  public final void b()
  {
    this.e = false;
    Log.d("Apple", "Apple Thread over");
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
    Log.d("Start Apple", "Apple Thread");
    this.h = false;
    try
    {
      while (true)
      {
        if (!this.e);
        do
        {
          do
          {
            this.b.close();
            Log.d("Apple", "Apple Thread + " + this.e);
            this.e = false;
            this.d.a(null);
            Log.d("AppleInput", " over ");
            return;
            this.b.readFully(arrayOfByte1);
          }
          while (!this.e);
          m = 0xFF000000 & arrayOfByte1[1] << 24 | 0xFF0000 & arrayOfByte1[2] << 16 | 0xFF00 & arrayOfByte1[3] << 8 | 0xFF & arrayOfByte1[4] << 0;
          arrayOfByte2 = new byte[m];
          this.b.readFully(arrayOfByte2);
          Log.d("appleInput", " rec ");
        }
        while (!this.e);
        switch (arrayOfByte1[0])
        {
        case 8:
          a = true;
          n = -1;
          arrayOfByte4 = null;
          i1 = 0;
          if (i1 < m)
            break label262;
          if (n != 0)
            break label468;
          if (this.h)
            break label376;
          this.h = true;
          this.i = n;
          if (ag.a)
            this.k = arrayOfByte4;
          break;
        case 10:
        case 9:
        }
      }
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        int m;
        byte[] arrayOfByte2;
        int n;
        byte[] arrayOfByte4;
        int i1;
        localIOException.printStackTrace();
        continue;
        label262: int i2 = arrayOfByte2[i1];
        int i3 = 0xFF00 & arrayOfByte2[(i1 + 1)] << 8 | 0xFF & arrayOfByte2[(i1 + 2)];
        int i4 = i1 + 3;
        label589: switch (i2)
        {
        case 1:
          if (i3 == 1)
            n = arrayOfByte2[i4];
          break;
        case 3:
          if (i3 == 32)
          {
            arrayOfByte4 = new byte[32];
            System.arraycopy(arrayOfByte2, i4, arrayOfByte4, 0, 32);
            break label589;
            this.j = n;
            if (ag.a)
              this.l = arrayOfByte4;
            c();
            if ((this.k == null) || (this.l == null))
              continue;
            byte[] arrayOfByte5 = this.k;
            byte[] arrayOfByte6 = this.l;
            c.k = new byte[arrayOfByte5.length + arrayOfByte6.length];
            System.arraycopy(arrayOfByte5, 0, c.k, 0, arrayOfByte5.length);
            System.arraycopy(arrayOfByte6, 0, c.k, arrayOfByte5.length, arrayOfByte6.length);
            continue;
            label468: if (!this.h)
            {
              this.h = true;
              this.i = n;
            }
            while (true)
            {
              c();
              break;
              this.j = n;
            }
            a = true;
            byte[] arrayOfByte3 = new byte[m + 5];
            System.arraycopy(arrayOfByte1, 0, arrayOfByte3, 0, 5);
            System.arraycopy(arrayOfByte2, 0, arrayOfByte3, 5, m);
            b localb = new b(arrayOfByte3, m + 5);
            j localj = new j();
            localj.a(localb);
            localj.a(true);
            this.c.a(localj);
          }
          break;
        case 2:
        default:
          label376: i1 = i4 + i3;
        }
      }
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.b.a
 * JD-Core Version:    0.6.2
 */