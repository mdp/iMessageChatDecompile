package activity;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.d.a;

final class bt
  implements CompoundButton.OnCheckedChangeListener
{
  bt(NotifyActivity paramNotifyActivity)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    this.a.h.e(paramBoolean);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.bt
 * JD-Core Version:    0.6.2
 */