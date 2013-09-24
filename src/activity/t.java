package activity;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import com.c.l;

final class t
  implements View.OnClickListener
{
  t(p paramp, o paramo)
  {
  }

  public final void onClick(View paramView)
  {
    if (paramView.getId() == 2131427401)
    {
      Log.d("ChatMsgViewAdapter", "AddToContact Down");
      l locall = new l();
      locall.a(this.b.b());
      locall.a(this.b.k());
      Intent localIntent = new Intent(p.b(this.a), AddToContactActivity.class);
      localIntent.setFlags(268435456);
      localIntent.putExtra("user", locall);
      p.b(this.a).startActivity(localIntent);
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.t
 * JD-Core Version:    0.6.2
 */