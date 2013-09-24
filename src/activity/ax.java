package activity;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.TextView;
import com.b.w;
import com.c.g;
import com.c.j;
import com.d.a;

final class ax extends Handler
{
  ax(GetMsgService paramGetMsgService)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 1:
      j localj;
      do
      {
        return;
        localj = (j)paramMessage.getData().getSerializable("msg");
      }
      while (localj == null);
      w localw = localj.m();
      String str1 = localw.d();
      String str2 = localw.e();
      TextView localTextView = new TextView(GetMsgService.c(this.a));
      g.a(localTextView, str2, GetMsgService.c(this.a));
      CharSequence localCharSequence = localTextView.getText();
      GetMsgService.d(this.a).c(1);
      int i = GetMsgService.d(this.a).m();
      String str3 = str1 + ":" + localCharSequence;
      long l = System.currentTimeMillis();
      GetMsgService.a(this.a, new Notification(2130838470, str3, l));
      GetMsgService.a(this.a).flags = 32;
      if (GetMsgService.e(this.a).h())
      {
        Notification localNotification5 = GetMsgService.a(this.a);
        localNotification5.defaults = (0x1 | localNotification5.defaults);
      }
      if (GetMsgService.e(this.a).i())
      {
        Notification localNotification4 = GetMsgService.a(this.a);
        localNotification4.defaults = (0x2 | localNotification4.defaults);
      }
      GetMsgService.a(this.a).contentView = null;
      if (GetMsgService.e(this.a).j())
      {
        GetMsgService.a(this.a).ledARGB = 16777215;
        GetMsgService.a(this.a).ledOnMS = 100;
        GetMsgService.a(this.a).ledOffMS = 100;
        Notification localNotification3 = GetMsgService.a(this.a);
        localNotification3.flags = (0x1 | localNotification3.flags);
      }
      Intent localIntent = new Intent(GetMsgService.c(this.a), FriendListActivity.class);
      PendingIntent localPendingIntent = PendingIntent.getActivity(GetMsgService.c(this.a), 0, localIntent, 0);
      GetMsgService.a(this.a).setLatestEventInfo(GetMsgService.c(this.a), GetMsgService.e(this.a).e() + " (" + i + GetMsgService.c(this.a).getString(2131165296) + ")", localCharSequence, localPendingIntent);
      GetMsgService.b(this.a).notify(2321, GetMsgService.a(this.a));
      return;
    case 2:
    }
    GetMsgService.b(this.a).cancelAll();
    GetMsgService.a(this.a, new Notification());
    GetMsgService.a(this.a).flags = 32;
    if (GetMsgService.e(this.a).h())
    {
      Notification localNotification2 = GetMsgService.a(this.a);
      localNotification2.defaults = (0x1 | localNotification2.defaults);
    }
    if (GetMsgService.e(this.a).i())
    {
      Notification localNotification1 = GetMsgService.a(this.a);
      localNotification1.defaults = (0x2 | localNotification1.defaults);
    }
    GetMsgService.a(this.a).contentView = null;
    GetMsgService.b(this.a).notify(2321, GetMsgService.a(this.a));
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.ax
 * JD-Core Version:    0.6.2
 */