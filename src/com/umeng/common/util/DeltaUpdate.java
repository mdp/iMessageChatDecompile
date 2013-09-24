package com.umeng.common.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;

public class DeltaUpdate
{
  private static boolean a;

  static
  {
    try
    {
      System.loadLibrary("bspatch");
      a = true;
      return;
    }
    catch (UnsatisfiedLinkError localUnsatisfiedLinkError)
    {
      a = false;
    }
  }

  public static int a(String paramString1, String paramString2, String paramString3)
  {
    return bspatch(paramString1, paramString2, paramString3);
  }

  public static String a(Context paramContext)
  {
    return paramContext.getApplicationInfo().sourceDir;
  }

  public static native int bspatch(String paramString1, String paramString2, String paramString3);
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.umeng.common.util.DeltaUpdate
 * JD-Core Version:    0.6.2
 */