package activity;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;

final class bd
  implements DialogInterface.OnClickListener
{
  bd(LoginActivity paramLoginActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(Uri.parse(LoginActivity.d(this.a)));
    this.a.b.startActivity(localIntent);
    LoginActivity.b(this.a, false);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.bd
 * JD-Core Version:    0.6.2
 */