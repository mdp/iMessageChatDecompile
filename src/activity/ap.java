package activity;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.ListView;
import com.c.l;

final class ap
  implements AdapterView.OnItemLongClickListener
{
  ap(FriendListActivity paramFriendListActivity)
  {
  }

  public final boolean onItemLongClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt != 0)
    {
      Log.d("ContactListActivity", "contact Long Down" + paramInt);
      z localz = (z)((ListView)paramAdapterView).getItemAtPosition(paramInt);
      new l().a(localz.a());
      FriendListActivity.a(this.a, this.a, this.a.b.getString(2131165279), localz.a());
    }
    return true;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.ap
 * JD-Core Version:    0.6.2
 */