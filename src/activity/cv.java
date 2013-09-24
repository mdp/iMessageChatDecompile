package activity;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;

final class cv
  implements View.OnClickListener
{
  cv(cu paramcu, int paramInt)
  {
  }

  public final void onClick(View paramView)
  {
    paramView.getId();
    Log.d("SettingPage", this.b + " down");
    switch (this.b)
    {
    case 0:
    default:
      return;
    case 1:
      Message localMessage7 = cu.a(this.a).obtainMessage();
      localMessage7.what = 8;
      localMessage7.getData().putSerializable("msg", null);
      cu.a(this.a).sendMessage(localMessage7);
      return;
    case 2:
      Message localMessage6 = cu.a(this.a).obtainMessage();
      localMessage6.what = 5;
      localMessage6.getData().putSerializable("msg", null);
      cu.a(this.a).sendMessage(localMessage6);
      return;
    case 3:
      Message localMessage5 = cu.a(this.a).obtainMessage();
      localMessage5.what = 7;
      localMessage5.getData().putSerializable("msg", null);
      cu.a(this.a).sendMessage(localMessage5);
      return;
    case 4:
      Message localMessage4 = cu.a(this.a).obtainMessage();
      localMessage4.what = 4;
      localMessage4.getData().putSerializable("msg", null);
      cu.a(this.a).sendMessage(localMessage4);
      return;
    case 5:
      Message localMessage3 = cu.a(this.a).obtainMessage();
      localMessage3.what = 13;
      localMessage3.getData().putSerializable("msg", null);
      cu.a(this.a).sendMessage(localMessage3);
      return;
    case 6:
      Message localMessage2 = cu.a(this.a).obtainMessage();
      localMessage2.what = 12;
      localMessage2.getData().putSerializable("msg", null);
      cu.a(this.a).sendMessage(localMessage2);
      return;
    case 7:
    }
    Message localMessage1 = cu.a(this.a).obtainMessage();
    localMessage1.what = 2;
    localMessage1.getData().putSerializable("msg", null);
    cu.a(this.a).sendMessage(localMessage1);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.cv
 * JD-Core Version:    0.6.2
 */