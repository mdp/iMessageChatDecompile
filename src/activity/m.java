package activity;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.c.g;
import java.util.List;

public final class m extends BaseAdapter
{
  private List a;
  private LayoutInflater b;
  private Context c;

  public m(Context paramContext, List paramList)
  {
    this.a = paramList;
    this.b = LayoutInflater.from(paramContext);
    this.c = paramContext;
  }

  public final int getCount()
  {
    return this.a.size();
  }

  public final Object getItem(int paramInt)
  {
    return this.a.get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final int getItemViewType(int paramInt)
  {
    return ((l)this.a.get(paramInt)).e();
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    l locall = (l)this.a.get(paramInt);
    boolean bool = locall.d();
    int i = locall.e();
    n localn1;
    Object localObject;
    label79: n localn2;
    if (paramView == null)
    {
      localn1 = new n();
      if (i == 2)
      {
        View localView5 = this.b.inflate(2130903051, null);
        localn1.b = ((TextView)localView5.findViewById(2131427385));
        localObject = localView5;
        localn1.e = i;
        ((View)localObject).setTag(localn1);
        paramView = (View)localObject;
        localn2 = localn1;
        label100: if (localn2.e != 2)
          break label519;
        String str = locall.a();
        if (str.length() > 3)
          str = str.substring(0, -3 + str.length());
        localn2.b.setText(str);
      }
    }
    while (true)
      switch (localn2.e)
      {
      default:
        return paramView;
        if (i == 1)
        {
          View localView4 = this.b.inflate(2130903045, null);
          localn1.b = ((TextView)localView4.findViewById(2131427373));
          localn1.c = ((ImageView)localView4.findViewById(2131427372));
          localn1.d = ((ImageView)localView4.findViewById(2131427371));
          localn1.a = ((LinearLayout)localView4.findViewById(2131427370));
          localObject = localView4;
          break label79;
        }
        if (i == 4)
        {
          View localView3 = this.b.inflate(2130903046, null);
          localn1.b = ((TextView)localView3.findViewById(2131427378));
          localn1.c = ((ImageView)localView3.findViewById(2131427376));
          localn1.d = ((ImageView)localView3.findViewById(2131427375));
          localn1.a = ((LinearLayout)localView3.findViewById(2131427374));
          localObject = localView3;
          break label79;
        }
        if (i == 0)
        {
          View localView2 = this.b.inflate(2130903044, null);
          localn1.b = ((TextView)localView2.findViewById(2131427369));
          localn1.c = ((ImageView)localView2.findViewById(2131427368));
          localn1.d = ((ImageView)localView2.findViewById(2131427367));
          localn1.a = ((LinearLayout)localView2.findViewById(2131427366));
          localObject = localView2;
          break label79;
        }
        if ((i == 5) || (i == 6) || (i == 7) || (i == 8) || (i == 9))
        {
          View localView1 = this.b.inflate(2130903043, null);
          localn1.b = ((TextView)localView1.findViewById(2131427365));
          localObject = localView1;
          break label79;
        }
        localn2 = (n)paramView.getTag();
        break label100;
        label519: if (i != 5)
        {
          g.b(localn2.b, locall.b(), this.c);
          if (bool)
          {
            localn2.c.setVisibility(4);
            localn2.d.setVisibility(0);
            localn2.a.setBackgroundColor(209546928);
          }
          else
          {
            localn2.c.setVisibility(0);
            localn2.d.setVisibility(4);
            localn2.a.setBackgroundColor(0);
          }
        }
        break;
      case 5:
      case 6:
      }
    localn2.b.setText(this.c.getString(2131165268));
    return paramView;
    localn2.b.setText(this.c.getString(2131165269));
    return paramView;
  }

  public final int getViewTypeCount()
  {
    return 11;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.m
 * JD-Core Version:    0.6.2
 */