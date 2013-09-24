package activity;

import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class aw extends BroadcastReceiver
{
  aw(GetMsgService paramGetMsgService)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (GetMsgService.a(this.a) != null)
    {
      GetMsgService.b(this.a).cancelAll();
      GetMsgService.a(this.a, null);
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.aw
 * JD-Core Version:    0.6.2
 */