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
import com.c.g;
import com.c.h;
import com.d.a;
import java.util.LinkedList;

public final class bx extends BaseAdapter
{
  private final int a = 0;
  private Context b;
  private LinkedList c;
  private MyApplication d;
  private LayoutInflater e;
  private a f;
  private int[] g = { 2130838440, 2130838546, 2130838410, 2130838411, 2130838412, 2130838413, 2130838414, 2130838415, 2130838416, 2130838417 };
  private Handler h;

  public bx(Handler paramHandler, Context paramContext, LinkedList paramLinkedList)
  {
    this.b = paramContext;
    this.h = paramHandler;
    this.d = ((MyApplication)paramContext.getApplicationContext());
    this.c = paramLinkedList;
    this.e = LayoutInflater.from(paramContext);
    this.f = new a(paramContext, "saveUser");
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
    return ((ch)this.c.get(paramInt)).b();
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ch localch = (ch)this.c.get(paramInt);
    cb localcb5;
    if (localch.b() == ci.b)
      if (paramView == null)
      {
        paramView = this.e.inflate(2130903079, null);
        cb localcb6 = new cb();
        localcb6.a = ((ImageView)paramView.findViewById(2131427471));
        localcb6.c = ((TextView)paramView.findViewById(2131427472));
        localcb6.d = ((TextView)paramView.findViewById(2131427473));
        localcb6.e = ((TextView)paramView.findViewById(2131427474));
        localcb6.b = ((ImageView)paramView.findViewById(2131427476));
        localcb6.f = ((TextView)paramView.findViewById(2131427475));
        localcb6.i = localch.b();
        paramView.setTag(localcb6);
        localcb5 = localcb6;
        localcb5.a.setImageResource(this.g[localch.d()]);
        localcb5.c.setText(g.a(localch.a(), localcb5.c.getPaint(), 290.0F * h.a / 480.0F));
        String str = localch.g();
        if (str.length() > 11)
          str = str.substring(11, 16);
        localcb5.d.setText(str);
        g.a(localcb5.e, localch.h(), this.b);
        if (localch.e() <= 0)
          break label346;
        localcb5.f.setText(localch.e());
        localcb5.f.setTextColor(-16777216);
        localcb5.f.setVisibility(0);
        label311: if (this.h != null)
          paramView.setOnClickListener(new by(this, localch));
      }
    label346: 
    do
    {
      return paramView;
      localcb5 = (cb)paramView.getTag();
      break;
      localcb5.f.setVisibility(4);
      break label311;
      if (localch.b() == ci.a)
      {
        cb localcb4;
        if (paramView == null)
        {
          paramView = this.e.inflate(2130903084, null);
          localcb4 = new cb();
          cb.a(localcb4, (LinearLayout)paramView.findViewById(2131427518));
          localcb4.h = ((TextView)paramView.findViewById(2131427522));
          localcb4.i = localch.b();
          paramView.setTag(localcb4);
        }
        for (cb localcb3 = localcb4; ; localcb3 = (cb)paramView.getTag())
        {
          localcb3.h.setText(localch.h());
          if (localch.h().length() != 0)
            localcb3.h.requestFocus();
          localcb3.h.setOnClickListener(new bz(this));
          return paramView;
        }
      }
    }
    while (localch.b() != ci.c);
    cb localcb2;
    if (paramView == null)
    {
      paramView = this.e.inflate(2130903081, null);
      localcb2 = new cb();
      localcb2.g = ((Button)paramView.findViewById(2131427486));
      localcb2.e = ((TextView)paramView.findViewById(2131427485));
      localcb2.i = localch.b();
      paramView.setTag(localcb2);
    }
    for (cb localcb1 = localcb2; ; localcb1 = (cb)paramView.getTag())
    {
      ca localca = new ca(this, paramInt);
      localcb1.g.setOnClickListener(localca);
      localcb1.e.setText(localch.h());
      return paramView;
    }
  }

  public final int getViewTypeCount()
  {
    return ci.d;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.bx
 * JD-Core Version:    0.6.2
 */