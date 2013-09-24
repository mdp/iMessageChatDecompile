package android.support.v4.widget;

import android.content.Context;
import android.os.Build.VERSION;
import android.widget.Scroller;

class ScrollerCompat
{
  Scroller mScroller;

  ScrollerCompat(Context paramContext)
  {
    this.mScroller = new Scroller(paramContext);
  }

  public static ScrollerCompat from(Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 14)
      return new ScrollerCompat.ScrollerCompatImplIcs(paramContext);
    return new ScrollerCompat(paramContext);
  }

  public void abortAnimation()
  {
    this.mScroller.abortAnimation();
  }

  public boolean computeScrollOffset()
  {
    return this.mScroller.computeScrollOffset();
  }

  public void fling(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    this.mScroller.fling(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8);
  }

  public float getCurrVelocity()
  {
    return 0.0F;
  }

  public int getCurrX()
  {
    return this.mScroller.getCurrX();
  }

  public int getCurrY()
  {
    return this.mScroller.getCurrY();
  }

  public int getDuration()
  {
    return this.mScroller.getDuration();
  }

  public boolean isFinished()
  {
    return this.mScroller.isFinished();
  }

  public void startScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.mScroller.startScroll(paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public void startScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    this.mScroller.startScroll(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.ScrollerCompat
 * JD-Core Version:    0.6.2
 */