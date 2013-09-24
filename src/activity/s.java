package activity;

import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;

final class s
  implements View.OnClickListener
{
  s(p paramp, o paramo)
  {
  }

  public final void onClick(View paramView)
  {
    paramView.getId();
    int i = this.b.l();
    if ((i == 0) || (i == 10) || (i == 4) || (i == 1))
    {
      Log.d("Touch msg", " " + this.b.e());
      String str = this.b.e();
      int j = str.indexOf("STARTFILE:");
      int k = str.indexOf(":ENDFILE");
      if ((j != -1) && (k != -1))
        this.a.a(str.substring(j + 10, k));
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.s
 * JD-Core Version:    0.6.2
 */