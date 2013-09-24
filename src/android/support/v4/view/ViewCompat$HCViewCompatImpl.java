package android.support.v4.view;

import android.graphics.Paint;
import android.view.View;

class ViewCompat$HCViewCompatImpl extends ViewCompat.GBViewCompatImpl
{
  long getFrameTime()
  {
    return ViewCompatHC.getFrameTime();
  }

  public int getLayerType(View paramView)
  {
    return ViewCompatHC.getLayerType(paramView);
  }

  public void setLayerType(View paramView, int paramInt, Paint paramPaint)
  {
    ViewCompatHC.setLayerType(paramView, paramInt, paramPaint);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ViewCompat.HCViewCompatImpl
 * JD-Core Version:    0.6.2
 */