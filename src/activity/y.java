package activity;

import android.content.Intent;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.c.l;

final class y
  implements AdapterView.OnItemClickListener
{
  y(ContactListActivity paramContactListActivity)
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
      Intent localIntent = new Intent();
      localIntent.putExtra("user", locall);
      this.a.setResult(-1, localIntent);
      this.a.finish();
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.y
 * JD-Core Version:    0.6.2
 */