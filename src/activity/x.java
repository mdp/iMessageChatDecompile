package activity;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;

final class x extends Handler
{
  x(ContactListActivity paramContactListActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      return;
    case 19088744:
    }
    ContactListActivity.a(this.a, (String)paramMessage.getData().getSerializable("msg"));
    ContactListActivity.a(this.a);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.x
 * JD-Core Version:    0.6.2
 */