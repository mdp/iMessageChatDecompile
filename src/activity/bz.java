package activity;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;

final class bz
  implements View.OnClickListener
{
  bz(bx parambx)
  {
  }

  public final void onClick(View paramView)
  {
    if (bx.d(this.a) != null)
    {
      Message localMessage = bx.d(this.a).obtainMessage();
      localMessage.what = 0;
      localMessage.getData().putSerializable("msg", "Click");
      bx.d(this.a).sendMessage(localMessage);
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.bz
 * JD-Core Version:    0.6.2
 */