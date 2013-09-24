package android.support.v4.widget;

import android.content.Context;

class ScrollerCompat$ScrollerCompatImplIcs extends ScrollerCompat
{
  public ScrollerCompat$ScrollerCompatImplIcs(Context paramContext)
  {
    super(paramContext);
  }

  public float getCurrVelocity()
  {
    return ScrollerCompatIcs.getCurrVelocity(this.mScroller);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.ScrollerCompat.ScrollerCompatImplIcs
 * JD-Core Version:    0.6.2
 */