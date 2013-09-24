package activity;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import com.a.d;
import com.a.e;
import com.c.l;
import com.c.m;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class cp
{
  protected MyApplication a;
  private Context b;
  private ListView c;
  private bx d;
  private EditText e;
  private Dialog f;
  private d g;
  private com.a.g h;
  private com.a.a i;
  private LinkedList j;
  private boolean k = true;
  private LinkedList l;
  private v m;
  private com.d.a n;
  private Handler o;
  private Button p;

  public cp(Context paramContext, Handler paramHandler)
  {
    this.b = paramContext;
    this.o = paramHandler;
    this.a = ((MyApplication)this.b.getApplicationContext());
    this.g = this.a.j();
    this.i = this.a.k();
    this.h = this.a.i();
    this.n = new com.d.a(paramContext, "saveUser");
    this.j = new LinkedList();
    this.d = new bx(null, this.b.getApplicationContext(), this.j);
    this.l = new LinkedList();
    this.m = new v(null, this.b.getApplicationContext(), this.l);
    this.f = new Dialog(this.b, 2131296257);
    this.f.setContentView(2130903083);
    this.p = ((Button)this.f.findViewById(2131427520));
    this.p.setOnClickListener(new cq(this));
    WindowManager.LayoutParams localLayoutParams = this.f.getWindow().getAttributes();
    localLayoutParams.width = m.a(this.b);
    localLayoutParams.gravity = 48;
    this.e = ((EditText)this.f.findViewById(2131427519));
    this.e.addTextChangedListener(new cr(this));
    this.c = ((ListView)this.f.findViewById(2131427521));
    this.c.setOnItemClickListener(new cs(this));
    this.f.setCancelable(true);
    this.f.setOnCancelListener(new ct(this));
  }

  public final void a()
  {
    this.k = true;
    this.f.show();
    this.f.getWindow().setSoftInputMode(5);
  }

  public final void a(String paramString)
  {
    List localList = this.g.c(this.a.h().a());
    Log.d("FriendList", "mRecentList Clear");
    this.j.clear();
    Iterator localIterator;
    if (localList.size() > 0)
      localIterator = localList.iterator();
    o localo;
    int i1;
    int i2;
    label183: 
    do
    {
      do
      {
        if (!localIterator.hasNext())
        {
          this.c.setAdapter(this.d);
          this.c.setSelection(0);
          this.d.notifyDataSetChanged();
          return;
        }
        localo = (o)localIterator.next();
        localo.b(com.c.g.a(localo.b(), this.i, ","));
      }
      while (((paramString != null) && (paramString.length() != 0) && (!localo.e().contains(paramString)) && (!localo.b().contains(paramString)) && (!localo.c().contains(paramString))) || (paramString == null) || (paramString.length() == 0));
      i1 = 0;
      i2 = 0;
      if (i1 < this.j.size())
        break;
    }
    while (i2 != 0);
    l locall = new l();
    locall.a(localo.b());
    this.h.a(locall);
    int i3;
    if (!localo.i())
    {
      i3 = localo.a();
      this.a.c(i3);
    }
    while (true)
    {
      ch localch2 = new ch(locall.a(), locall.b(), i3, "eeeee", localo.d(), localo.e());
      localch2.a(localo.c());
      this.j.addFirst(localch2);
      break;
      ch localch1 = (ch)this.j.get(i1);
      if (localo.b().equals(localch1.c()))
      {
        i2 = 1;
        if (e.a(localo.d()) >= e.a(localch1.g()))
        {
          localch1.c(localo.e());
          localch1.b(localo.d());
          if (!localo.i())
          {
            localch1.b(localo.a());
            this.a.c(localo.a());
          }
          this.j.remove(localch1);
          this.j.addFirst(localch1);
        }
      }
      i1++;
      break label183;
      i3 = 0;
    }
  }

  public final void b(String paramString)
  {
    List localList = this.i.a();
    this.l.clear();
    Iterator localIterator;
    if (localList.size() > 0)
      localIterator = localList.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        this.c.setAdapter(this.m);
        this.c.setSelection(0);
        this.m.notifyDataSetChanged();
        return;
      }
      z localz = (z)localIterator.next();
      if ((paramString != null) && (paramString.length() > 0) && ((localz.a().contains(paramString)) || (localz.b().contains(paramString))))
      {
        localz.a(aa.b);
        this.l.add(localz);
      }
    }
  }

  public final boolean b()
  {
    return this.f.isShowing();
  }

  public final void c()
  {
    this.k = false;
    this.f.show();
    this.f.getWindow().setSoftInputMode(5);
  }

  public final void d()
  {
    this.e.setText("");
    Message localMessage = this.o.obtainMessage();
    if (this.k);
    for (localMessage.what = 17; ; localMessage.what = 16)
    {
      localMessage.getData().putSerializable("msg", "Click");
      this.o.sendMessage(localMessage);
      return;
    }
  }

  public final void e()
  {
    this.f.cancel();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.cp
 * JD-Core Version:    0.6.2
 */