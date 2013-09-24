package activity;

import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import java.util.ArrayList;

final class bo extends PagerAdapter
{
  bo(NewMessageActivity paramNewMessageActivity)
  {
  }

  public final void destroyItem(View paramView, int paramInt, Object paramObject)
  {
    ((ViewPager)paramView).removeView((View)NewMessageActivity.j(this.a).get(paramInt));
  }

  public final int getCount()
  {
    return NewMessageActivity.j(this.a).size();
  }

  public final Object instantiateItem(View paramView, int paramInt)
  {
    ((ViewPager)paramView).addView((View)NewMessageActivity.j(this.a).get(paramInt));
    return NewMessageActivity.j(this.a).get(paramInt);
  }

  public final boolean isViewFromObject(View paramView, Object paramObject)
  {
    return paramView == paramObject;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.bo
 * JD-Core Version:    0.6.2
 */