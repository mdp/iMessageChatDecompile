package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;

abstract interface EdgeEffectCompat$EdgeEffectImpl
{
  public abstract boolean draw(Object paramObject, Canvas paramCanvas);

  public abstract void finish(Object paramObject);

  public abstract boolean isFinished(Object paramObject);

  public abstract Object newEdgeEffect(Context paramContext);

  public abstract boolean onAbsorb(Object paramObject, int paramInt);

  public abstract boolean onPull(Object paramObject, float paramFloat);

  public abstract boolean onRelease(Object paramObject);

  public abstract void setSize(Object paramObject, int paramInt1, int paramInt2);
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.EdgeEffectCompat.EdgeEffectImpl
 * JD-Core Version:    0.6.2
 */