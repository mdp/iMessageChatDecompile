package activity;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;

public final class af
  implements View.OnClickListener
{
  private int b;

  public af(ac paramac, int paramInt)
  {
    this.b = paramInt;
  }

  public final void onClick(View paramView)
  {
    if (this.b < -1 + ac.a(this.a).length)
    {
      ac.a(this.a, this.b);
      for (int i = 0; ; i++)
      {
        if (i >= -1 + ac.a(this.a).length)
        {
          ac.b(this.a)[this.b].setBackgroundResource(2130838434);
          ac.a(this.a)[this.b].setEnabled(true);
          ac.b(this.a, this.b);
          return;
        }
        ac.a(this.a)[i].setEnabled(false);
        ac.b(this.a)[i].setBackgroundResource(2130838433);
      }
    }
    this.a.a();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.af
 * JD-Core Version:    0.6.2
 */