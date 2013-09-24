package activity;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.a.d;
import com.b.i;
import com.d.a;

final class at
  implements DialogInterface.OnClickListener
{
  at(FriendListActivity paramFriendListActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent1 = new Intent(this.a, GetMsgService.class);
    this.a.stopService(localIntent1);
    FriendListActivity.g(this.a);
    FriendListActivity.k(this.a);
    d.a();
    this.a.g.a(false);
    this.a.g.b().d();
    this.a.h.b(false);
    this.a.h.a(1);
    this.a.g();
    Intent localIntent2 = new Intent();
    localIntent2.putExtra("status", "EXIT");
    this.a.setResult(-1, localIntent2);
    this.a.finish();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.at
 * JD-Core Version:    0.6.2
 */