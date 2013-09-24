package android.support.v4.view;

import android.view.View;

class ViewCompat$GBViewCompatImpl extends ViewCompat.BaseViewCompatImpl
{
  public int getOverScrollMode(View paramView)
  {
    return ViewCompatGingerbread.getOverScrollMode(paramView);
  }

  public void setOverScrollMode(View paramView, int paramInt)
  {
    ViewCompatGingerbread.setOverScrollMode(paramView, paramInt);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ViewCompat.GBViewCompatImpl
 * JD-Core Version:    0.6.2
 */