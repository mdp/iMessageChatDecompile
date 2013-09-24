package activity;

import android.os.Handler;
import android.os.Message;

final class cj extends Handler
{
  cj(RegisterActivity paramRegisterActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    RegisterActivity.a(this.a, paramMessage.what);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.cj
 * JD-Core Version:    0.6.2
 */