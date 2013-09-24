package activity;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;

final class a extends Handler
{
  a(ChatActivity paramChatActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      return;
    case 74033:
      String str2 = (String)paramMessage.getData().getSerializable("msg");
      Log.d("Resend down", str2);
      int i = Integer.parseInt(str2);
      Log.d("Resend down1", i);
      this.a.b(i);
      return;
    case 3281699:
    }
    String str1 = (String)paramMessage.getData().getSerializable("msg");
    this.a.c(Integer.parseInt(str1));
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.a
 * JD-Core Version:    0.6.2
 */