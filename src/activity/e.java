package activity;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.util.Log;
import com.c.j;
import com.c.l;

final class e
  implements DialogInterface.OnClickListener
{
  e(ChatActivity paramChatActivity, int paramInt)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    o localo = this.a.d.b(ChatActivity.a(this.a).a(), this.b);
    j localj = new j();
    localj.a(localo);
    this.a.g.d().a(localj);
    localo.e(8);
    localo.b(0);
    Log.d("setRate", localo.g());
    localo.d("...");
    this.a.d.a(ChatActivity.a(this.a).a(), localo);
    this.a.e();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.e
 * JD-Core Version:    0.6.2
 */