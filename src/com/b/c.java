package com.b;

import android.content.Context;
import android.util.Log;
import com.c.j;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.locks.ReentrantLock;
import javax.net.ssl.SSLSocket;

public final class c extends Thread
{
  private ArrayList a;
  private ReentrantLock b;
  private DataOutputStream c;
  private Context d;
  private boolean e = true;
  private q f;
  private q g;

  public c(ArrayList paramArrayList, ReentrantLock paramReentrantLock, Context paramContext)
  {
    this.a = paramArrayList;
    this.b = paramReentrantLock;
    this.d = paramContext;
  }

  private boolean d()
  {
    byte[] arrayOfByte1 = new byte[5];
    byte[] arrayOfByte2 = new byte[9];
    arrayOfByte2[0] = 7;
    arrayOfByte2[4] = 4;
    arrayOfByte2[5] = 2;
    arrayOfByte2[7] = 1;
    arrayOfByte2[8] = 1;
    byte[] arrayOfByte3 = new byte[44];
    arrayOfByte3[0] = 7;
    arrayOfByte3[4] = 39;
    arrayOfByte3[5] = 1;
    arrayOfByte3[7] = 32;
    arrayOfByte3[40] = 2;
    arrayOfByte3[42] = 1;
    arrayOfByte3[43] = 1;
    byte[] arrayOfByte4 = new byte[16];
    arrayOfByte4[0] = 7;
    arrayOfByte4[4] = 11;
    arrayOfByte4[5] = 2;
    arrayOfByte4[7] = 1;
    arrayOfByte4[8] = 1;
    arrayOfByte4[9] = 5;
    arrayOfByte4[11] = 4;
    arrayOfByte4[15] = 1;
    byte[] arrayOfByte5 = new byte[35];
    arrayOfByte5[0] = 12;
    arrayOfByte5[4] = 30;
    arrayOfByte5[5] = 1;
    arrayOfByte5[7] = 4;
    arrayOfByte5[8] = 84;
    arrayOfByte5[9] = 101;
    arrayOfByte5[10] = 115;
    arrayOfByte5[11] = 116;
    arrayOfByte5[12] = 2;
    arrayOfByte5[14] = 3;
    arrayOfByte5[15] = 49;
    arrayOfByte5[16] = 46;
    arrayOfByte5[17] = 48;
    arrayOfByte5[18] = 3;
    arrayOfByte5[20] = 3;
    arrayOfByte5[21] = 49;
    arrayOfByte5[22] = 46;
    arrayOfByte5[23] = 48;
    arrayOfByte5[24] = 4;
    arrayOfByte5[26] = 3;
    arrayOfByte5[27] = 49;
    arrayOfByte5[28] = 46;
    arrayOfByte5[29] = 48;
    arrayOfByte5[30] = 5;
    arrayOfByte5[32] = 2;
    arrayOfByte5[33] = 49;
    arrayOfByte5[34] = 53;
    while (true)
    {
      int j;
      int i1;
      int i2;
      try
      {
        if (e.c.n != null)
        {
          System.arraycopy(e.c.n, 0, arrayOfByte3, 8, 32);
          System.arraycopy(arrayOfByte3, 0, arrayOfByte1, 0, 5);
          int i = 0xFF000000 & arrayOfByte1[1] << 24 | 0xFF0000 & arrayOfByte1[2] << 16 | 0xFF00 & arrayOfByte1[3] << 8 | 0xFF & arrayOfByte1[4] << 0;
          a.a = false;
          this.c.write(arrayOfByte3, 0, i + 5);
          j = 0;
          break label666;
          if (!a.a)
          {
            return false;
            if (a.a)
              continue;
            Thread.sleep(500L);
            j = k;
            break label666;
          }
          Log.d("appleout", " login 1");
          System.arraycopy(arrayOfByte5, 0, arrayOfByte1, 0, 5);
          int m = 0xFF000000 & arrayOfByte1[1] << 24 | 0xFF0000 & arrayOfByte1[2] << 16 | 0xFF00 & arrayOfByte1[3] << 8 | 0xFF & arrayOfByte1[4] << 0;
          a.a = false;
          this.c.write(arrayOfByte5, 0, m + 5);
          byte[] arrayOfByte6 = new byte[m + 5];
          System.arraycopy(arrayOfByte5, 0, arrayOfByte6, 0, m + 5);
          e.c.l = arrayOfByte6;
          Log.d("appleout", " login 2");
          System.arraycopy(arrayOfByte4, 0, arrayOfByte1, 0, 5);
          int n = 0xFF000000 & arrayOfByte1[1] << 24 | 0xFF0000 & arrayOfByte1[2] << 16 | 0xFF00 & arrayOfByte1[3] << 8 | 0xFF & arrayOfByte1[4] << 0;
          a.a = false;
          this.c.write(arrayOfByte4, 0, n + 5);
          Log.d("appleout", " login 3");
          i1 = 0;
          break label684;
          if (!a.a)
            break label682;
          return true;
          if (a.a)
            continue;
          Thread.sleep(500L);
          i1 = i2;
        }
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
        return false;
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
        return false;
      }
      arrayOfByte3 = arrayOfByte2;
      continue;
      label666: int k = j + 1;
      if (j >= 120)
      {
        continue;
        label682: return false;
        label684: i2 = i1 + 1;
        if (i1 < 120);
      }
    }
  }

  private boolean e()
  {
    byte[] arrayOfByte1 = e.c.k;
    byte[] arrayOfByte2 = new byte[5];
    byte[] arrayOfByte3 = new byte[44];
    arrayOfByte3[0] = 7;
    arrayOfByte3[4] = 39;
    arrayOfByte3[5] = 1;
    arrayOfByte3[7] = 32;
    arrayOfByte3[40] = 2;
    arrayOfByte3[42] = 1;
    arrayOfByte3[43] = 1;
    byte[] arrayOfByte4 = new byte[51];
    arrayOfByte4[0] = 7;
    arrayOfByte4[4] = 46;
    arrayOfByte4[5] = 1;
    arrayOfByte4[7] = 32;
    arrayOfByte4[40] = 2;
    arrayOfByte4[42] = 1;
    arrayOfByte4[43] = 1;
    arrayOfByte4[44] = 5;
    arrayOfByte4[46] = 4;
    arrayOfByte4[50] = 1;
    byte[] arrayOfByte5 = new byte[35];
    arrayOfByte5[0] = 12;
    arrayOfByte5[4] = 30;
    arrayOfByte5[5] = 1;
    arrayOfByte5[7] = 4;
    arrayOfByte5[8] = 84;
    arrayOfByte5[9] = 101;
    arrayOfByte5[10] = 115;
    arrayOfByte5[11] = 116;
    arrayOfByte5[12] = 2;
    arrayOfByte5[14] = 3;
    arrayOfByte5[15] = 49;
    arrayOfByte5[16] = 46;
    arrayOfByte5[17] = 48;
    arrayOfByte5[18] = 3;
    arrayOfByte5[20] = 3;
    arrayOfByte5[21] = 49;
    arrayOfByte5[22] = 46;
    arrayOfByte5[23] = 48;
    arrayOfByte5[24] = 4;
    arrayOfByte5[26] = 3;
    arrayOfByte5[27] = 49;
    arrayOfByte5[28] = 46;
    arrayOfByte5[29] = 48;
    arrayOfByte5[30] = 5;
    arrayOfByte5[32] = 2;
    arrayOfByte5[33] = 49;
    arrayOfByte5[34] = 53;
    while (true)
    {
      int j;
      int i1;
      int i2;
      try
      {
        System.arraycopy(arrayOfByte1, 0, arrayOfByte3, 8, 32);
        System.arraycopy(arrayOfByte3, 0, arrayOfByte2, 0, 5);
        int i = 0xFF000000 & arrayOfByte2[1] << 24 | 0xFF0000 & arrayOfByte2[2] << 16 | 0xFF00 & arrayOfByte2[3] << 8 | 0xFF & arrayOfByte2[4] << 0;
        a.a = false;
        this.c.write(arrayOfByte3, 0, i + 5);
        j = 0;
        break label654;
        if (!a.a)
        {
          return false;
          if (a.a)
            continue;
          Thread.sleep(500L);
          j = k;
          break label654;
        }
        Log.d("appleout", " login 1");
        System.arraycopy(arrayOfByte5, 0, arrayOfByte2, 0, 5);
        int m = 0xFF000000 & arrayOfByte2[1] << 24 | 0xFF0000 & arrayOfByte2[2] << 16 | 0xFF00 & arrayOfByte2[3] << 8 | 0xFF & arrayOfByte2[4] << 0;
        a.a = false;
        this.c.write(arrayOfByte5, 0, m + 5);
        byte[] arrayOfByte6 = new byte[m + 5];
        System.arraycopy(arrayOfByte5, 0, arrayOfByte6, 0, m + 5);
        e.c.l = arrayOfByte6;
        Log.d("appleout", " login 2");
        System.arraycopy(arrayOfByte1, 32, arrayOfByte4, 8, 32);
        System.arraycopy(arrayOfByte4, 0, arrayOfByte2, 0, 5);
        int n = 0xFF000000 & arrayOfByte2[1] << 24 | 0xFF0000 & arrayOfByte2[2] << 16 | 0xFF00 & arrayOfByte2[3] << 8 | 0xFF & arrayOfByte2[4] << 0;
        a.a = false;
        this.c.write(arrayOfByte4, 0, n + 5);
        Log.d("appleout", " login 3");
        i1 = 0;
        break label672;
        if (!a.a)
          break label670;
        return true;
        if (a.a)
          continue;
        Thread.sleep(500L);
        i1 = i2;
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
        return false;
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
        return false;
      }
      label654: int k = j + 1;
      if (j >= 120)
      {
        continue;
        label670: return false;
        label672: i2 = i1 + 1;
        if (i1 < 120);
      }
    }
  }

  public final void a()
  {
    this.e = false;
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

  public final void a(q paramq1, q paramq2)
  {
    this.g = paramq2;
    this.f = paramq1;
  }

  public final void a(j paramj)
  {
    this.b.lock();
    this.a.add(paramj);
    this.b.unlock();
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

  public final void a(SSLSocket paramSSLSocket)
  {
    this.c = new DataOutputStream(paramSSLSocket.getOutputStream());
  }

  public final boolean b()
  {
    return this.e;
  }

  public final void c()
  {
    byte[] arrayOfByte1 = e.c.k;
    byte[] arrayOfByte2 = new byte[5];
    byte[] arrayOfByte3 = new byte[86];
    arrayOfByte3[0] = 9;
    arrayOfByte3[4] = 81;
    arrayOfByte3[5] = 1;
    arrayOfByte3[7] = 32;
    arrayOfByte3[40] = 2;
    arrayOfByte3[42] = 20;
    arrayOfByte3[43] = -24;
    arrayOfByte3[44] = 86;
    arrayOfByte3[45] = 25;
    arrayOfByte3[46] = -85;
    arrayOfByte3[47] = -44;
    arrayOfByte3[48] = 32;
    arrayOfByte3[49] = 41;
    arrayOfByte3[50] = -57;
    arrayOfByte3[51] = 72;
    arrayOfByte3[52] = 26;
    arrayOfByte3[53] = 122;
    arrayOfByte3[54] = -63;
    arrayOfByte3[55] = -112;
    arrayOfByte3[56] = -110;
    arrayOfByte3[57] = -69;
    arrayOfByte3[58] = 70;
    arrayOfByte3[59] = -112;
    arrayOfByte3[60] = -53;
    arrayOfByte3[61] = -18;
    arrayOfByte3[62] = 118;
    arrayOfByte3[63] = 2;
    arrayOfByte3[65] = 20;
    arrayOfByte3[66] = -28;
    arrayOfByte3[67] = -26;
    arrayOfByte3[68] = -39;
    arrayOfByte3[69] = 82;
    arrayOfByte3[70] = -107;
    arrayOfByte3[71] = 65;
    arrayOfByte3[72] = 104;
    arrayOfByte3[73] = -48;
    arrayOfByte3[74] = -91;
    arrayOfByte3[75] = -37;
    arrayOfByte3[76] = 2;
    arrayOfByte3[77] = -37;
    arrayOfByte3[78] = -81;
    arrayOfByte3[79] = 39;
    arrayOfByte3[80] = -52;
    arrayOfByte3[81] = 53;
    arrayOfByte3[82] = -4;
    arrayOfByte3[83] = 24;
    arrayOfByte3[84] = -47;
    arrayOfByte3[85] = 89;
    if (arrayOfByte1 != null)
      System.arraycopy(arrayOfByte1, 32, arrayOfByte3, 8, 32);
    System.arraycopy(arrayOfByte3, 0, arrayOfByte2, 0, 5);
    int i = 0xFF000000 & arrayOfByte2[1] << 24 | 0xFF0000 & arrayOfByte2[2] << 16 | 0xFF00 & arrayOfByte2[3] << 8 | 0xFF & arrayOfByte2[4] << 0;
    try
    {
      this.c.write(arrayOfByte3, 0, i + 5);
      Log.d("appleout", " login 4");
      return;
    }
    catch (IOException localIOException)
    {
      while (true)
        localIOException.printStackTrace();
    }
  }

  // ERROR //
  public final void run()
  {
    // Byte code:
    //   0: getstatic 132	com/b/ag:a	Z
    //   3: ifeq +49 -> 52
    //   6: aload_0
    //   7: aload_0
    //   8: invokespecial 134	com/b/c:d	()Z
    //   11: putfield 24	com/b/c:e	Z
    //   14: aload_0
    //   15: getfield 24	com/b/c:e	Z
    //   18: ifne +45 -> 63
    //   21: aload_0
    //   22: getfield 56	com/b/c:c	Ljava/io/DataOutputStream;
    //   25: invokevirtual 137	java/io/DataOutputStream:close	()V
    //   28: aload_0
    //   29: iconst_0
    //   30: putfield 24	com/b/c:e	Z
    //   33: ldc 139
    //   35: ldc 141
    //   37: invokestatic 77	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   40: pop
    //   41: aload_0
    //   42: getfield 99	com/b/c:g	Lcom/b/q;
    //   45: aconst_null
    //   46: invokeinterface 145 2 0
    //   51: return
    //   52: aload_0
    //   53: aload_0
    //   54: invokespecial 147	com/b/c:e	()Z
    //   57: putfield 24	com/b/c:e	Z
    //   60: goto -46 -> 14
    //   63: aload_0
    //   64: getfield 28	com/b/c:b	Ljava/util/concurrent/locks/ReentrantLock;
    //   67: invokevirtual 107	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   70: aload_0
    //   71: getfield 26	com/b/c:a	Ljava/util/ArrayList;
    //   74: invokevirtual 150	java/util/ArrayList:isEmpty	()Z
    //   77: ifeq +32 -> 109
    //   80: aload_0
    //   81: getfield 28	com/b/c:b	Ljava/util/concurrent/locks/ReentrantLock;
    //   84: invokevirtual 116	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   87: aload_0
    //   88: monitorenter
    //   89: aload_0
    //   90: invokevirtual 153	java/lang/Object:wait	()V
    //   93: aload_0
    //   94: monitorexit
    //   95: aload_0
    //   96: getfield 24	com/b/c:e	Z
    //   99: ifeq -78 -> 21
    //   102: aload_0
    //   103: getfield 28	com/b/c:b	Ljava/util/concurrent/locks/ReentrantLock;
    //   106: invokevirtual 107	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   109: aload_0
    //   110: getfield 26	com/b/c:a	Ljava/util/ArrayList;
    //   113: iconst_0
    //   114: invokevirtual 157	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   117: checkcast 159	com/c/j
    //   120: astore 4
    //   122: aload_0
    //   123: getfield 26	com/b/c:a	Ljava/util/ArrayList;
    //   126: iconst_0
    //   127: invokevirtual 162	java/util/ArrayList:remove	(I)Ljava/lang/Object;
    //   130: pop
    //   131: aload_0
    //   132: getfield 28	com/b/c:b	Ljava/util/concurrent/locks/ReentrantLock;
    //   135: invokevirtual 116	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   138: ldc 70
    //   140: ldc 164
    //   142: invokestatic 77	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   145: pop
    //   146: aload_0
    //   147: getfield 56	com/b/c:c	Ljava/io/DataOutputStream;
    //   150: aload 4
    //   152: invokevirtual 168	com/c/j:j	()[B
    //   155: iconst_0
    //   156: aload 4
    //   158: invokevirtual 171	com/c/j:n	()I
    //   161: invokevirtual 62	java/io/DataOutputStream:write	([BII)V
    //   164: aload_0
    //   165: getfield 56	com/b/c:c	Ljava/io/DataOutputStream;
    //   168: invokevirtual 174	java/io/DataOutputStream:flush	()V
    //   171: goto -157 -> 14
    //   174: astore_3
    //   175: aload_3
    //   176: invokevirtual 88	java/lang/InterruptedException:printStackTrace	()V
    //   179: goto -151 -> 28
    //   182: astore 7
    //   184: aload_0
    //   185: monitorexit
    //   186: aload 7
    //   188: athrow
    //   189: astore_1
    //   190: aload_1
    //   191: invokevirtual 87	java/io/IOException:printStackTrace	()V
    //   194: goto -166 -> 28
    //
    // Exception table:
    //   from	to	target	type
    //   14	21	174	java/lang/InterruptedException
    //   21	28	174	java/lang/InterruptedException
    //   63	89	174	java/lang/InterruptedException
    //   95	109	174	java/lang/InterruptedException
    //   109	171	174	java/lang/InterruptedException
    //   184	189	174	java/lang/InterruptedException
    //   89	95	182	finally
    //   14	21	189	java/io/IOException
    //   21	28	189	java/io/IOException
    //   63	89	189	java/io/IOException
    //   95	109	189	java/io/IOException
    //   109	171	189	java/io/IOException
    //   184	189	189	java/io/IOException
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.b.c
 * JD-Core Version:    0.6.2
 */