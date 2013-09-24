package activity;

import android.content.Context;
import android.os.Handler;
import com.d.a;
import java.util.LinkedList;

public final class av
{
  private Context a;
  private LinkedList b;
  private cu c;
  private MyApplication d;
  private a e;

  public av(Handler paramHandler, Context paramContext)
  {
    this.a = paramContext;
    this.d = ((MyApplication)paramContext.getApplicationContext());
    this.e = new a(paramContext, "saveUser");
    this.b = new LinkedList();
    this.c = new cu(paramHandler, paramContext.getApplicationContext(), this.b);
  }

  public final cu a()
  {
    return this.c;
  }

  public final void b()
  {
    this.b.clear();
    cx localcx1 = new cx();
    localcx1.a(cy.d);
    localcx1.a(this.a.getString(2131165288) + this.e.b());
    this.b.add(localcx1);
    cx localcx2 = new cx();
    localcx2.a(cy.b);
    localcx2.a(this.a.getString(2131165289));
    this.b.add(localcx2);
    cx localcx3 = new cx();
    localcx3.a(cy.b);
    localcx3.a(this.a.getString(2131165290));
    this.b.add(localcx3);
    cx localcx4 = new cx();
    localcx4.a(cy.b);
    localcx4.a(this.a.getString(2131165294));
    this.b.add(localcx4);
    cx localcx5 = new cx();
    localcx5.a(cy.b);
    localcx5.a(this.a.getString(2131165292));
    this.b.add(localcx5);
    cx localcx6 = new cx();
    localcx6.a(cy.b);
    localcx6.a(this.a.getString(2131165375));
    this.b.add(localcx6);
    cx localcx7 = new cx();
    localcx7.a(cy.b);
    localcx7.a(this.a.getString(2131165295));
    this.b.add(localcx7);
    cx localcx8 = new cx();
    localcx8.a(cy.c);
    localcx8.a(this.a.getString(2131165293));
    this.b.add(localcx8);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.av
 * JD-Core Version:    0.6.2
 */