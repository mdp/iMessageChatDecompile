package activity;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.util.Log;
import com.a.d;
import com.a.f;
import com.b.i;
import com.d.a;

final class as
  implements DialogInterface.OnClickListener
{
  as(FriendListActivity paramFriendListActivity)
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
    Log.d("FriendActivity", "LogOut");
    this.a.h.b(false);
    this.a.f.a(this.a.h.b());
    this.a.h.c(false);
    this.a.g();
    Intent localIntent2 = new Intent();
    localIntent2.putExtra("status", "EXIT");
    this.a.setResult(-1, localIntent2);
    this.a.finish();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.as
 * JD-Core Version:    0.6.2
 */