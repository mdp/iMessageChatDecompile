package activity;

import android.content.Intent;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.c.l;

final class ao
  implements AdapterView.OnItemClickListener
{
  ao(FriendListActivity paramFriendListActivity)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt != 0)
    {
      Log.d("ContactListActivity", "contact Down" + paramInt);
      z localz = (z)((ListView)paramAdapterView).getItemAtPosition(paramInt);
      l locall = new l();
      locall.a(localz.a());
      Intent localIntent = new Intent(this.a, AddToContactActivity.class);
      localIntent.setFlags(268435456);
      localIntent.putExtra("user", locall);
      this.a.startActivity(localIntent);
      return;
    }
    FriendListActivity.a(this.a).c();
    this.a.c();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.ao
 * JD-Core Version:    0.6.2
 */