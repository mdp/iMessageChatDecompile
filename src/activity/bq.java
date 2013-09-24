package activity;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class bq
  implements DialogInterface.OnClickListener
{
  bq(NewMessageActivity paramNewMessageActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.finish();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.bq
 * JD-Core Version:    0.6.2
 */