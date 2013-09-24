package activity;

import android.view.View;
import android.view.View.OnFocusChangeListener;

final class k
  implements View.OnFocusChangeListener
{
  k(ChatActivity paramChatActivity)
  {
  }

  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramBoolean)
      this.a.f();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.k
 * JD-Core Version:    0.6.2
 */