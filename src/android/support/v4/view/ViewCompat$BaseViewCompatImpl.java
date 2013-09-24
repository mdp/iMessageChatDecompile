package android.support.v4.view;

import android.graphics.Paint;
import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

class ViewCompat$BaseViewCompatImpl
  implements ViewCompat.ViewCompatImpl
{
  public boolean canScrollHorizontally(View paramView, int paramInt)
  {
    return false;
  }

  public boolean canScrollVertically(View paramView, int paramInt)
  {
    return false;
  }

  public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View paramView)
  {
    return null;
  }

  long getFrameTime()
  {
    return 10L;
  }

  public int getImportantForAccessibility(View paramView)
  {
    return 0;
  }

  public int getLabelFor(View paramView)
  {
    return 0;
  }

  public int getLayerType(View paramView)
  {
    return 0;
  }

  public int getOverScrollMode(View paramView)
  {
    return 2;
  }

  public boolean hasTransientState(View paramView)
  {
    return false;
  }

  public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
  }

  public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
  }

  public void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
  }

  public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
  {
    return false;
  }

  public void postInvalidateOnAnimation(View paramView)
  {
    paramView.postInvalidateDelayed(getFrameTime());
  }

  public void postInvalidateOnAnimation(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramView.postInvalidateDelayed(getFrameTime(), paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public void postOnAnimation(View paramView, Runnable paramRunnable)
  {
    paramView.postDelayed(paramRunnable, getFrameTime());
  }

  public void postOnAnimationDelayed(View paramView, Runnable paramRunnable, long paramLong)
  {
    paramView.postDelayed(paramRunnable, paramLong + getFrameTime());
  }

  public void setAccessibilityDelegate(View paramView, AccessibilityDelegateCompat paramAccessibilityDelegateCompat)
  {
  }

  public void setHasTransientState(View paramView, boolean paramBoolean)
  {
  }

  public void setImportantForAccessibility(View paramView, int paramInt)
  {
  }

  public void setLabelFor(View paramView, int paramInt)
  {
  }

  public void setLayerType(View paramView, int paramInt, Paint paramPaint)
  {
  }

  public void setOverScrollMode(View paramView, int paramInt)
  {
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ViewCompat.BaseViewCompatImpl
 * JD-Core Version:    0.6.2
 */