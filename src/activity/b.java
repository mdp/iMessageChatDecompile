package activity;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;

final class b
  implements TextWatcher
{
  b(ChatActivity paramChatActivity)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    if (ChatActivity.g(this.a).getText().toString().length() > 0)
    {
      this.a.c();
      return;
    }
    this.a.a_();
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.b
 * JD-Core Version:    0.6.2
 */