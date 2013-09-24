package activity;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import java.util.LinkedList;

final class ce
  implements View.OnTouchListener
{
  ce(cc paramcc)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (cc.f(this.a) != -1)
    {
      ((cg)cc.a(this.a).get(cc.f(this.a))).h();
      cc.a(this.a, -1);
      this.a.notifyDataSetChanged();
    }
    return false;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.ce
 * JD-Core Version:    0.6.2
 */