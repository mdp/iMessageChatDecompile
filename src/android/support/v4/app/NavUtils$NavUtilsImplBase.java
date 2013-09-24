package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.support.v4.content.IntentCompat;
import android.util.Log;

class NavUtils$NavUtilsImplBase
  implements NavUtils.NavUtilsImpl
{
  public Intent getParentActivityIntent(Activity paramActivity)
  {
    String str = NavUtils.getParentActivityName(paramActivity);
    if (str == null)
      return null;
    ComponentName localComponentName = new ComponentName(paramActivity, str);
    try
    {
      if (NavUtils.getParentActivityName(paramActivity, localComponentName) == null)
        return IntentCompat.makeMainActivity(localComponentName);
      Intent localIntent = new Intent().setComponent(localComponentName);
      return localIntent;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      Log.e("NavUtils", "getParentActivityIntent: bad parentActivityName '" + str + "' in manifest");
    }
    return null;
  }

  public String getParentActivityName(Context paramContext, ActivityInfo paramActivityInfo)
  {
    String str;
    if (paramActivityInfo.metaData == null)
      str = null;
    do
    {
      return str;
      str = paramActivityInfo.metaData.getString("android.support.PARENT_ACTIVITY");
      if (str == null)
        return null;
    }
    while (str.charAt(0) != '.');
    return paramContext.getPackageName() + str;
  }

  public void navigateUpTo(Activity paramActivity, Intent paramIntent)
  {
    paramIntent.addFlags(67108864);
    paramActivity.startActivity(paramIntent);
    paramActivity.finish();
  }

  public boolean shouldUpRecreateTask(Activity paramActivity, Intent paramIntent)
  {
    String str = paramActivity.getIntent().getAction();
    return (str != null) && (!str.equals("android.intent.action.MAIN"));
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.NavUtils.NavUtilsImplBase
 * JD-Core Version:    0.6.2
 */