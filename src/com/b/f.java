package com.b;

import android.content.Context;
import android.util.Log;
import com.c.b;
import com.c.j;
import d.h;
import java.util.ArrayList;
import java.util.concurrent.locks.ReentrantLock;

public final class f extends Thread
{
  private ArrayList a = new ArrayList();
  private ReentrantLock b = new ReentrantLock();
  private h c = new h();
  private String d;
  private String e;
  private String f;
  private String g;
  private String h;
  private String i;
  private b j;
  private b k;
  private b l;
  private int m;
  private i n;
  private q o;
  private boolean p = true;
  private Context q;

  public f(i parami, Context paramContext)
  {
    this.n = parami;
    this.q = paramContext;
  }

  private static String a(String paramString1, String paramString2)
  {
    int i1 = paramString1.indexOf(paramString2);
    int i2 = paramString1.indexOf("\"", 1 + (i1 + paramString2.length()));
    if ((i1 != -1) && (i2 != -1))
      return paramString1.substring(1 + (i1 + paramString2.length()), i2);
    return null;
  }

  private boolean a(String paramString)
  {
    this.d = a(paramString, "name=");
    this.e = a(paramString, "mime-type=");
    this.f = a(paramString, "uti-type=");
    String str1 = a(paramString, "mmcs-owner=");
    this.l = new b(str1.getBytes(), str1.length());
    this.i = a(paramString, "mmcs-url=");
    this.g = this.i.substring(8, this.i.indexOf("/", 8));
    this.h = this.i.substring(1 + this.i.indexOf("/", 8), this.i.length());
    String str2 = a(paramString, "decryption-key=").substring(2);
    this.j = new b(str2.getBytes(), str2.length());
    this.j.c();
    String str3 = a(paramString, "file-size=");
    String str4 = a(paramString, "mmcs-signature-hex=");
    this.k = new b(str4.getBytes(), str4.length());
    this.k.c();
    Log.d("Rec Attach", "Sig " + str4);
    Log.d("Rec Attach", "Len " + str3);
    Log.d("Rec Attach", "url " + this.i);
    Log.d("Rec Attach", "mmcs_owner " + str1);
    this.m = Integer.parseInt(str3);
    this.c.a(this.k, this.l);
    j localj = new j();
    localj.a(this.c.c());
    this.n.b(localj);
    int i1 = 0;
    while (true)
    {
      int i2 = i1 + 1;
      if (i1 >= 40)
        return false;
      if (this.c.d())
        return true;
      try
      {
        Thread.sleep(1000L);
        i1 = i2;
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
        i1 = i2;
      }
    }
  }

  public final h a()
  {
    return this.c;
  }

  public final void a(q paramq)
  {
    this.o = paramq;
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

  public final void b()
  {
    this.p = false;
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

  // ERROR //
  public final void run()
  {
    // Byte code:
    //   0: ldc 218
    //   2: ldc 220
    //   4: invokestatic 154	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   7: pop
    //   8: aload_0
    //   9: getfield 38	com/b/f:p	Z
    //   12: istore 4
    //   14: iload 4
    //   16: ifne +12 -> 28
    //   19: ldc 218
    //   21: ldc 222
    //   23: invokestatic 154	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   26: pop
    //   27: return
    //   28: aload_0
    //   29: getfield 48	com/b/f:b	Ljava/util/concurrent/locks/ReentrantLock;
    //   32: invokevirtual 203	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   35: aload_0
    //   36: getfield 43	com/b/f:a	Ljava/util/ArrayList;
    //   39: invokevirtual 225	java/util/ArrayList:isEmpty	()Z
    //   42: ifeq +32 -> 74
    //   45: aload_0
    //   46: getfield 48	com/b/f:b	Ljava/util/concurrent/locks/ReentrantLock;
    //   49: invokevirtual 210	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   52: aload_0
    //   53: monitorenter
    //   54: aload_0
    //   55: invokevirtual 228	java/lang/Object:wait	()V
    //   58: aload_0
    //   59: monitorexit
    //   60: aload_0
    //   61: getfield 38	com/b/f:p	Z
    //   64: ifeq -45 -> 19
    //   67: aload_0
    //   68: getfield 48	com/b/f:b	Ljava/util/concurrent/locks/ReentrantLock;
    //   71: invokevirtual 203	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   74: aload_0
    //   75: getfield 43	com/b/f:a	Ljava/util/ArrayList;
    //   78: iconst_0
    //   79: invokevirtual 232	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   82: checkcast 172	com/c/j
    //   85: astore 5
    //   87: aload 5
    //   89: invokevirtual 235	com/c/j:m	()Lcom/b/w;
    //   92: astore 6
    //   94: aload_0
    //   95: getfield 43	com/b/f:a	Ljava/util/ArrayList;
    //   98: iconst_0
    //   99: invokevirtual 238	java/util/ArrayList:remove	(I)Ljava/lang/Object;
    //   102: pop
    //   103: aload_0
    //   104: getfield 48	com/b/f:b	Ljava/util/concurrent/locks/ReentrantLock;
    //   107: invokevirtual 210	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   110: iconst_1
    //   111: istore 8
    //   113: aload 6
    //   115: invokevirtual 243	com/b/w:f	()Ljava/util/ArrayList;
    //   118: astore 9
    //   120: iconst_0
    //   121: istore 10
    //   123: iload 10
    //   125: aload 9
    //   127: invokevirtual 246	java/util/ArrayList:size	()I
    //   130: if_icmplt +43 -> 173
    //   133: iload 8
    //   135: istore 11
    //   137: aload 5
    //   139: iload 11
    //   141: invokevirtual 249	com/c/j:a	(Z)V
    //   144: aload_0
    //   145: getfield 200	com/b/f:o	Lcom/b/q;
    //   148: aload 5
    //   150: invokeinterface 253 2 0
    //   155: goto -147 -> 8
    //   158: astore_2
    //   159: aload_2
    //   160: invokevirtual 196	java/lang/InterruptedException:printStackTrace	()V
    //   163: goto -144 -> 19
    //   166: astore 22
    //   168: aload_0
    //   169: monitorexit
    //   170: aload 22
    //   172: athrow
    //   173: aload 9
    //   175: iload 10
    //   177: invokevirtual 232	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   180: checkcast 60	java/lang/String
    //   183: astore 12
    //   185: ldc 255
    //   187: new 136	java/lang/StringBuilder
    //   190: dup
    //   191: ldc_w 257
    //   194: invokespecial 141	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   197: aload 12
    //   199: invokevirtual 145	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   202: invokevirtual 149	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   205: invokestatic 154	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   208: pop
    //   209: iload 8
    //   211: istore 11
    //   213: iconst_0
    //   214: istore 14
    //   216: goto +175 -> 391
    //   219: new 259	d/i
    //   222: dup
    //   223: invokespecial 260	d/i:<init>	()V
    //   226: astore 15
    //   228: aload_0
    //   229: aload 12
    //   231: invokespecial 262	com/b/f:a	(Ljava/lang/String;)Z
    //   234: ifeq +151 -> 385
    //   237: aload_0
    //   238: getfield 53	com/b/f:c	Ld/h;
    //   241: invokevirtual 264	d/h:a	()Lcom/c/b;
    //   244: astore 16
    //   246: aload_0
    //   247: getfield 53	com/b/f:c	Ld/h;
    //   250: invokevirtual 266	d/h:b	()Lcom/c/b;
    //   253: astore 17
    //   255: new 60	java/lang/String
    //   258: dup
    //   259: aload 17
    //   261: invokevirtual 268	com/c/b:a	()[B
    //   264: iconst_0
    //   265: aload 17
    //   267: invokevirtual 270	com/c/b:b	()I
    //   270: invokespecial 273	java/lang/String:<init>	([BII)V
    //   273: astore 18
    //   275: aload 15
    //   277: new 60	java/lang/String
    //   280: dup
    //   281: aload 16
    //   283: invokevirtual 268	com/c/b:a	()[B
    //   286: iconst_0
    //   287: aload 16
    //   289: invokevirtual 270	com/c/b:b	()I
    //   292: invokespecial 273	java/lang/String:<init>	([BII)V
    //   295: aload_0
    //   296: getfield 132	com/b/f:k	Lcom/c/b;
    //   299: invokevirtual 275	com/c/b:d	()Ljava/lang/String;
    //   302: aload 18
    //   304: aload_0
    //   305: getfield 111	com/b/f:i	Ljava/lang/String;
    //   308: aload_0
    //   309: getfield 167	com/b/f:m	I
    //   312: invokevirtual 278	d/i:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    //   315: pop
    //   316: bipush 32
    //   318: newarray byte
    //   320: astore 20
    //   322: aload_0
    //   323: getfield 124	com/b/f:j	Lcom/c/b;
    //   326: invokevirtual 268	com/c/b:a	()[B
    //   329: iconst_0
    //   330: aload 20
    //   332: iconst_0
    //   333: bipush 32
    //   335: invokestatic 284	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   338: aload 15
    //   340: new 136	java/lang/StringBuilder
    //   343: dup
    //   344: getstatic 288	com/c/a:a	Ljava/lang/String;
    //   347: invokestatic 292	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   350: invokespecial 141	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   353: aload_0
    //   354: getfield 86	com/b/f:d	Ljava/lang/String;
    //   357: invokevirtual 145	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   360: invokevirtual 149	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   363: aload 20
    //   365: invokevirtual 295	d/i:a	(Ljava/lang/String;[B)Z
    //   368: istore 21
    //   370: iload 21
    //   372: istore 11
    //   374: iload 11
    //   376: ifne +20 -> 396
    //   379: iinc 14 1
    //   382: goto +9 -> 391
    //   385: iconst_0
    //   386: istore 11
    //   388: goto -9 -> 379
    //   391: iload 14
    //   393: ifle -174 -> 219
    //   396: iload 11
    //   398: ifeq -261 -> 137
    //   401: iinc 10 1
    //   404: iload 11
    //   406: istore 8
    //   408: goto -285 -> 123
    //
    // Exception table:
    //   from	to	target	type
    //   8	14	158	java/lang/InterruptedException
    //   28	54	158	java/lang/InterruptedException
    //   60	74	158	java/lang/InterruptedException
    //   74	110	158	java/lang/InterruptedException
    //   113	120	158	java/lang/InterruptedException
    //   123	133	158	java/lang/InterruptedException
    //   137	155	158	java/lang/InterruptedException
    //   168	173	158	java/lang/InterruptedException
    //   173	209	158	java/lang/InterruptedException
    //   219	370	158	java/lang/InterruptedException
    //   54	60	166	finally
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.b.f
 * JD-Core Version:    0.6.2
 */