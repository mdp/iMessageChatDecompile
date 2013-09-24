package android.support.v4.content;

import android.content.ComponentName;
import android.content.Intent;

class IntentCompat$IntentCompatImplBase
  implements IntentCompat.IntentCompatImpl
{
  public Intent makeMainActivity(ComponentName paramComponentName)
  {
    Intent localIntent = new Intent("android.intent.action.MAIN");
    localIntent.setComponent(paramComponentName);
    localIntent.addCategory("android.intent.category.LAUNCHER");
    return localIntent;
  }

  public Intent makeMainSelectorActivity(String paramString1, String paramString2)
  {
    Intent localIntent = new Intent(paramString1);
    localIntent.addCategory(paramString2);
    return localIntent;
  }

  public Intent makeRestartActivityTask(ComponentName paramComponentName)
  {
    Intent localIntent = makeMainActivity(paramComponentName);
    localIntent.addFlags(268468224);
    return localIntent;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.content.IntentCompat.IntentCompatImplBase
 * JD-Core Version:    0.6.2
 */