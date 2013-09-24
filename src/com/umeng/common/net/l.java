package com.umeng.common.net;

import android.app.Notification;
import android.app.NotificationManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.widget.RemoteViews;
import java.util.Map;

final class l
  implements a
{
  l(DownloadingService paramDownloadingService)
  {
  }

  public final void a(int paramInt)
  {
    if (DownloadingService.c().containsKey(Integer.valueOf(paramInt)))
    {
      d locald = (d)DownloadingService.c().get(Integer.valueOf(paramInt));
      long[] arrayOfLong = locald.f;
      int i = 0;
      if (arrayOfLong != null)
      {
        boolean bool = arrayOfLong[1] < 0L;
        i = 0;
        if (bool)
        {
          i = (int)(100.0F * ((float)arrayOfLong[0] / (float)arrayOfLong[1]));
          if (i > 100)
            i = 99;
        }
      }
      Notification localNotification = DownloadingService.a(this.a, locald.e, paramInt, i);
      locald.b = localNotification;
      DownloadingService.b(this.a).notify(paramInt, localNotification);
    }
  }

  public final void a(int paramInt1, int paramInt2)
  {
    if (DownloadingService.c().containsKey(Integer.valueOf(paramInt1)))
    {
      d locald = (d)DownloadingService.c().get(Integer.valueOf(paramInt1));
      g localg = locald.e;
      Notification localNotification = locald.b;
      localNotification.contentView.setProgressBar(com.umeng.common.a.a.b(DownloadingService.a(this.a)), 100, paramInt2, false);
      localNotification.contentView.setTextViewText(com.umeng.common.a.a.a(DownloadingService.a(this.a)), String.valueOf(paramInt2) + "%");
      DownloadingService.b(this.a).notify(paramInt1, localNotification);
      String str = DownloadingService.a();
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Integer.valueOf(paramInt1);
      arrayOfObject[1] = Integer.valueOf(paramInt2);
      arrayOfObject[2] = localg.b;
      com.umeng.common.a.c(str, String.format("%3$10s Notification: mNotificationId = %1$15s\t|\tprogress = %2$15s", arrayOfObject));
    }
  }

  public final void a(int paramInt, String paramString)
  {
    g localg;
    Bundle localBundle;
    if (DownloadingService.c().containsKey(Integer.valueOf(paramInt)))
    {
      d locald = (d)DownloadingService.c().get(Integer.valueOf(paramInt));
      if (locald != null)
      {
        localg = locald.e;
        locald.b.contentView.setTextViewText(com.umeng.common.a.a.a(DownloadingService.a(this.a)), String.valueOf(100) + "%");
        h.a(DownloadingService.a(this.a)).a(localg.a, localg.c, 100);
        localBundle = new Bundle();
        localBundle.putString("filename", paramString);
        if (!localg.a.equalsIgnoreCase("delta_update"))
          break label191;
        Message localMessage3 = Message.obtain();
        localMessage3.what = 6;
        localMessage3.arg1 = 1;
        localMessage3.obj = localg;
        localMessage3.arg2 = paramInt;
        localMessage3.setData(localBundle);
        DownloadingService.c(this.a).sendMessage(localMessage3);
      }
    }
    return;
    label191: Message localMessage1 = Message.obtain();
    localMessage1.what = 5;
    localMessage1.arg1 = 1;
    localMessage1.obj = localg;
    localMessage1.arg2 = paramInt;
    localMessage1.setData(localBundle);
    DownloadingService.c(this.a).sendMessage(localMessage1);
    Message localMessage2 = Message.obtain();
    localMessage2.what = 5;
    localMessage2.arg1 = 1;
    localMessage2.arg2 = paramInt;
    localMessage2.setData(localBundle);
    try
    {
      if (DownloadingService.b().get(localg) != null)
        ((Messenger)DownloadingService.b().get(localg)).send(localMessage2);
      DownloadingService.a(this.a, paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      DownloadingService.a(this.a, paramInt);
    }
  }

  public final void b(int paramInt)
  {
    if (DownloadingService.c().containsKey(Integer.valueOf(paramInt)))
    {
      d locald = (d)DownloadingService.c().get(Integer.valueOf(paramInt));
      g localg = locald.e;
      Notification localNotification = locald.b;
      localNotification.contentView.setTextViewText(com.umeng.common.a.a.c(DownloadingService.a(this.a)), localg.b + " 下载失败。");
      DownloadingService.b(this.a).notify(paramInt, localNotification);
      DownloadingService.a(this.a, paramInt);
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.umeng.common.net.l
 * JD-Core Version:    0.6.2
 */