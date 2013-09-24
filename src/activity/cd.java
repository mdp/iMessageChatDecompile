package activity;

import android.view.View;
import android.view.View.OnClickListener;
import com.a.d;
import com.a.g;
import com.c.l;
import java.util.LinkedList;

final class cd
  implements View.OnClickListener
{
  cd(cc paramcc, cg paramcg, int paramInt)
  {
  }

  public final void onClick(View paramView)
  {
    int i = paramView.getId();
    if (i == 2131427484)
    {
      cc.a(this.a, cc.b(this.a).j());
      cc.a(this.a, cc.b(this.a).i());
      cc.a(this.a, cc.b(this.a).h());
      cc.c(this.a).c(cc.d(this.a).a(), this.b.c());
      cc.e(this.a).a(this.b.c());
      new cg().b(this.b.c());
      cc.a(this.a).remove(this.c);
      cc.a(this.a, -1);
    }
    while (true)
    {
      this.a.notifyDataSetChanged();
      do
        return;
      while (i != 2131427477);
      if (cc.f(this.a) != -1)
      {
        ((cg)cc.a(this.a).get(cc.f(this.a))).h();
        cc.a(this.a, -1);
      }
      else
      {
        cc.a(this.a, this.c);
        this.b.h();
      }
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.cd
 * JD-Core Version:    0.6.2
 */