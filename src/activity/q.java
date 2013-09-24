package activity;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;

final class q
  implements View.OnClickListener
{
  q(p paramp, o paramo)
  {
  }

  public final void onClick(View paramView)
  {
    paramView.getId();
    Log.d("Touch ReSend", " " + this.b.e() + " id:" + this.b.m());
    Message localMessage = p.a(this.a).obtainMessage();
    localMessage.what = 74033;
    localMessage.getData().putSerializable("msg", this.b.m());
    p.a(this.a).sendMessage(localMessage);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.q
 * JD-Core Version:    0.6.2
 */