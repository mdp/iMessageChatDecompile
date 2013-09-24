package activity;

import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.a.d;
import com.c.h;
import com.c.l;
import java.util.LinkedList;

public final class cc extends BaseAdapter
{
  private final int a = 19088743;
  private Context b;
  private LinkedList c;
  private MyApplication d;
  private LayoutInflater e;
  private int f = -1;
  private l g;
  private com.a.g h;
  private d i;
  private Handler j;
  private int[] k = { 2130838440, 2130838409, 2130838410, 2130838411, 2130838412, 2130838413, 2130838414, 2130838415, 2130838416, 2130838417 };

  public cc(Handler paramHandler, Context paramContext, LinkedList paramLinkedList)
  {
    this.b = paramContext;
    this.j = paramHandler;
    this.d = ((MyApplication)paramContext.getApplicationContext());
    this.c = paramLinkedList;
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
    return ((cg)this.c.get(paramInt)).b();
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    cg localcg = (cg)this.c.get(paramInt);
    cf localcf5;
    if (localcg.b() == ci.b)
      if (paramView == null)
      {
        paramView = this.e.inflate(2130903080, null);
        cf localcf6 = new cf();
        localcf6.a = ((ImageView)paramView.findViewById(2131427478));
        localcf6.b = ((TextView)paramView.findViewById(2131427480));
        localcf6.c = ((TextView)paramView.findViewById(2131427481));
        localcf6.d = ((TextView)paramView.findViewById(2131427482));
        localcf6.e = ((TextView)paramView.findViewById(2131427483));
        localcf6.f = ((Button)paramView.findViewById(2131427477));
        localcf6.g = ((Button)paramView.findViewById(2131427484));
        localcf6.i = localcg.b();
        paramView.setTag(localcf6);
        localcf5 = localcf6;
        localcf5.a.setImageResource(this.k[localcg.d()]);
        localcf5.b.setText(com.c.g.a(localcg.a(), localcf5.b.getPaint(), 270.0F * h.a / 480.0F));
        String str = localcg.f();
        if (str.length() > 11)
          str = str.substring(11, 16);
        localcf5.c.setText(str);
        com.c.g.a(localcf5.d, localcg.g(), this.b);
        if (!localcg.i())
          break label382;
        localcf5.f.setBackgroundResource(2130838548);
        localcf5.g.setVisibility(0);
        localcf5.c.setVisibility(4);
        label308: localcf5.e.setVisibility(4);
        label317: cd localcd = new cd(this, localcg, paramInt);
        localcf5.f.setOnClickListener(localcd);
        localcf5.g.setOnClickListener(localcd);
        paramView.setOnClickListener(localcd);
        paramView.setOnTouchListener(new ce(this));
      }
    label382: 
    do
    {
      return paramView;
      localcf5 = (cf)paramView.getTag();
      break;
      localcf5.f.setBackgroundResource(2130838549);
      localcf5.g.setVisibility(4);
      localcf5.c.setVisibility(0);
      if (localcg.e() <= 0)
        break label308;
      localcf5.e.setText(localcg.e());
      localcf5.e.setTextColor(-16777216);
      localcf5.e.setVisibility(0);
      break label317;
      if (localcg.b() == ci.a)
      {
        cf localcf4;
        if (paramView == null)
        {
          paramView = this.e.inflate(2130903085, null);
          localcf4 = new cf();
          cf.a(localcf4, (LinearLayout)paramView.findViewById(2131427523));
          localcf4.h = ((TextView)paramView.findViewById(2131427524));
          localcf4.i = localcg.b();
          paramView.setTag(localcf4);
        }
        for (cf localcf3 = localcf4; ; localcf3 = (cf)paramView.getTag())
        {
          localcf3.h.setText(localcg.g());
          return paramView;
        }
      }
    }
    while (localcg.b() != ci.c);
    cf localcf2;
    if (paramView == null)
    {
      paramView = this.e.inflate(2130903081, null);
      localcf2 = new cf();
      localcf2.d = ((TextView)paramView.findViewById(2131427485));
      localcf2.i = localcg.b();
      paramView.setTag(localcf2);
    }
    for (cf localcf1 = localcf2; ; localcf1 = (cf)paramView.getTag())
    {
      localcf1.d.setText(localcg.g());
      return paramView;
    }
  }

  public final int getViewTypeCount()
  {
    return ci.d;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.cc
 * JD-Core Version:    0.6.2
 */