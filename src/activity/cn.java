package activity;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

final class cn
  implements DialogInterface.OnClickListener
{
  cn(RegisterActivity paramRegisterActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent("android.settings.WIRELESS_SETTINGS");
    this.a.startActivity(localIntent);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.cn
 * JD-Core Version:    0.6.2
 */