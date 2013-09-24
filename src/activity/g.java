package activity;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.support.v4.view.ViewPager;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.RelativeLayout;
import com.c.c;

final class g
  implements AdapterView.OnItemClickListener
{
  g(ChatActivity paramChatActivity)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Log.d("Choose", "id = " + paramInt);
    switch (paramInt)
    {
    default:
      return;
    case 0:
      this.a.b();
      return;
    case 1:
      Intent localIntent2 = new Intent("android.media.action.VIDEO_CAPTURE");
      localIntent2.putExtra("android.intent.extra.videoQuality", 0);
      this.a.startActivityForResult(localIntent2, 69650);
      return;
    case 2:
      Intent localIntent1 = new Intent("android.intent.action.GET_CONTENT");
      localIntent1.setType("*/*");
      localIntent1.addCategory("android.intent.category.OPENABLE");
      try
      {
        this.a.startActivityForResult(Intent.createChooser(localIntent1, this.a.b.getString(2131165258)), 69648);
        return;
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
        c.a(this.a, this.a.b.getString(2131165259), this.a.b.getString(2131165263));
        return;
      }
    case 3:
    }
    ChatActivity.d(this.a).setVisibility(8);
    ChatActivity.e(this.a).setVisibility(0);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.g
 * JD-Core Version:    0.6.2
 */