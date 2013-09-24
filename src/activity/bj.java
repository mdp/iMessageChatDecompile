package activity;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.Button;

final class bj
  implements View.OnFocusChangeListener
{
  bj(NewMessageActivity paramNewMessageActivity)
  {
  }

  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.a.f();
      NewMessageActivity.d(this.a).setVisibility(0);
      return;
    }
    NewMessageActivity.d(this.a).setVisibility(4);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.bj
 * JD-Core Version:    0.6.2
 */