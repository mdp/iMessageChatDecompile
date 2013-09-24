package activity;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.c.l;
import com.d.a;

final class cs
  implements AdapterView.OnItemClickListener
{
  cs(cp paramcp)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Log.d("SearchModule", "Down Search" + cp.b(this.a));
    if (!cp.b(this.a))
    {
      z localz = (z)((ListView)paramAdapterView).getItemAtPosition(paramInt);
      l locall2 = new l();
      locall2.a(localz.a());
      Intent localIntent2 = new Intent(cp.c(this.a), AddToContactActivity.class);
      localIntent2.setFlags(268435456);
      localIntent2.putExtra("user", locall2);
      cp.c(this.a).startActivity(localIntent2);
    }
    while (true)
    {
      cp.e(this.a).cancel();
      return;
      ch localch = (ch)((ListView)paramAdapterView).getItemAtPosition(paramInt);
      this.a.a.b(localch.e());
      l locall1 = new l();
      locall1.a(localch.c());
      locall1.a(localch.d());
      localch.f();
      cp.d(this.a).d(localch.c());
      Intent localIntent1 = new Intent(cp.c(this.a), ChatActivity.class);
      localIntent1.setFlags(268435456);
      localIntent1.putExtra("user", locall1);
      cp.c(this.a).startActivity(localIntent1);
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.cs
 * JD-Core Version:    0.6.2
 */