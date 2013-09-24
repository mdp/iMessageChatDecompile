package activity;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.widget.AbsListView.LayoutParams;
import android.widget.GridView;
import android.widget.SimpleAdapter;
import java.util.ArrayList;
import java.util.List;

public final class ab extends GridView
{
  private List a;
  private Context b;

  public ab(Context paramContext, ArrayList paramArrayList)
  {
    super(paramContext);
    this.b = paramContext;
    this.a = paramArrayList;
    setNumColumns(8);
    setBackgroundColor(0);
    setHorizontalSpacing(10);
    setVerticalSpacing(7);
    setStretchMode(2);
    setPadding(0, 5, 0, 0);
    setSelector(new ColorDrawable(0));
    setLayoutParams(new AbsListView.LayoutParams(-1, -2));
    setGravity(17);
    setAdapter(new SimpleAdapter(this.b, this.a, 2130903059, new String[] { "imageview", "text" }, new int[] { 2131427402, 2131427403 }));
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.ab
 * JD-Core Version:    0.6.2
 */