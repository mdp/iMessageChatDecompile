package activity;

import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.List;

public final class v extends BaseAdapter
{
  private final int a = 1;
  private Context b;
  private List c;
  private MyApplication d;
  private LayoutInflater e;
  private Handler f;
  private int[] g = { 2130838440, 2130838409, 2130838410, 2130838411, 2130838412, 2130838413, 2130838414, 2130838415, 2130838416, 2130838417 };

  public v(Handler paramHandler, Context paramContext, List paramList)
  {
    this.b = paramContext;
    this.f = paramHandler;
    this.d = ((MyApplication)paramContext.getApplicationContext());
    this.c = paramList;
    this.e = LayoutInflater.from(paramContext);
  }

  public final int getCount()
  {
    return this.c.size();
  }

  public final Object getItem(int paramInt)
  {
    return this.c.get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final int getItemViewType(int paramInt)
  {
    return ((z)this.c.get(paramInt)).c();
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    z localz = (z)this.c.get(paramInt);
    if (localz.c() == aa.b)
    {
      w localw4;
      if (paramView == null)
      {
        paramView = this.e.inflate(2130903054, null);
        localw4 = new w();
        localw4.a = ((ImageView)paramView.findViewById(2131427388));
        localw4.b = ((TextView)paramView.findViewById(2131427390));
        localw4.c = ((TextView)paramView.findViewById(2131427391));
        localw4.f = localz.c();
        paramView.setTag(localw4);
      }
      for (w localw3 = localw4; ; localw3 = (w)paramView.getTag())
      {
        localw3.a.setImageResource(this.g[localz.e()]);
        localw3.b.setText(localz.b());
        localw3.c.setText(localz.a());
        return paramView;
      }
    }
    w localw2;
    if (paramView == null)
    {
      paramView = this.e.inflate(2130903084, null);
      localw2 = new w();
      localw2.e = ((LinearLayout)paramView.findViewById(2131427518));
      localw2.d = ((TextView)paramView.findViewById(2131427522));
      localw2.f = localz.c();
      paramView.setTag(localw2);
    }
    for (w localw1 = localw2; ; localw1 = (w)paramView.getTag())
    {
      localw1.d.setText(localz.f());
      return paramView;
    }
  }

  public final int getViewTypeCount()
  {
    return aa.c;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.v
 * JD-Core Version:    0.6.2
 */