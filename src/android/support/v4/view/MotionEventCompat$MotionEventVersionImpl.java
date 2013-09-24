package android.support.v4.view;

import android.view.MotionEvent;

abstract interface MotionEventCompat$MotionEventVersionImpl
{
  public abstract int findPointerIndex(MotionEvent paramMotionEvent, int paramInt);

  public abstract int getPointerCount(MotionEvent paramMotionEvent);

  public abstract int getPointerId(MotionEvent paramMotionEvent, int paramInt);

  public abstract float getX(MotionEvent paramMotionEvent, int paramInt);

  public abstract float getY(MotionEvent paramMotionEvent, int paramInt);
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.MotionEventCompat.MotionEventVersionImpl
 * JD-Core Version:    0.6.2
 */