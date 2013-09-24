package activity;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.b.aa;
import com.b.i;

final class ba extends Handler
{
  ba(LoginActivity paramLoginActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    case 11:
    case 13:
    case 14:
    default:
    case 10:
    case 15:
    case 12:
    }
    do
    {
      do
      {
        do
        {
          return;
          LoginActivity.a(this.a, (String)paramMessage.getData().getSerializable("msg"));
          LoginActivity.a(this.a, true);
        }
        while (this.a.isFinishing());
        this.a.b();
        return;
        String str = (String)paramMessage.getData().getSerializable("msg");
        LoginActivity.a(this.a, str.substring(0, str.indexOf(":STOPRESONE:")));
        LoginActivity.b(this.a, true);
        LoginActivity.b(this.a, str.substring(12 + str.indexOf(":STOPRESONE:")));
      }
      while (this.a.isFinishing());
      this.a.c();
      return;
      int i = LoginActivity.a(this.a).a();
      LoginActivity.a(this.a).b();
      if (i != LoginActivity.e())
        break;
    }
    while (LoginActivity.b(this.a));
    Log.d("Login", " time out over");
    this.a.g.b().d();
    return;
    long l = 30000L - (System.currentTimeMillis() - LoginActivity.f());
    if (LoginActivity.a(this.a) != null)
      LoginActivity.a(this.a).c();
    LoginActivity.a(this.a, new aa(LoginActivity.e(), System.currentTimeMillis(), l, LoginActivity.c(this.a)));
    LoginActivity.a(this.a).start();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.ba
 * JD-Core Version:    0.6.2
 */