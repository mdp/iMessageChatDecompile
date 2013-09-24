package com.umeng.common.net;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;

public final class q
{
  public static PendingIntent a(Context paramContext, String paramString)
  {
    Intent localIntent = new Intent(paramContext, DownloadingService.class);
    localIntent.putExtra("com.umeng.broadcast.download.msg", paramString);
    return PendingIntent.getService(paramContext, paramString.hashCode(), localIntent, 134217728);
  }

  public static String a(int paramInt, String paramString)
  {
    if (paramInt == 0)
      return null;
    StringBuilder localStringBuilder = new StringBuilder(paramInt);
    localStringBuilder.append(":");
    localStringBuilder.append(paramString);
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.umeng.common.net.q
 * JD-Core Version:    0.6.2
 */