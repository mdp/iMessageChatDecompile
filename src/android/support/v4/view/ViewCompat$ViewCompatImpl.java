package android.support.v4.view;

import android.graphics.Paint;
import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

abstract interface ViewCompat$ViewCompatImpl
{
  public abstract boolean canScrollHorizontally(View paramView, int paramInt);

  public abstract boolean canScrollVertically(View paramView, int paramInt);

  public abstract AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View paramView);

  public abstract int getImportantForAccessibility(View paramView);

  public abstract int getLabelFor(View paramView);

  public abstract int getLayerType(View paramView);

  public abstract int getOverScrollMode(View paramView);

  public abstract boolean hasTransientState(View paramView);

  public abstract void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent);

  public abstract void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat);

  public abstract void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent);

  public abstract boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle);

  public abstract void postInvalidateOnAnimation(View paramView);

  public abstract void postInvalidateOnAnimation(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4);

  public abstract void postOnAnimation(View paramView, Runnable paramRunnable);

  public abstract void postOnAnimationDelayed(View paramView, Runnable paramRunnable, long paramLong);

  public abstract void setAccessibilityDelegate(View paramView, AccessibilityDelegateCompat paramAccessibilityDelegateCompat);

  public abstract void setHasTransientState(View paramView, boolean paramBoolean);

  public abstract void setImportantForAccessibility(View paramView, int paramInt);

  public abstract void setLabelFor(View paramView, int paramInt);

  public abstract void setLayerType(View paramView, int paramInt, Paint paramPaint);

  public abstract void setOverScrollMode(View paramView, int paramInt);
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ViewCompat.ViewCompatImpl
 * JD-Core Version:    0.6.2
 */