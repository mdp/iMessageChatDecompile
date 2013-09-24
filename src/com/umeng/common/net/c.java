package com.umeng.common.net;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.widget.Toast;
import com.umeng.common.a;
import java.util.Map;

final class c extends Handler
{
  c(DownloadingService paramDownloadingService)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    a.c(DownloadingService.a(), "IncomingHandler(msg.what:" + paramMessage.what + " msg.arg1:" + paramMessage.arg1 + " msg.arg2:" + paramMessage.arg2 + " msg.replyTo:" + paramMessage.replyTo);
    switch (paramMessage.what)
    {
    default:
      super.handleMessage(paramMessage);
      return;
    case 4:
    }
    Bundle localBundle = paramMessage.getData();
    a.c(DownloadingService.a(), "IncomingHandler(msg.getData():" + localBundle);
    g localg = new g(localBundle.getString("mComponentName"), localBundle.getString("mTitle"), localBundle.getString("mUrl"));
    localg.d = localBundle.getString("mMd5");
    localg.e = localBundle.getString("mTargetMd5");
    localg.f = localBundle.getStringArray("reporturls");
    localg.g = localBundle.getBoolean("rich_notification");
    if (DownloadingService.a(localg))
    {
      a.a(DownloadingService.a(), localg.b + " is already in downloading list. ");
      Context localContext = DownloadingService.a(this.a);
      com.umeng.common.c.a(DownloadingService.a(this.a));
      Toast.makeText(localContext, com.umeng.common.c.d("umeng_common_action_info_exist"), 0).show();
      Message localMessage = Message.obtain();
      localMessage.what = 5;
      localMessage.arg1 = 2;
      localMessage.arg2 = 0;
      try
      {
        paramMessage.replyTo.send(localMessage);
        return;
      }
      catch (RemoteException localRemoteException)
      {
        localRemoteException.printStackTrace();
        return;
      }
    }
    DownloadingService.b().put(localg, paramMessage.replyTo);
    DownloadingService.a(this.a, localg);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.umeng.common.net.c
 * JD-Core Version:    0.6.2
 */