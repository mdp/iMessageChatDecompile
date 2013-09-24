package activity;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

final class ck
  implements CompoundButton.OnCheckedChangeListener
{
  ck(RegisterActivity paramRegisterActivity)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      RegisterActivity.a(this.a, true);
      return;
    }
    RegisterActivity.a(this.a, false);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.ck
 * JD-Core Version:    0.6.2
 */