package activity;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class be
  implements DialogInterface.OnClickListener
{
  be(LoginActivity paramLoginActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    LoginActivity.b(this.a, false);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.be
 * JD-Core Version:    0.6.2
 */