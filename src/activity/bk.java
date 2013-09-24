package activity;

import android.text.Editable;
import android.text.TextWatcher;

final class bk
  implements TextWatcher
{
  bk(NewMessageActivity paramNewMessageActivity)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramCharSequence.length() > paramInt1)
      paramCharSequence.charAt(paramInt1);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.bk
 * JD-Core Version:    0.6.2
 */