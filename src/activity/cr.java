package activity;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;

final class cr
  implements TextWatcher
{
  cr(cp paramcp)
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
    String str = cp.a(this.a).getText().toString();
    if (cp.b(this.a))
    {
      this.a.a(str);
      return;
    }
    this.a.b(str);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.cr
 * JD-Core Version:    0.6.2
 */