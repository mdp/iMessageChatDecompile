package activity;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.c.g;
import com.c.h;

final class f
  implements View.OnClickListener
{
  private boolean b = false;

  f(ChatActivity paramChatActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.b)
    {
      this.b = false;
      ChatActivity.b(this.a).setText(this.a.getString(2131165271));
      String str2 = g.a(g.a(this.a.i, this.a.c, ","), ChatActivity.c(this.a).getPaint(), (int)h.i());
      ChatActivity.c(this.a).setText(str2 + "& more");
      return;
    }
    this.b = true;
    ChatActivity.b(this.a).setText(this.a.getString(2131165272));
    String str1 = g.a(this.a.i, this.a.c, "\n");
    ChatActivity.c(this.a).setText(str1);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.f
 * JD-Core Version:    0.6.2
 */