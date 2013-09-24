package activity;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;

final class an
  implements AbsListView.OnScrollListener
{
  an(FriendListActivity paramFriendListActivity)
  {
  }

  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt2 > 0)
      FriendListActivity.a(this.a, paramInt1);
  }

  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.an
 * JD-Core Version:    0.6.2
 */