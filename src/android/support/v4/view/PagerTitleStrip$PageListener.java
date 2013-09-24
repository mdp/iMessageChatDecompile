package android.support.v4.view;

import android.database.DataSetObserver;

class PagerTitleStrip$PageListener extends DataSetObserver
  implements ViewPager.OnAdapterChangeListener, ViewPager.OnPageChangeListener
{
  private int mScrollState;

  private PagerTitleStrip$PageListener(PagerTitleStrip paramPagerTitleStrip)
  {
  }

  public void onAdapterChanged(PagerAdapter paramPagerAdapter1, PagerAdapter paramPagerAdapter2)
  {
    this.this$0.updateAdapter(paramPagerAdapter1, paramPagerAdapter2);
  }

  public void onChanged()
  {
    this.this$0.updateText(this.this$0.mPager.getCurrentItem(), this.this$0.mPager.getAdapter());
    boolean bool = PagerTitleStrip.access$100(this.this$0) < 0.0F;
    float f = 0.0F;
    if (!bool)
      f = PagerTitleStrip.access$100(this.this$0);
    this.this$0.updateTextPositions(this.this$0.mPager.getCurrentItem(), f, true);
  }

  public void onPageScrollStateChanged(int paramInt)
  {
    this.mScrollState = paramInt;
  }

  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
  {
    if (paramFloat > 0.5F)
      paramInt1++;
    this.this$0.updateTextPositions(paramInt1, paramFloat, false);
  }

  public void onPageSelected(int paramInt)
  {
    if (this.mScrollState == 0)
    {
      this.this$0.updateText(this.this$0.mPager.getCurrentItem(), this.this$0.mPager.getAdapter());
      boolean bool = PagerTitleStrip.access$100(this.this$0) < 0.0F;
      float f = 0.0F;
      if (!bool)
        f = PagerTitleStrip.access$100(this.this$0);
      this.this$0.updateTextPositions(this.this$0.mPager.getCurrentItem(), f, true);
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.PagerTitleStrip.PageListener
 * JD-Core Version:    0.6.2
 */