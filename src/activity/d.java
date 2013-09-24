package activity;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.util.Log;
import com.c.l;

final class d
  implements DialogInterface.OnClickListener
{
  d(ChatActivity paramChatActivity, int paramInt)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    o localo = this.a.d.b(ChatActivity.a(this.a).a(), this.b);
    if (localo != null)
    {
      localo.h();
      localo.j();
      localo.a(false);
      localo.d(1);
      localo.e(8);
      this.a.a(localo);
      Log.d("setRate", localo.g());
      this.a.d.a(ChatActivity.a(this.a).a(), localo);
      this.a.e();
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.d
 * JD-Core Version:    0.6.2
 */