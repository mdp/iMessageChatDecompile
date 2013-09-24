package activity;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class bc
  implements DialogInterface.OnClickListener
{
  bc(LoginActivity paramLoginActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    LoginActivity.a(this.a, false);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.bc
 * JD-Core Version:    0.6.2
 */