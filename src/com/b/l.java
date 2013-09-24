package com.b;

import android.content.Context;
import android.util.Log;
import com.a.f;
import com.c.b;
import com.c.j;
import d.w;
import e.d;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;
import java.util.ArrayList;
import java.util.concurrent.locks.ReentrantLock;

public final class l extends Thread
{
  private ArrayList a;
  private ArrayList b;
  private ReentrantLock c;
  private ArrayList d;
  private ReentrantLock e;
  private ReentrantLock f;
  private Socket g;
  private DataOutputStream h;
  private w i;
  private f j;
  private String k;
  private boolean l = true;
  private Context m;

  public l(ArrayList paramArrayList, ReentrantLock paramReentrantLock, Context paramContext)
  {
    this.b = paramArrayList;
    this.a = new ArrayList();
    this.c = paramReentrantLock;
    this.e = new ReentrantLock();
    this.d = this.a;
    this.f = this.e;
    this.m = paramContext;
  }

  private void a(b paramb)
  {
    byte[] arrayOfByte1 = paramb.a();
    int n = arrayOfByte1[0];
    Log.d("SendMsg", "Type " + n);
    if (n == 4)
      Log.d("SendMsg", "sType " + arrayOfByte1[6]);
    int i1 = paramb.b();
    paramb.a()[5] = 4;
    if (n != 1)
    {
      byte[] arrayOfByte2 = d.a(arrayOfByte1);
      arrayOfByte1 = new byte[5 + arrayOfByte2.length];
      arrayOfByte1[0] = 60;
      arrayOfByte1[1] = ((byte)(arrayOfByte2.length >> 24));
      arrayOfByte1[2] = ((byte)(arrayOfByte2.length >> 16));
      arrayOfByte1[3] = ((byte)(arrayOfByte2.length >> 8));
      arrayOfByte1[4] = ((byte)(arrayOfByte2.length >> 0));
      System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 5, arrayOfByte2.length);
      i1 = 5 + arrayOfByte2.length;
    }
    try
    {
      this.h.write(arrayOfByte1, 0, i1);
      this.h.flush();
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }

  public final void a()
  {
    this.d = this.b;
    this.f = this.c;
    Log.d("outThread", "change");
    if (!this.d.isEmpty());
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

  public final void a(j paramj)
  {
    if (this.d == this.a)
    {
      this.e.lock();
      this.a.add(paramj);
      this.e.unlock();
      if (this.d == this.a);
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
    b(paramj);
  }

  public final void a(String paramString, f paramf)
  {
    this.j = paramf;
    this.k = paramString;
  }

  public final void a(Socket paramSocket)
  {
    this.g = paramSocket;
    try
    {
      this.h = new DataOutputStream(paramSocket.getOutputStream());
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }

  public final void b()
  {
    this.l = false;
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

  public final void b(j paramj)
  {
    this.c.lock();
    this.b.add(paramj);
    this.c.unlock();
    if (this.d == this.b);
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

  public final boolean c()
  {
    return this.l;
  }

  // ERROR //
  public final void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 33	com/b/l:l	Z
    //   4: ifne +33 -> 37
    //   7: aload_0
    //   8: getfield 101	com/b/l:h	Ljava/io/DataOutputStream;
    //   11: invokevirtual 162	java/io/DataOutputStream:close	()V
    //   14: aload_0
    //   15: getfield 147	com/b/l:g	Ljava/net/Socket;
    //   18: ifnull +10 -> 28
    //   21: aload_0
    //   22: getfield 147	com/b/l:g	Ljava/net/Socket;
    //   25: invokevirtual 163	java/net/Socket:close	()V
    //   28: ldc 115
    //   30: ldc 165
    //   32: invokestatic 83	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   35: pop
    //   36: return
    //   37: aload_0
    //   38: getfield 51	com/b/l:f	Ljava/util/concurrent/locks/ReentrantLock;
    //   41: invokevirtual 130	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   44: aload_0
    //   45: getfield 49	com/b/l:d	Ljava/util/ArrayList;
    //   48: invokevirtual 121	java/util/ArrayList:isEmpty	()Z
    //   51: ifeq +32 -> 83
    //   54: aload_0
    //   55: getfield 51	com/b/l:f	Ljava/util/concurrent/locks/ReentrantLock;
    //   58: invokevirtual 137	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   61: aload_0
    //   62: monitorenter
    //   63: aload_0
    //   64: invokevirtual 168	java/lang/Object:wait	()V
    //   67: aload_0
    //   68: monitorexit
    //   69: aload_0
    //   70: getfield 33	com/b/l:l	Z
    //   73: ifeq -66 -> 7
    //   76: aload_0
    //   77: getfield 51	com/b/l:f	Ljava/util/concurrent/locks/ReentrantLock;
    //   80: invokevirtual 130	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   83: aload_0
    //   84: getfield 49	com/b/l:d	Ljava/util/ArrayList;
    //   87: iconst_0
    //   88: invokevirtual 172	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   91: checkcast 174	com/c/j
    //   94: astore 4
    //   96: aload_0
    //   97: getfield 49	com/b/l:d	Ljava/util/ArrayList;
    //   100: iconst_0
    //   101: invokevirtual 177	java/util/ArrayList:remove	(I)Ljava/lang/Object;
    //   104: pop
    //   105: aload_0
    //   106: getfield 51	com/b/l:f	Ljava/util/concurrent/locks/ReentrantLock;
    //   109: invokevirtual 137	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   112: aload 4
    //   114: ifnull -114 -> 0
    //   117: aload 4
    //   119: invokevirtual 179	com/c/j:a	()I
    //   122: tableswitch	default:+356 -> 478, 0:+30->152, 1:+221->343, 2:+176->298, 3:+65->187
    //   153: aload 4
    //   155: invokevirtual 182	com/c/j:h	()Lcom/c/b;
    //   158: invokespecial 184	com/b/l:a	(Lcom/c/b;)V
    //   161: goto -161 -> 0
    //   164: astore_3
    //   165: aload_3
    //   166: invokevirtual 185	java/lang/InterruptedException:printStackTrace	()V
    //   169: goto -141 -> 28
    //   172: astore 17
    //   174: aload_0
    //   175: monitorexit
    //   176: aload 17
    //   178: athrow
    //   179: astore_1
    //   180: aload_1
    //   181: invokevirtual 113	java/io/IOException:printStackTrace	()V
    //   184: goto -156 -> 28
    //   187: aload 4
    //   189: invokevirtual 188	com/c/j:e	()Lactivity/NewMessageActivity;
    //   192: astore 12
    //   194: aload 4
    //   196: invokevirtual 190	com/c/j:g	()Ljava/lang/String;
    //   199: astore 13
    //   201: aload_0
    //   202: new 192	d/w
    //   205: dup
    //   206: aload 4
    //   208: invokevirtual 190	com/c/j:g	()Ljava/lang/String;
    //   211: aload_0
    //   212: getfield 53	com/b/l:m	Landroid/content/Context;
    //   215: invokespecial 195	d/w:<init>	(Ljava/lang/String;Landroid/content/Context;)V
    //   218: putfield 197	com/b/l:i	Ld/w;
    //   221: aload_0
    //   222: getfield 197	com/b/l:i	Ld/w;
    //   225: aload_0
    //   226: getfield 144	com/b/l:k	Ljava/lang/String;
    //   229: aload_0
    //   230: getfield 142	com/b/l:j	Lcom/a/f;
    //   233: invokevirtual 200	d/w:b	(Ljava/lang/String;Lcom/a/f;)I
    //   236: istore 14
    //   238: iload 14
    //   240: ifle +46 -> 286
    //   243: new 202	com/b/t
    //   246: dup
    //   247: iload 14
    //   249: aload_0
    //   250: getfield 197	com/b/l:i	Ld/w;
    //   253: invokevirtual 204	d/w:e	()Ljava/lang/String;
    //   256: invokespecial 207	com/b/t:<init>	(ILjava/lang/String;)V
    //   259: astore 15
    //   261: new 174	com/c/j
    //   264: dup
    //   265: invokespecial 208	com/c/j:<init>	()V
    //   268: astore 16
    //   270: aload 16
    //   272: aload 15
    //   274: invokevirtual 210	com/b/t:a	()Lcom/c/b;
    //   277: invokevirtual 211	com/c/j:a	(Lcom/c/b;)V
    //   280: aload_0
    //   281: aload 16
    //   283: invokevirtual 139	com/b/l:b	(Lcom/c/j;)V
    //   286: aload 12
    //   288: aload 13
    //   290: iload 14
    //   292: invokevirtual 216	activity/NewMessageActivity:a	(Ljava/lang/String;I)V
    //   295: goto -295 -> 0
    //   298: aload_0
    //   299: getfield 197	com/b/l:i	Ld/w;
    //   302: ifnull -302 -> 0
    //   305: aload_0
    //   306: getfield 197	com/b/l:i	Ld/w;
    //   309: invokevirtual 218	d/w:a	()Z
    //   312: ifeq -312 -> 0
    //   315: aload 4
    //   317: invokevirtual 221	com/c/j:f	()Lcom/b/y;
    //   320: astore 11
    //   322: aload 11
    //   324: aload_0
    //   325: getfield 197	com/b/l:i	Ld/w;
    //   328: invokevirtual 226	com/b/y:a	(Ld/w;)V
    //   331: aload_0
    //   332: aload 11
    //   334: invokevirtual 228	com/b/y:e	()Lcom/c/b;
    //   337: invokespecial 184	com/b/l:a	(Lcom/c/b;)V
    //   340: goto -340 -> 0
    //   343: aload_0
    //   344: new 192	d/w
    //   347: dup
    //   348: aload 4
    //   350: invokevirtual 190	com/c/j:g	()Ljava/lang/String;
    //   353: aload_0
    //   354: getfield 53	com/b/l:m	Landroid/content/Context;
    //   357: invokespecial 195	d/w:<init>	(Ljava/lang/String;Landroid/content/Context;)V
    //   360: putfield 197	com/b/l:i	Ld/w;
    //   363: aload_0
    //   364: getfield 197	com/b/l:i	Ld/w;
    //   367: aload_0
    //   368: getfield 144	com/b/l:k	Ljava/lang/String;
    //   371: aload_0
    //   372: getfield 142	com/b/l:j	Lcom/a/f;
    //   375: invokevirtual 230	d/w:a	(Ljava/lang/String;Lcom/a/f;)V
    //   378: aload_0
    //   379: getfield 197	com/b/l:i	Ld/w;
    //   382: invokevirtual 218	d/w:a	()Z
    //   385: ifeq +31 -> 416
    //   388: aload 4
    //   390: invokevirtual 221	com/c/j:f	()Lcom/b/y;
    //   393: astore 10
    //   395: aload 10
    //   397: aload_0
    //   398: getfield 197	com/b/l:i	Ld/w;
    //   401: invokevirtual 226	com/b/y:a	(Ld/w;)V
    //   404: aload_0
    //   405: aload 10
    //   407: invokevirtual 228	com/b/y:e	()Lcom/c/b;
    //   410: invokespecial 184	com/b/l:a	(Lcom/c/b;)V
    //   413: goto -413 -> 0
    //   416: new 232	com/c/k
    //   419: dup
    //   420: invokespecial 233	com/c/k:<init>	()V
    //   423: astore 6
    //   425: aload 6
    //   427: aload 4
    //   429: invokevirtual 221	com/c/j:f	()Lcom/b/y;
    //   432: invokevirtual 234	com/b/y:a	()I
    //   435: i2l
    //   436: invokevirtual 237	com/c/k:a	(J)V
    //   439: new 239	android/content/Intent
    //   442: dup
    //   443: invokespecial 240	android/content/Intent:<init>	()V
    //   446: astore 7
    //   448: aload 7
    //   450: ldc 242
    //   452: invokevirtual 246	android/content/Intent:setAction	(Ljava/lang/String;)Landroid/content/Intent;
    //   455: pop
    //   456: aload 7
    //   458: ldc 248
    //   460: aload 6
    //   462: invokevirtual 252	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    //   465: pop
    //   466: aload_0
    //   467: getfield 53	com/b/l:m	Landroid/content/Context;
    //   470: aload 7
    //   472: invokevirtual 258	android/content/Context:sendBroadcast	(Landroid/content/Intent;)V
    //   475: goto -475 -> 0
    //   478: goto -478 -> 0
    //
    // Exception table:
    //   from	to	target	type
    //   0	7	164	java/lang/InterruptedException
    //   7	28	164	java/lang/InterruptedException
    //   37	63	164	java/lang/InterruptedException
    //   69	83	164	java/lang/InterruptedException
    //   83	112	164	java/lang/InterruptedException
    //   117	152	164	java/lang/InterruptedException
    //   152	161	164	java/lang/InterruptedException
    //   174	179	164	java/lang/InterruptedException
    //   187	238	164	java/lang/InterruptedException
    //   243	286	164	java/lang/InterruptedException
    //   286	295	164	java/lang/InterruptedException
    //   298	340	164	java/lang/InterruptedException
    //   343	413	164	java/lang/InterruptedException
    //   416	475	164	java/lang/InterruptedException
    //   63	69	172	finally
    //   0	7	179	java/io/IOException
    //   7	28	179	java/io/IOException
    //   37	63	179	java/io/IOException
    //   69	83	179	java/io/IOException
    //   83	112	179	java/io/IOException
    //   117	152	179	java/io/IOException
    //   152	161	179	java/io/IOException
    //   174	179	179	java/io/IOException
    //   187	238	179	java/io/IOException
    //   243	286	179	java/io/IOException
    //   286	295	179	java/io/IOException
    //   298	340	179	java/io/IOException
    //   343	413	179	java/io/IOException
    //   416	475	179	java/io/IOException
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.b.l
 * JD-Core Version:    0.6.2
 */