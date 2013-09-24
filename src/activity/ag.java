package activity;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import com.a.a;
import com.a.d;
import com.a.e;
import com.c.l;
import e.c;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class ag
{
  private Context a;
  private LinkedList b;
  private bx c;
  private LinkedList d;
  private cc e;
  private MyApplication f;
  private d g;
  private com.a.g h;
  private a i;

  public ag(Handler paramHandler, Context paramContext)
  {
    this.a = paramContext;
    this.f = ((MyApplication)paramContext.getApplicationContext());
    this.g = this.f.j();
    this.i = this.f.k();
    this.h = this.f.i();
    this.b = new LinkedList();
    this.c = new bx(paramHandler, paramContext.getApplicationContext(), this.b);
    this.d = new LinkedList();
    this.e = new cc(paramHandler, paramContext.getApplicationContext(), this.d);
  }

  public final LinkedList a()
  {
    return this.b;
  }

  public final boolean a(String paramString)
  {
    List localList = this.g.b(this.f.h().a());
    this.d.clear();
    this.f.g();
    Iterator localIterator;
    boolean bool;
    if (localList.size() > 0)
    {
      localIterator = localList.iterator();
      bool = false;
      if (localIterator.hasNext());
    }
    while (true)
    {
      if ((c.m != null) && (c.m.length() > 0))
      {
        cg localcg2 = new cg();
        localcg2.a(ci.c);
        localcg2.d(c.m);
        this.d.addFirst(localcg2);
      }
      cg localcg1 = new cg();
      localcg1.a(ci.a);
      localcg1.d(paramString);
      this.d.addFirst(localcg1);
      Log.d("FriendList", "mRecentDeleteList Clear");
      return bool;
      o localo = (o)localIterator.next();
      localo.b(com.c.g.a(localo.b(), this.i, ","));
      if ((paramString != null) && (paramString.length() != 0) && (!localo.e().contains(paramString)) && (!localo.b().contains(paramString)) && (!localo.c().contains(paramString)))
        break;
      int j = 0;
      int k = 0;
      label236: l locall;
      int m;
      if (j >= this.d.size())
      {
        if (k != 0)
          break;
        locall = new l();
        locall.a(localo.b());
        this.h.a(locall);
        if (localo.i())
          break label493;
        m = localo.a();
        this.f.c(localo.a());
      }
      while (true)
      {
        cg localcg4 = new cg(locall.a(), locall.b(), m, "ddddd", localo.d(), localo.e());
        localcg4.a(localo.c());
        this.d.addFirst(localcg4);
        bool = true;
        break;
        cg localcg3 = (cg)this.d.get(j);
        if (localo.b().equals(localcg3.c()))
        {
          if (e.a(localo.d()) >= e.a(localcg3.f()))
          {
            localcg3.d(localo.e());
            localcg3.c(localo.d());
            if (!localo.i())
            {
              localcg3.b(localo.a());
              this.f.c(localo.a());
            }
            this.d.remove(localcg3);
            this.d.addFirst(localcg3);
          }
          k = 1;
        }
        j++;
        break label236;
        label493: m = 0;
      }
      bool = false;
    }
  }

  public final boolean a(String paramString, boolean paramBoolean)
  {
    List localList = this.g.b(this.f.h().a());
    Log.d("FriendList", "mRecentList Clear");
    this.b.clear();
    this.f.g();
    Iterator localIterator;
    boolean bool;
    if (localList.size() > 0)
    {
      localIterator = localList.iterator();
      bool = false;
      if (localIterator.hasNext());
    }
    while (true)
    {
      if ((c.m != null) && (c.m.length() > 0))
      {
        ch localch2 = new ch();
        localch2.a(ci.c);
        localch2.c(c.m);
        this.b.addFirst(localch2);
      }
      if (!paramBoolean)
      {
        ch localch1 = new ch();
        localch1.a(ci.a);
        localch1.c(paramString);
        this.b.addFirst(localch1);
      }
      Log.d("FriendList", "readmsgDB1 " + this.b.size());
      return bool;
      o localo = (o)localIterator.next();
      localo.b(com.c.g.a(localo.b(), this.i, ","));
      if ((paramString != null) && (paramString.length() != 0) && (!localo.e().contains(paramString)) && (!localo.b().contains(paramString)) && (!localo.c().contains(paramString)))
        break;
      int j = 0;
      int k = 0;
      label270: l locall;
      int m;
      if (j >= this.b.size())
      {
        if (k != 0)
          break;
        locall = new l();
        locall.a(localo.b());
        this.h.a(locall);
        if (localo.i())
          break label525;
        m = localo.a();
        this.f.c(m);
      }
      while (true)
      {
        ch localch4 = new ch(locall.a(), locall.b(), m, "eeeee", localo.d(), localo.e());
        localch4.a(localo.c());
        this.b.addFirst(localch4);
        bool = true;
        break;
        ch localch3 = (ch)this.b.get(j);
        if (localo.b().equals(localch3.c()))
        {
          if (e.a(localo.d()) >= e.a(localch3.g()))
          {
            localch3.c(localo.e());
            localch3.b(localo.d());
            if (!localo.i())
            {
              localch3.b(localo.a());
              this.f.c(localo.a());
            }
            this.b.remove(localch3);
            this.b.addFirst(localch3);
          }
          k = 1;
        }
        j++;
        break label270;
        label525: m = 0;
      }
      bool = false;
    }
  }

  public final bx b()
  {
    return this.c;
  }

  public final cc c()
  {
    return this.e;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.ag
 * JD-Core Version:    0.6.2
 */