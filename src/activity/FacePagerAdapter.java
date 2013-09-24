package activity;

import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import java.util.List;

public class FacePagerAdapter extends PagerAdapter
{
  public List a;

  public FacePagerAdapter(List paramList)
  {
    this.a = paramList;
  }

  public void destroyItem(View paramView, int paramInt, Object paramObject)
  {
    ((ViewPager)paramView).removeView((View)this.a.get(paramInt));
  }

  public int getCount()
  {
    return this.a.size();
  }

  public int getItemPosition(Object paramObject)
  {
    return super.getItemPosition(paramObject);
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
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.FacePagerAdapter
 * JD-Core Version:    0.6.2
 */