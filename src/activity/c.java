package activity;

import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.ListView;

final class c
  implements AdapterView.OnItemClickListener
{
  c(ChatActivity paramChatActivity)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (ChatActivity.h(this.a).getVisibility() == 0)
    {
      Log.e("ChatActity", "Item Press " + paramInt);
      l locall = (l)((ListView)paramAdapterView).getItemAtPosition(paramInt);
      locall.c();
      if (!locall.d())
        break label97;
      ChatActivity localChatActivity2 = this.a;
      ChatActivity.b(localChatActivity2, 1 + ChatActivity.i(localChatActivity2));
    }
    while (true)
    {
      ChatActivity.j(this.a);
      ChatActivity.k(this.a).notifyDataSetChanged();
      return;
      label97: ChatActivity localChatActivity1 = this.a;
      ChatActivity.b(localChatActivity1, -1 + ChatActivity.i(localChatActivity1));
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.c
 * JD-Core Version:    0.6.2
 */