package activity;

import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.d.a;
import java.util.List;

public final class cu extends BaseAdapter
{
  private Context a;
  private List b;
  private MyApplication c;
  private LayoutInflater d;
  private Handler e;
  private a f;

  public cu(Handler paramHandler, Context paramContext, List paramList)
  {
    this.a = paramContext;
    this.e = paramHandler;
    this.c = ((MyApplication)paramContext.getApplicationContext());
    this.f = new a(paramContext, "saveUser");
    this.b = paramList;
    this.d = LayoutInflater.from(paramContext);
  }

  public final int getCount()
  {
    return this.b.size();
  }

  public final Object getItem(int paramInt)
  {
    return this.b.get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final int getItemViewType(int paramInt)
  {
    return ((cx)this.b.get(paramInt)).b();
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    cx localcx = (cx)this.b.get(paramInt);
    cv localcv = new cv(this, paramInt);
    cw localcw5;
    if (localcx.b() == cy.b)
      if (paramView == null)
      {
        paramView = this.d.inflate(2130903086, null);
        cw localcw6 = new cw();
        localcw6.b = ((TextView)paramView.findViewById(2131427526));
        localcw6.c = localcx.b();
        localcw6.a = ((RelativeLayout)paramView.findViewById(2131427525));
        paramView.setTag(localcw6);
        localcw5 = localcw6;
        localcw5.b.setText(localcx.a());
        localcw5.a.setOnClickListener(localcv);
      }
    do
    {
      return paramView;
      localcw5 = (cw)paramView.getTag();
      break;
      if (localcx.b() == cy.c)
      {
        cw localcw4;
        if (paramView == null)
        {
          paramView = this.d.inflate(2130903088, null);
          localcw4 = new cw();
          localcw4.b = ((TextView)paramView.findViewById(2131427526));
          localcw4.a = ((RelativeLayout)paramView.findViewById(2131427525));
          localcw4.c = localcx.b();
          paramView.setTag(localcw4);
        }
        for (cw localcw3 = localcw4; ; localcw3 = (cw)paramView.getTag())
        {
          localcw3.b.setText(localcx.a());
          localcw3.a.setOnClickListener(localcv);
          return paramView;
        }
      }
    }
    while (localcx.b() != cy.d);
    cw localcw2;
    if (paramView == null)
    {
      paramView = this.d.inflate(2130903087, null);
      localcw2 = new cw();
      localcw2.b = ((TextView)paramView.findViewById(2131427526));
      localcw2.c = localcx.b();
      localcw2.a = ((RelativeLayout)paramView.findViewById(2131427525));
      paramView.setTag(localcw2);
    }
    for (cw localcw1 = localcw2; ; localcw1 = (cw)paramView.getTag())
    {
      localcw1.b.setText(localcx.a());
      localcw1.a.setOnClickListener(localcv);
      return paramView;
    }
  }

  public final int getViewTypeCount()
  {
    return cy.e;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.cu
 * JD-Core Version:    0.6.2
 */