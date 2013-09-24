package com.umeng.common.net;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Debug;
import android.os.Handler;
import android.os.IBinder;
import android.os.Messenger;
import android.widget.RemoteViews;
import java.util.HashMap;
import java.util.Map;

public class DownloadingService extends Service
{
  public static boolean a = false;
  private static final String c = DownloadingService.class.getName();
  private static Map h = new HashMap();
  private static Map i = new HashMap();
  private static Boolean k = Boolean.valueOf(false);
  final Messenger b = new Messenger(new c(this));
  private NotificationManager d;
  private Context e;
  private Handler f;
  private a g;
  private BroadcastReceiver j;

  private void a(int paramInt)
  {
    d locald = (d)i.get(Integer.valueOf(paramInt));
    if (locald != null)
    {
      com.umeng.common.a.c(c, "download service clear cache " + locald.e.b);
      if (locald.a != null)
        locald.a.a(2);
      this.d.cancel(locald.c);
      if (h.containsKey(locald.e))
        h.remove(locald.e);
      if (i.containsKey(Integer.valueOf(locald.c)))
        i.remove(Integer.valueOf(locald.c));
      d();
    }
  }

  private void a(Notification paramNotification, int paramInt)
  {
    int m = com.umeng.common.a.a.d(this.e);
    RemoteViews localRemoteViews1 = paramNotification.contentView;
    Resources localResources = this.e.getResources();
    com.umeng.common.c.a(this.e.getApplicationContext());
    localRemoteViews1.setTextViewText(m, localResources.getString(com.umeng.common.c.d("umeng_common_action_pause")));
    RemoteViews localRemoteViews2 = paramNotification.contentView;
    com.umeng.common.c.a(this.e);
    localRemoteViews2.setInt(m, "setBackgroundResource", com.umeng.common.c.b("umeng_common_gradient_orange"));
    this.d.notify(paramInt, paramNotification);
  }

  private static final void a(Map paramMap, boolean paramBoolean, String[] paramArrayOfString)
  {
    new Thread(new o(paramArrayOfString, paramBoolean, paramMap)).start();
  }

  // ERROR //
  private boolean a(Context paramContext, Intent paramIntent)
  {
    // Byte code:
    //   0: aload_2
    //   1: invokevirtual 406	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   4: ldc_w 408
    //   7: invokevirtual 413	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   10: ldc_w 415
    //   13: invokevirtual 419	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   16: astore 4
    //   18: aload 4
    //   20: iconst_0
    //   21: aaload
    //   22: invokestatic 422	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   25: istore 5
    //   27: aload 4
    //   29: iconst_1
    //   30: aaload
    //   31: invokevirtual 425	java/lang/String:trim	()Ljava/lang/String;
    //   34: astore 6
    //   36: iload 5
    //   38: ifeq +404 -> 442
    //   41: aload 6
    //   43: invokestatic 431	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   46: ifne +396 -> 442
    //   49: getstatic 46	com/umeng/common/net/DownloadingService:i	Ljava/util/Map;
    //   52: iload 5
    //   54: invokestatic 226	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   57: invokeinterface 264 2 0
    //   62: ifeq +380 -> 442
    //   65: getstatic 46	com/umeng/common/net/DownloadingService:i	Ljava/util/Map;
    //   68: iload 5
    //   70: invokestatic 226	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   73: invokeinterface 232 2 0
    //   78: checkcast 234	com/umeng/common/net/d
    //   81: astore 7
    //   83: aload 7
    //   85: getfield 250	com/umeng/common/net/d:a	Lcom/umeng/common/net/b;
    //   88: astore 8
    //   90: ldc 189
    //   92: aload 6
    //   94: invokevirtual 399	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   97: ifeq +247 -> 344
    //   100: aload 8
    //   102: ifnonnull +116 -> 218
    //   105: getstatic 35	com/umeng/common/net/DownloadingService:c	Ljava/lang/String;
    //   108: ldc_w 433
    //   111: invokestatic 247	com/umeng/common/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   114: aload_1
    //   115: ldc_w 435
    //   118: invokestatic 440	com/umeng/common/b:a	(Landroid/content/Context;Ljava/lang/String;)Z
    //   121: ifeq +45 -> 166
    //   124: aload_1
    //   125: invokestatic 442	com/umeng/common/b:h	(Landroid/content/Context;)Z
    //   128: ifne +38 -> 166
    //   131: aload_1
    //   132: invokevirtual 136	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   135: astore 10
    //   137: aload_1
    //   138: invokevirtual 137	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   141: invokestatic 90	com/umeng/common/c:a	(Landroid/content/Context;)Lcom/umeng/common/c;
    //   144: pop
    //   145: aload_1
    //   146: aload 10
    //   148: ldc_w 444
    //   151: invokestatic 141	com/umeng/common/c:d	(Ljava/lang/String;)I
    //   154: invokevirtual 147	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   157: iconst_1
    //   158: invokestatic 450	android/widget/Toast:makeText	(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    //   161: invokevirtual 453	android/widget/Toast:show	()V
    //   164: iconst_0
    //   165: ireturn
    //   166: new 252	com/umeng/common/net/b
    //   169: dup
    //   170: aload_0
    //   171: aload_1
    //   172: aload 7
    //   174: getfield 242	com/umeng/common/net/d:e	Lcom/umeng/common/net/g;
    //   177: iload 5
    //   179: aload 7
    //   181: getfield 455	com/umeng/common/net/d:d	I
    //   184: aload_0
    //   185: getfield 319	com/umeng/common/net/DownloadingService:g	Lcom/umeng/common/net/a;
    //   188: invokespecial 322	com/umeng/common/net/b:<init>	(Lcom/umeng/common/net/DownloadingService;Landroid/content/Context;Lcom/umeng/common/net/g;IILcom/umeng/common/net/a;)V
    //   191: astore 9
    //   193: aload 7
    //   195: aload 9
    //   197: putfield 250	com/umeng/common/net/d:a	Lcom/umeng/common/net/b;
    //   200: aload 9
    //   202: invokevirtual 332	com/umeng/common/net/b:start	()V
    //   205: aload_0
    //   206: aload 7
    //   208: getfield 458	com/umeng/common/net/d:b	Landroid/app/Notification;
    //   211: iload 5
    //   213: invokespecial 209	com/umeng/common/net/DownloadingService:a	(Landroid/app/Notification;I)V
    //   216: iconst_1
    //   217: ireturn
    //   218: getstatic 35	com/umeng/common/net/DownloadingService:c	Ljava/lang/String;
    //   221: ldc_w 433
    //   224: invokestatic 247	com/umeng/common/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   227: aload 8
    //   229: iconst_1
    //   230: invokevirtual 254	com/umeng/common/net/b:a	(I)V
    //   233: aload 7
    //   235: aconst_null
    //   236: putfield 250	com/umeng/common/net/d:a	Lcom/umeng/common/net/b;
    //   239: aload 7
    //   241: getfield 458	com/umeng/common/net/d:b	Landroid/app/Notification;
    //   244: astore 12
    //   246: aload_0
    //   247: getfield 219	com/umeng/common/net/DownloadingService:e	Landroid/content/Context;
    //   250: invokestatic 199	com/umeng/common/a/a:d	(Landroid/content/Context;)I
    //   253: istore 13
    //   255: aload 12
    //   257: getfield 167	android/app/Notification:contentView	Landroid/widget/RemoteViews;
    //   260: astore 14
    //   262: aload_0
    //   263: getfield 219	com/umeng/common/net/DownloadingService:e	Landroid/content/Context;
    //   266: invokevirtual 136	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   269: astore 15
    //   271: aload_0
    //   272: getfield 219	com/umeng/common/net/DownloadingService:e	Landroid/content/Context;
    //   275: invokevirtual 137	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   278: invokestatic 90	com/umeng/common/c:a	(Landroid/content/Context;)Lcom/umeng/common/c;
    //   281: pop
    //   282: aload 14
    //   284: iload 13
    //   286: aload 15
    //   288: ldc_w 460
    //   291: invokestatic 141	com/umeng/common/c:d	(Ljava/lang/String;)I
    //   294: invokevirtual 147	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   297: invokevirtual 130	android/widget/RemoteViews:setTextViewText	(ILjava/lang/CharSequence;)V
    //   300: aload 12
    //   302: getfield 167	android/app/Notification:contentView	Landroid/widget/RemoteViews;
    //   305: astore 17
    //   307: aload_0
    //   308: getfield 219	com/umeng/common/net/DownloadingService:e	Landroid/content/Context;
    //   311: invokestatic 90	com/umeng/common/c:a	(Landroid/content/Context;)Lcom/umeng/common/c;
    //   314: pop
    //   315: aload 17
    //   317: iload 13
    //   319: ldc_w 273
    //   322: ldc_w 462
    //   325: invokestatic 277	com/umeng/common/c:b	(Ljava/lang/String;)I
    //   328: invokevirtual 281	android/widget/RemoteViews:setInt	(ILjava/lang/String;I)V
    //   331: aload_0
    //   332: getfield 216	com/umeng/common/net/DownloadingService:d	Landroid/app/NotificationManager;
    //   335: iload 5
    //   337: aload 12
    //   339: invokevirtual 285	android/app/NotificationManager:notify	(ILandroid/app/Notification;)V
    //   342: iconst_1
    //   343: ireturn
    //   344: ldc 211
    //   346: aload 6
    //   348: invokevirtual 399	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   351: ifeq +91 -> 442
    //   354: getstatic 35	com/umeng/common/net/DownloadingService:c	Ljava/lang/String;
    //   357: ldc_w 464
    //   360: invokestatic 247	com/umeng/common/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   363: aload 8
    //   365: ifnull +17 -> 382
    //   368: aload 8
    //   370: iconst_2
    //   371: invokevirtual 254	com/umeng/common/net/b:a	(I)V
    //   374: aload_0
    //   375: iload 5
    //   377: invokespecial 287	com/umeng/common/net/DownloadingService:a	(I)V
    //   380: iconst_1
    //   381: ireturn
    //   382: aload 7
    //   384: getfield 467	com/umeng/common/net/d:f	[J
    //   387: iconst_0
    //   388: laload
    //   389: lstore 21
    //   391: aload 7
    //   393: getfield 467	com/umeng/common/net/d:f	[J
    //   396: iconst_1
    //   397: laload
    //   398: lstore 23
    //   400: aload 7
    //   402: getfield 467	com/umeng/common/net/d:f	[J
    //   405: iconst_2
    //   406: laload
    //   407: lstore 25
    //   409: aload 7
    //   411: getfield 242	com/umeng/common/net/d:e	Lcom/umeng/common/net/g;
    //   414: lload 21
    //   416: lload 23
    //   418: lload 25
    //   420: invokestatic 357	com/umeng/common/net/DownloadingService:b	(Lcom/umeng/common/net/g;JJJ)V
    //   423: goto -49 -> 374
    //   426: astore 20
    //   428: aload_0
    //   429: iload 5
    //   431: invokespecial 287	com/umeng/common/net/DownloadingService:a	(I)V
    //   434: goto -54 -> 380
    //   437: astore_3
    //   438: aload_3
    //   439: invokevirtual 470	java/lang/Exception:printStackTrace	()V
    //   442: iconst_0
    //   443: ireturn
    //   444: astore 19
    //   446: aload_0
    //   447: iload 5
    //   449: invokespecial 287	com/umeng/common/net/DownloadingService:a	(I)V
    //   452: aload 19
    //   454: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   368	374	426	java/lang/Exception
    //   382	423	426	java/lang/Exception
    //   0	36	437	java/lang/Exception
    //   41	100	437	java/lang/Exception
    //   105	164	437	java/lang/Exception
    //   166	216	437	java/lang/Exception
    //   218	342	437	java/lang/Exception
    //   344	363	437	java/lang/Exception
    //   374	380	437	java/lang/Exception
    //   428	434	437	java/lang/Exception
    //   446	455	437	java/lang/Exception
    //   368	374	444	finally
    //   382	423	444	finally
  }

  private static void b(g paramg, long paramLong1, long paramLong2, long paramLong3)
  {
    if (paramg.f != null)
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("dsize", String.valueOf(paramLong1));
      localHashMap.put("dtime", com.umeng.common.util.b.a().split(" ")[1]);
      boolean bool = paramLong2 < 0L;
      float f1 = 0.0F;
      if (bool)
        f1 = (float)paramLong1 / (float)paramLong2;
      localHashMap.put("dpcent", String.valueOf((int)(f1 * 100.0F)));
      localHashMap.put("ptimes", String.valueOf(paramLong3));
      a(localHashMap, false, paramg.f);
    }
  }

  private static void d()
  {
    if (a)
    {
      int m = h.size();
      int n = i.size();
      com.umeng.common.a.a(c, "Client size =" + m + "   cacheSize = " + n);
      if (m != n)
        throw new RuntimeException("Client size =" + m + "   cacheSize = " + n);
    }
  }

  public final void a(String paramString)
  {
    synchronized (k)
    {
      if (!k.booleanValue())
      {
        com.umeng.common.a.c(c, "show single toast.[" + paramString + "]");
        k = Boolean.valueOf(true);
        this.f.post(new m(this, paramString));
        this.f.postDelayed(new n(this), 1200L);
      }
      return;
    }
  }

  public IBinder onBind(Intent paramIntent)
  {
    com.umeng.common.a.c(c, "onBind ");
    return this.b.getBinder();
  }

  public void onCreate()
  {
    super.onCreate();
    if (a)
    {
      com.umeng.common.a.a = true;
      Debug.waitForDebugger();
    }
    com.umeng.common.a.c(c, "onCreate ");
    this.d = ((NotificationManager)getSystemService("notification"));
    this.e = this;
    this.f = new k(this);
    this.g = new l(this);
  }

  public void onDestroy()
  {
    try
    {
      h.a(getApplicationContext()).a();
      h.a(getApplicationContext()).finalize();
      if (this.j != null)
        unregisterReceiver(this.j);
      super.onDestroy();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.umeng.common.a.b(c, localException.getMessage());
    }
  }

  public void onStart(Intent paramIntent, int paramInt)
  {
    com.umeng.common.a.c(c, "onStart ");
    a(getApplicationContext(), paramIntent);
    super.onStart(paramIntent, paramInt);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.umeng.common.net.DownloadingService
 * JD-Core Version:    0.6.2
 */