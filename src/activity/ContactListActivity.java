package activity;

import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ContactListActivity extends MyActivity
  implements View.OnClickListener
{
  private final int a = 19088744;
  private Button m;
  private ListView n;
  private v o;
  private List p = new ArrayList();
  private String q;
  private Handler r = new x(this);

  private void b()
  {
    List localList = this.c.a();
    this.p.clear();
    z localz1 = new z();
    localz1.a(aa.a);
    localz1.c(this.q);
    this.p.add(localz1);
    Iterator localIterator;
    if (localList.size() > 0)
      localIterator = localList.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        int i = this.n.getFirstVisiblePosition();
        this.n.setAdapter(this.o);
        this.n.setSelection(i);
        this.n.setDivider(new ColorDrawable(-16777216));
        this.n.setDividerHeight(1);
        this.o.notifyDataSetChanged();
        return;
      }
      z localz2 = (z)localIterator.next();
      if ((localz2.a().contains(this.q)) || (localz2.b().contains(this.q)))
      {
        localz2.a(aa.b);
        this.p.add(localz2);
      }
    }
  }

  public final void a()
  {
  }

  public final void a(byte paramByte)
  {
  }

  public final void a(int paramInt)
  {
  }

  public final void b(byte paramByte)
  {
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131427395:
    }
    finish();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903055);
    this.q = "";
    this.o = new v(this.r, this, this.p);
    this.m = ((Button)findViewById(2131427395));
    this.m.setOnClickListener(this);
    this.n = ((ListView)findViewById(2131427396));
    this.n.setClickable(true);
    this.n.setOnItemClickListener(new y(this));
    b();
  }

  protected void onDestroy()
  {
    super.onDestroy();
  }

  public void onPause()
  {
    super.onPause();
    com.umeng.a.a.a(this.b);
  }

  public void onResume()
  {
    super.onResume();
    com.umeng.a.a.b(this.b);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.ContactListActivity
 * JD-Core Version:    0.6.2
 */