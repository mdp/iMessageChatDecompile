package activity;

import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import java.util.ArrayList;

final class h extends PagerAdapter
{
  h(ChatActivity paramChatActivity)
  {
  }

  public final void destroyItem(View paramView, int paramInt, Object paramObject)
  {
    ((ViewPager)paramView).removeView((View)ChatActivity.f(this.a).get(paramInt));
  }

  public final int getCount()
  {
    return ChatActivity.f(this.a).size();
  }

  public final Object instantiateItem(View paramView, int paramInt)
  {
    ((ViewPager)paramView).addView((View)ChatActivity.f(this.a).get(paramInt));
    return ChatActivity.f(this.a).get(paramInt);
  }

  public final boolean isViewFromObject(View paramView, Object paramObject)
  {
    return paramView == paramObject;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.h
 * JD-Core Version:    0.6.2
 */