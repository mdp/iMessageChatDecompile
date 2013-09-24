package com.umeng.a;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.umeng.common.a;

class k
{
  private static final String a = k.class.getName();

  public static String a(Context paramContext)
  {
    if (paramContext.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", paramContext.getPackageName()) != 0)
      return null;
    try
    {
      NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if (localNetworkInfo == null)
        return null;
      if (localNetworkInfo.getType() == 1)
        return null;
      String str = localNetworkInfo.getExtraInfo();
      a.a(a, "net type:" + str);
      if (str == null)
        return null;
      if ((str.equals("cmwap")) || (str.equals("3gwap")) || (str.equals("uniwap")))
        return "10.0.0.172";
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.umeng.a.k
 * JD-Core Version:    0.6.2
 */