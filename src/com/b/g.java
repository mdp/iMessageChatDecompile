package com.b;

import a.c;
import android.content.Context;
import com.c.a;
import com.c.b;
import com.c.j;
import d.l;
import java.io.File;
import java.util.ArrayList;
import java.util.Random;
import java.util.Vector;
import java.util.concurrent.locks.ReentrantLock;

public final class g extends Thread
{
  private ArrayList a;
  private ReentrantLock b;
  private l c;
  private i d;
  private Vector e;
  private b f;
  private int g;
  private String h;
  private String i;
  private byte[] j;
  private boolean k = true;
  private Context l;
  private int m;
  private int n = 0;
  private com.a.d o;
  private r p = new h(this);

  public g(i parami, ArrayList paramArrayList, ReentrantLock paramReentrantLock, Context paramContext)
  {
    this.a = paramArrayList;
    this.b = paramReentrantLock;
    this.c = new l();
    this.d = parami;
    this.j = new byte[32];
    this.l = paramContext;
    this.o = new com.a.d(paramContext);
  }

  private boolean c()
  {
    new Random(System.currentTimeMillis()).nextBytes(this.j);
    int i1 = this.h.lastIndexOf("/");
    this.i = (a.b + this.h.substring(i1) + ".code");
    d.d.b(this.j, this.h, this.i);
    this.f = c.b(this.i);
    this.e = c.a(this.i);
    this.g = ((int)new File(this.i).length());
    this.c.a(this.g, this.f);
    j localj = new j();
    localj.a(this.c.e());
    this.d.b(localj);
    int i2 = 0;
    while (true)
    {
      int i3 = i2 + 1;
      if (i2 >= 40)
        return false;
      if (this.c.a)
        return true;
      try
      {
        Thread.sleep(1000L);
        i2 = i3;
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
        i2 = i3;
      }
    }
  }

  public final void a()
  {
    this.k = false;
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

  public final l b()
  {
    return this.c;
  }

  // ERROR //
  public final void run()
  {
    // Byte code:
    //   0: ldc 208
    //   2: ldc 210
    //   4: invokestatic 215	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   7: pop
    //   8: aload_0
    //   9: getfield 40	com/b/g:k	Z
    //   12: istore 4
    //   14: iload 4
    //   16: ifne +19 -> 35
    //   19: aload_0
    //   20: getfield 71	com/b/g:o	Lcom/a/d;
    //   23: invokevirtual 217	com/a/d:b	()V
    //   26: ldc 208
    //   28: ldc 219
    //   30: invokestatic 215	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   33: pop
    //   34: return
    //   35: aload_0
    //   36: getfield 53	com/b/g:b	Ljava/util/concurrent/locks/ReentrantLock;
    //   39: invokevirtual 195	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   42: aload_0
    //   43: getfield 51	com/b/g:a	Ljava/util/ArrayList;
    //   46: invokevirtual 222	java/util/ArrayList:isEmpty	()Z
    //   49: ifeq +32 -> 81
    //   52: aload_0
    //   53: getfield 53	com/b/g:b	Ljava/util/concurrent/locks/ReentrantLock;
    //   56: invokevirtual 204	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   59: aload_0
    //   60: monitorenter
    //   61: aload_0
    //   62: invokevirtual 225	java/lang/Object:wait	()V
    //   65: aload_0
    //   66: monitorexit
    //   67: aload_0
    //   68: getfield 40	com/b/g:k	Z
    //   71: ifeq -52 -> 19
    //   74: aload_0
    //   75: getfield 53	com/b/g:b	Ljava/util/concurrent/locks/ReentrantLock;
    //   78: invokevirtual 195	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   81: aload_0
    //   82: getfield 51	com/b/g:a	Ljava/util/ArrayList;
    //   85: iconst_0
    //   86: invokevirtual 229	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   89: checkcast 163	com/c/j
    //   92: astore 5
    //   94: aload_0
    //   95: getfield 51	com/b/g:a	Ljava/util/ArrayList;
    //   98: iconst_0
    //   99: invokevirtual 232	java/util/ArrayList:remove	(I)Ljava/lang/Object;
    //   102: pop
    //   103: aload_0
    //   104: getfield 53	com/b/g:b	Ljava/util/concurrent/locks/ReentrantLock;
    //   107: invokevirtual 204	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   110: aload 5
    //   112: invokevirtual 235	com/c/j:f	()Lcom/b/y;
    //   115: astore 7
    //   117: aload_0
    //   118: aload 7
    //   120: invokevirtual 240	com/b/y:a	()I
    //   123: putfield 74	com/b/g:m	I
    //   126: aload 7
    //   128: invokevirtual 243	com/b/y:d	()Ljava/util/ArrayList;
    //   131: astore 8
    //   133: aload 7
    //   135: invokevirtual 245	com/b/y:f	()V
    //   138: iconst_1
    //   139: istore 9
    //   141: iconst_0
    //   142: istore 10
    //   144: iload 10
    //   146: aload 8
    //   148: invokevirtual 248	java/util/ArrayList:size	()I
    //   151: if_icmplt +91 -> 242
    //   154: iload 9
    //   156: istore 11
    //   158: iload 11
    //   160: ifeq +465 -> 625
    //   163: aload 7
    //   165: invokevirtual 250	com/b/y:g	()V
    //   168: aload_0
    //   169: getfield 71	com/b/g:o	Lcom/a/d;
    //   172: getstatic 252	com/c/a:f	Ljava/lang/String;
    //   175: aload 7
    //   177: invokevirtual 240	com/b/y:a	()I
    //   180: i2l
    //   181: aload 7
    //   183: invokevirtual 254	com/b/y:c	()Ljava/lang/String;
    //   186: invokevirtual 257	com/a/d:a	(Ljava/lang/String;JLjava/lang/String;)V
    //   189: aload 5
    //   191: aload 5
    //   193: invokevirtual 259	com/c/j:g	()Ljava/lang/String;
    //   196: aload 7
    //   198: invokevirtual 262	com/c/j:a	(Ljava/lang/String;Lcom/b/y;)V
    //   201: aload_0
    //   202: getfield 60	com/b/g:d	Lcom/b/i;
    //   205: aload 5
    //   207: invokevirtual 175	com/b/i:b	(Lcom/c/j;)V
    //   210: aload_0
    //   211: getfield 49	com/b/g:p	Lcom/b/r;
    //   214: iconst_4
    //   215: iconst_4
    //   216: ldc_w 263
    //   219: invokeinterface 268 4 0
    //   224: goto -216 -> 8
    //   227: astore_2
    //   228: aload_2
    //   229: invokevirtual 185	java/lang/InterruptedException:printStackTrace	()V
    //   232: goto -213 -> 19
    //   235: astore 27
    //   237: aload_0
    //   238: monitorexit
    //   239: aload 27
    //   241: athrow
    //   242: aload 8
    //   244: iload 10
    //   246: invokevirtual 229	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   249: checkcast 100	java/lang/String
    //   252: astore 12
    //   254: aload 12
    //   256: ldc_w 270
    //   259: invokevirtual 274	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   262: ifeq +349 -> 611
    //   265: aload_0
    //   266: aload 12
    //   268: bipush 10
    //   270: bipush 248
    //   272: aload 12
    //   274: invokevirtual 276	java/lang/String:length	()I
    //   277: iadd
    //   278: invokevirtual 279	java/lang/String:substring	(II)Ljava/lang/String;
    //   281: putfield 96	com/b/g:h	Ljava/lang/String;
    //   284: ldc_w 281
    //   287: new 106	java/lang/StringBuilder
    //   290: dup
    //   291: ldc_w 283
    //   294: invokespecial 117	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   297: aload_0
    //   298: getfield 96	com/b/g:h	Ljava/lang/String;
    //   301: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   304: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   307: invokestatic 215	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   310: pop
    //   311: aload_0
    //   312: getfield 49	com/b/g:p	Lcom/b/r;
    //   315: iconst_4
    //   316: iconst_3
    //   317: ldc_w 263
    //   320: invokeinterface 268 4 0
    //   325: aload_0
    //   326: invokespecial 285	com/b/g:c	()Z
    //   329: ifeq +334 -> 663
    //   332: aload_0
    //   333: getfield 49	com/b/g:p	Lcom/b/r;
    //   336: iconst_3
    //   337: iconst_3
    //   338: fconst_1
    //   339: invokeinterface 268 4 0
    //   344: new 287	d/m
    //   347: dup
    //   348: invokespecial 288	d/m:<init>	()V
    //   351: astore 14
    //   353: aload 14
    //   355: aload_0
    //   356: getfield 49	com/b/g:p	Lcom/b/r;
    //   359: invokevirtual 291	d/m:a	(Lcom/b/r;)V
    //   362: aload 14
    //   364: aload_0
    //   365: getfield 150	com/b/g:e	Ljava/util/Vector;
    //   368: aload_0
    //   369: getfield 145	com/b/g:f	Lcom/c/b;
    //   372: invokevirtual 294	d/m:a	(Ljava/util/Vector;Lcom/c/b;)V
    //   375: aload 14
    //   377: aload_0
    //   378: getfield 58	com/b/g:c	Ld/l;
    //   381: invokevirtual 295	d/l:c	()Ljava/lang/String;
    //   384: invokevirtual 297	d/m:b	(Ljava/lang/String;)V
    //   387: aload_0
    //   388: getfield 58	com/b/g:c	Ld/l;
    //   391: invokevirtual 299	d/l:a	()Lcom/c/b;
    //   394: astore 15
    //   396: aload_0
    //   397: getfield 58	com/b/g:c	Ld/l;
    //   400: invokevirtual 301	d/l:b	()Lcom/c/b;
    //   403: astore 16
    //   405: new 100	java/lang/String
    //   408: dup
    //   409: aload 15
    //   411: invokevirtual 306	com/c/b:a	()[B
    //   414: iconst_0
    //   415: aload 15
    //   417: invokevirtual 308	com/c/b:b	()I
    //   420: invokespecial 311	java/lang/String:<init>	([BII)V
    //   423: astore 17
    //   425: aload_0
    //   426: getfield 145	com/b/g:f	Lcom/c/b;
    //   429: invokevirtual 313	com/c/b:d	()Ljava/lang/String;
    //   432: astore 18
    //   434: aload 14
    //   436: aload 17
    //   438: aload 18
    //   440: new 100	java/lang/String
    //   443: dup
    //   444: aload 16
    //   446: invokevirtual 306	com/c/b:a	()[B
    //   449: iconst_0
    //   450: aload 16
    //   452: invokevirtual 308	com/c/b:b	()I
    //   455: invokespecial 311	java/lang/String:<init>	([BII)V
    //   458: aload_0
    //   459: getfield 158	com/b/g:g	I
    //   462: invokevirtual 316	d/m:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    //   465: pop
    //   466: aload_0
    //   467: getfield 133	com/b/g:i	Ljava/lang/String;
    //   470: astore 20
    //   472: aload_0
    //   473: getfield 62	com/b/g:j	[B
    //   476: pop
    //   477: aload 14
    //   479: aload 20
    //   481: invokevirtual 318	d/m:a	(Ljava/lang/String;)Z
    //   484: ifeq +173 -> 657
    //   487: aload_0
    //   488: getfield 96	com/b/g:h	Ljava/lang/String;
    //   491: ldc 98
    //   493: invokevirtual 104	java/lang/String:lastIndexOf	(Ljava/lang/String;)I
    //   496: istore 23
    //   498: new 303	com/c/b
    //   501: dup
    //   502: aload_0
    //   503: getfield 62	com/b/g:j	[B
    //   506: aload_0
    //   507: getfield 62	com/b/g:j	[B
    //   510: arraylength
    //   511: invokespecial 321	com/c/b:<init>	([BI)V
    //   514: astore 24
    //   516: ldc_w 323
    //   519: astore 25
    //   521: ldc_w 325
    //   524: astore 26
    //   526: aload_0
    //   527: getfield 96	com/b/g:h	Ljava/lang/String;
    //   530: ldc_w 327
    //   533: invokevirtual 330	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   536: ifeq +13 -> 549
    //   539: ldc_w 332
    //   542: astore 26
    //   544: ldc_w 334
    //   547: astore 25
    //   549: aload 7
    //   551: aload_0
    //   552: getfield 96	com/b/g:h	Ljava/lang/String;
    //   555: iload 23
    //   557: iconst_1
    //   558: iadd
    //   559: invokevirtual 121	java/lang/String:substring	(I)Ljava/lang/String;
    //   562: aload_0
    //   563: getfield 158	com/b/g:g	I
    //   566: aload 26
    //   568: aload 25
    //   570: aload 17
    //   572: aload_0
    //   573: getfield 58	com/b/g:c	Ld/l;
    //   576: invokevirtual 295	d/l:c	()Ljava/lang/String;
    //   579: aload 18
    //   581: aload 24
    //   583: invokevirtual 313	com/c/b:d	()Ljava/lang/String;
    //   586: invokevirtual 337	com/b/y:a	(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   589: iload 9
    //   591: istore 11
    //   593: new 152	java/io/File
    //   596: dup
    //   597: aload_0
    //   598: getfield 133	com/b/g:i	Ljava/lang/String;
    //   601: invokespecial 153	java/io/File:<init>	(Ljava/lang/String;)V
    //   604: invokevirtual 340	java/io/File:delete	()Z
    //   607: pop
    //   608: goto +34 -> 642
    //   611: aload 7
    //   613: aload 12
    //   615: invokevirtual 342	com/b/y:a	(Ljava/lang/String;)V
    //   618: iload 9
    //   620: istore 11
    //   622: goto +25 -> 647
    //   625: aload_0
    //   626: getfield 49	com/b/g:p	Lcom/b/r;
    //   629: iconst_4
    //   630: iconst_5
    //   631: ldc_w 263
    //   634: invokeinterface 268 4 0
    //   639: goto -631 -> 8
    //   642: iload 11
    //   644: ifeq -486 -> 158
    //   647: iinc 10 1
    //   650: iload 11
    //   652: istore 9
    //   654: goto -510 -> 144
    //   657: iconst_0
    //   658: istore 11
    //   660: goto -67 -> 593
    //   663: iconst_0
    //   664: istore 11
    //   666: goto -24 -> 642
    //
    // Exception table:
    //   from	to	target	type
    //   8	14	227	java/lang/InterruptedException
    //   35	61	227	java/lang/InterruptedException
    //   67	81	227	java/lang/InterruptedException
    //   81	138	227	java/lang/InterruptedException
    //   144	154	227	java/lang/InterruptedException
    //   163	224	227	java/lang/InterruptedException
    //   237	242	227	java/lang/InterruptedException
    //   242	516	227	java/lang/InterruptedException
    //   526	539	227	java/lang/InterruptedException
    //   549	589	227	java/lang/InterruptedException
    //   593	608	227	java/lang/InterruptedException
    //   611	618	227	java/lang/InterruptedException
    //   625	639	227	java/lang/InterruptedException
    //   61	67	235	finally
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.b.g
 * JD-Core Version:    0.6.2
 */