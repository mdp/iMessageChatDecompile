package activity;

import android.text.Editable;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.EditText;

final class bl
  implements View.OnFocusChangeListener
{
  bl(NewMessageActivity paramNewMessageActivity)
  {
  }

  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      NewMessageActivity.a(this.a, false);
      this.a.e();
      this.a.f();
      NewMessageActivity.a(this.a, NewMessageActivity.e(this.a).getText().toString());
      this.a.a(NewMessageActivity.f(this.a));
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.bl
 * JD-Core Version:    0.6.2
 */