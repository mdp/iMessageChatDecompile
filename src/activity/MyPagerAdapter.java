package activity;

import android.os.Parcelable;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import java.util.List;

public class MyPagerAdapter extends PagerAdapter
{
  private List a;

  public MyPagerAdapter(List paramList)
  {
    this.a = paramList;
  }

  public void destroyItem(View paramView, int paramInt, Object paramObject)
  {
    ((ViewPager)paramView).removeView((View)this.a.get(paramInt));
  }

  public void finishUpdate(View paramView)
  {
  }

  public int getCount()
  {
    return this.a.size();
  }

  public Object instantiateItem(View paramView, int paramInt)
  {
    ((ViewPager)paramView).addView((View)this.a.get(paramInt), 0);
    return this.a.get(paramInt);
  }

  public boolean isViewFromObject(View paramView, Object paramObject)
  {
    return paramView == paramObject;
  }

  public void restoreState(Parcelable paramParcelable, ClassLoader paramClassLoader)
  {
  }

  public Parcelable saveState()
  {
    return null;
  }

  public void startUpdate(View paramView)
  {
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.MyPagerAdapter
 * JD-Core Version:    0.6.2
 */