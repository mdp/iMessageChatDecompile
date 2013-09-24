package activity;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;

final class bm
  implements TextWatcher
{
  bm(NewMessageActivity paramNewMessageActivity)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    if (NewMessageActivity.g(this.a).getText().toString().length() > 0)
    {
      NewMessageActivity.b(this.a, true);
      this.a.c();
      return;
    }
    NewMessageActivity.b(this.a, false);
    this.a.e();
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.bm
 * JD-Core Version:    0.6.2
 */