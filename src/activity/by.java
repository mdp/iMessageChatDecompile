package activity;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.c.l;
import com.d.a;

final class by
  implements View.OnClickListener
{
  by(bx parambx, ch paramch)
  {
  }

  public final void onClick(View paramView)
  {
    bx.a(this.a).b(this.b.e());
    l locall = new l();
    locall.a(this.b.c());
    locall.a(this.b.d());
    this.b.f();
    bx.b(this.a).d(this.b.c());
    Intent localIntent = new Intent(bx.c(this.a), ChatActivity.class);
    localIntent.setFlags(268435456);
    localIntent.putExtra("user", locall);
    bx.c(this.a).startActivity(localIntent);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.by
 * JD-Core Version:    0.6.2
 */