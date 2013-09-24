package com.umeng.common.net;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.umeng.common.a;
import com.umeng.common.b;
import com.umeng.common.util.DeltaUpdate;
import java.io.File;

final class k extends Handler
{
  k(DownloadingService paramDownloadingService)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      return;
    case 5:
      g localg2 = (g)paramMessage.obj;
      int j = paramMessage.arg2;
      try
      {
        String str4 = paramMessage.getData().getString("filename");
        a.c(DownloadingService.a(), "Cancel old notification....");
        Notification localNotification2 = new Notification(17301634, "下载完成，请点击安装", System.currentTimeMillis());
        Intent localIntent = new Intent("android.intent.action.VIEW");
        localIntent.addFlags(268435456);
        localIntent.setDataAndType(Uri.fromFile(new File(str4)), "application/vnd.android.package-archive");
        PendingIntent localPendingIntent2 = PendingIntent.getActivity(DownloadingService.a(this.a), 0, localIntent, 134217728);
        localNotification2.setLatestEventInfo(DownloadingService.a(this.a), localg2.b, "下载完成，请点击安装", localPendingIntent2);
        localNotification2.flags = 16;
        DownloadingService.a(this.a, (NotificationManager)this.a.getSystemService("notification"));
        DownloadingService.b(this.a).notify(j + 1, localNotification2);
        a.c(DownloadingService.a(), "Show new  notification....");
        boolean bool = DownloadingService.a(DownloadingService.a(this.a));
        String str5 = DownloadingService.a();
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Boolean.valueOf(bool);
        a.c(str5, String.format("isAppOnForeground = %1$B", arrayOfObject1));
        if (bool)
        {
          DownloadingService.b(this.a).cancel(j + 1);
          DownloadingService.a(this.a).startActivity(localIntent);
        }
        String str6 = DownloadingService.a();
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = localg2.b;
        arrayOfObject2[1] = str4;
        a.a(str6, String.format("%1$10s downloaded. Saved to: %2$s", arrayOfObject2));
        return;
      }
      catch (Exception localException)
      {
        a.b(DownloadingService.a(), "can not install. " + localException.getMessage());
        DownloadingService.b(this.a).cancel(j + 1);
        return;
      }
    case 6:
    }
    g localg1 = (g)paramMessage.obj;
    int i = paramMessage.arg2;
    String str1 = paramMessage.getData().getString("filename");
    DownloadingService.b(this.a).cancel(i);
    Notification localNotification1 = new Notification(17301633, "正在更新安装包", System.currentTimeMillis());
    PendingIntent localPendingIntent1 = PendingIntent.getActivity(DownloadingService.a(this.a), 0, new Intent(), 134217728);
    localNotification1.setLatestEventInfo(DownloadingService.a(this.a), b.q(DownloadingService.a(this.a)), "正在更新安装包", localPendingIntent1);
    DownloadingService.b(this.a).notify(i + 1, localNotification1);
    String str2 = str1.replace(".patch", ".apk");
    String str3 = DeltaUpdate.a(this.a);
    new e(this.a, i, localg1, str2).execute(new String[] { str3, str2, str1 });
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.umeng.common.net.k
 * JD-Core Version:    0.6.2
 */