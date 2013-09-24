package activity;

import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.util.Log;

final class au
  implements ViewPager.OnPageChangeListener
{
  au(FriendListActivity paramFriendListActivity)
  {
  }

  public final void onPageScrollStateChanged(int paramInt)
  {
  }

  public final void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
  {
  }

  public final void onPageSelected(int paramInt)
  {
    Log.d("Page chage", paramInt);
    switch (paramInt)
    {
    default:
      return;
    case 0:
      FriendListActivity.h(this.a);
      return;
    case 1:
      FriendListActivity.i(this.a);
      return;
    case 2:
    }
    FriendListActivity.j(this.a);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.au
 * JD-Core Version:    0.6.2
 */