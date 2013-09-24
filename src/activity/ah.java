package activity;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import com.a.a;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class ah
{
  private Context a;
  private LinkedList b;
  private v c;
  private MyApplication d;
  private a e;

  public ah(Handler paramHandler, Context paramContext)
  {
    this.a = paramContext;
    this.d = ((MyApplication)paramContext.getApplicationContext());
    this.e = this.d.k();
    this.b = new LinkedList();
    this.c = new v(paramHandler, paramContext.getApplicationContext(), this.b);
  }

  public final v a()
  {
    return this.c;
  }

  public final void a(String paramString, boolean paramBoolean)
  {
    List localList = this.e.a();
    this.b.clear();
    if (!paramBoolean)
    {
      z localz1 = new z();
      localz1.a(aa.a);
      localz1.c(paramString);
      this.b.add(localz1);
    }
    Iterator localIterator;
    if (localList.size() > 0)
      localIterator = localList.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        Log.d("ContactDB", "num " + localList.size());
        return;
      }
      z localz2 = (z)localIterator.next();
      if ((localz2.a().contains(paramString)) || (localz2.b().contains(paramString)))
      {
        localz2.a(aa.b);
        this.b.add(localz2);
      }
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.ah
 * JD-Core Version:    0.6.2
 */