package android.support.v4.content;

import android.content.ComponentName;
import android.content.Intent;

abstract interface IntentCompat$IntentCompatImpl
{
  public abstract Intent makeMainActivity(ComponentName paramComponentName);

  public abstract Intent makeMainSelectorActivity(String paramString1, String paramString2);

  public abstract Intent makeRestartActivityTask(ComponentName paramComponentName);
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.content.IntentCompat.IntentCompatImpl
 * JD-Core Version:    0.6.2
 */