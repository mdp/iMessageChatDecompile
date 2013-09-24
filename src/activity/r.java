package activity;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;

final class r
  implements View.OnClickListener
{
  r(p paramp, o paramo)
  {
  }

  public final void onClick(View paramView)
  {
    paramView.getId();
    Log.d("Touch ReRec", " " + this.b.e());
    Message localMessage = p.a(this.a).obtainMessage();
    localMessage.what = 3281699;
    localMessage.getData().putSerializable("msg", this.b.m());
    p.a(this.a).sendMessage(localMessage);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.r
 * JD-Core Version:    0.6.2
 */