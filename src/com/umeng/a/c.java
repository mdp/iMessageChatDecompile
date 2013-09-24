package com.umeng.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.umeng.a.a.h;
import com.umeng.a.a.o;
import com.umeng.common.a;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class c extends f
{
  String a = "";
  String b = "";
  private String l;
  private String m;
  private final int n = 0;
  private final int o = 1;
  private final String p = "start_millis";
  private final String q = "end_millis";
  private final String r = "last_fetch_location_time";
  private final long s = 10000L;
  private final int t = 128;
  private final int u = 256;

  private static boolean a(String paramString, int paramInt)
  {
    if (paramString == null);
    int i;
    do
    {
      return false;
      i = paramString.getBytes().length;
    }
    while ((i == 0) || (i > paramInt));
    return true;
  }

  private void c(Context paramContext)
  {
    while (true)
    {
      SharedPreferences localSharedPreferences;
      try
      {
        localSharedPreferences = m.b(paramContext);
        if (localSharedPreferences == null)
          return;
        long l1 = localSharedPreferences.getLong("end_millis", -1L);
        if (System.currentTimeMillis() - l1 > j.a)
        {
          i = 1;
          if (i == 0)
            break label261;
          long l2 = System.currentTimeMillis();
          if (this.k != null)
            break label252;
          str1 = com.umeng.common.b.k(paramContext);
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append(l2).append(str1).append(com.umeng.common.util.b.b(com.umeng.common.b.c(paramContext)));
          String str2 = com.umeng.common.util.b.a(localStringBuilder.toString());
          h localh = new h(paramContext, str2);
          com.umeng.a.a.m localm = com.umeng.a.a.m.a(paramContext);
          this.c.a(localh);
          this.c.a(localm);
          SharedPreferences.Editor localEditor1 = localSharedPreferences.edit();
          localEditor1.putString("session_id", str2);
          localEditor1.putLong("start_millis", l2);
          localEditor1.putLong("end_millis", -1L);
          localEditor1.commit();
          getClass();
          a(paramContext, 4);
          this.m = str2;
          a.a("MobclickAgent", "Start new session: " + this.m);
          continue;
        }
      }
      finally
      {
      }
      int i = 0;
      continue;
      label252: String str1 = this.k;
      continue;
      label261: Long localLong = Long.valueOf(System.currentTimeMillis());
      SharedPreferences.Editor localEditor2 = localSharedPreferences.edit();
      localEditor2.putLong("start_millis", localLong.longValue());
      localEditor2.putLong("end_millis", -1L);
      localEditor2.commit();
      this.m = localSharedPreferences.getString("session_id", null);
      a.a("MobclickAgent", "Extend current session: " + this.m);
    }
  }

  private void d(Context paramContext)
  {
    while (true)
    {
      SharedPreferences localSharedPreferences;
      long l1;
      long l2;
      try
      {
        localSharedPreferences = m.b(paramContext);
        if (localSharedPreferences == null)
          return;
        l1 = localSharedPreferences.getLong("start_millis", -1L);
        if (l1 == -1L)
        {
          a.b("MobclickAgent", "onEndSession called before onStartSession");
          l2 = System.currentTimeMillis();
          if ((j.d) && (l2 - localSharedPreferences.getLong("last_fetch_location_time", 0L) >= 10000L))
            break label323;
          a(paramContext, 5);
          continue;
        }
      }
      finally
      {
      }
      long l3 = System.currentTimeMillis();
      String str1 = this.l;
      long l4 = l3 - l1;
      long l5 = localSharedPreferences.getLong("duration", 0L);
      SharedPreferences.Editor localEditor2 = localSharedPreferences.edit();
      if (j.e)
      {
        String str2 = localSharedPreferences.getString("activities", "");
        if (!"".equals(str2))
          str2 = str2 + ";";
        StringBuilder localStringBuilder = new StringBuilder().append(str2);
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = str1;
        arrayOfObject[1] = Long.valueOf(l4 / 1000L);
        String str3 = String.format("[%s,%d]", arrayOfObject);
        localEditor2.remove("activities");
        localEditor2.putString("activities", str3);
      }
      localEditor2.putLong("duration", l4 + l5);
      localEditor2.putLong("terminate_time", l3);
      localEditor2.commit();
      localEditor2.putLong("start_millis", -1L);
      localEditor2.putLong("end_millis", l3);
      localEditor2.commit();
      continue;
      label323: SharedPreferences.Editor localEditor1 = o.a(paramContext, localSharedPreferences);
      if (localEditor1 != null)
      {
        localEditor1.putLong("last_fetch_location_time", l2);
        localEditor1.commit();
      }
    }
  }

  final void a(Context paramContext)
  {
    if (paramContext == null);
    try
    {
      a.b("MobclickAgent", "unexpected null context in onPause");
      return;
      if (!paramContext.getClass().getName().equals(this.l))
      {
        a.b("MobclickAgent", "onPause() called without context from corresponding onResume()");
        return;
      }
    }
    catch (Exception localException)
    {
      a.b("MobclickAgent", "Exception occurred in Mobclick.onRause(). ", localException);
      return;
    }
    new d(this, paramContext, 0).start();
  }

  final void a(Context paramContext, String paramString, HashMap paramHashMap)
  {
    if (paramContext != null);
    while (true)
    {
      try
      {
        if (TextUtils.isEmpty(paramString))
        {
          a.b("MobclickAgent", "invalid params in onKVEventEnd");
          return;
        }
        if ((paramHashMap == null) || (paramHashMap.isEmpty()))
        {
          a.b("MobclickAgent", "map is null or empty in onEvent");
          i = 0;
          if (i == 0)
            break label217;
          if (this.m != null)
            break label198;
          a.d("MobclickAgent", "can't call onEvent before session is initialized");
          return;
        }
      }
      catch (Exception localException)
      {
        a.b("MobclickAgent", "Exception occurred in Mobclick.onEvent(). ", localException);
        return;
      }
      Iterator localIterator = paramHashMap.entrySet().iterator();
      while (true)
        if (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          if ((!a((String)localEntry.getKey(), 128)) || (!a((String)localEntry.getValue(), 256)))
          {
            Object[] arrayOfObject = new Object[2];
            arrayOfObject[0] = localEntry.getKey();
            arrayOfObject[1] = localEntry.getValue();
            a.b("MobclickAgent", String.format("invalid key-<%s> or value-<%s> ", arrayOfObject));
            i = 0;
            break;
            label198: this.c.a(this.m, paramString, paramHashMap);
            a(paramContext, 1);
            label217: return;
          }
        }
      int i = 1;
    }
  }

  public final void a(Context paramContext, Throwable paramThrowable)
  {
    try
    {
      this.c.a(new com.umeng.a.a.d(paramThrowable));
      d(paramContext);
      return;
    }
    catch (Exception localException)
    {
      a.a("MobclickAgent", "Exception in onAppCrash", localException);
    }
  }

  final void b(Context paramContext)
  {
    if (paramContext == null);
    try
    {
      a.b("MobclickAgent", "unexpected null context in onResume");
      while (true)
      {
        getClass();
        new d(this, paramContext, 1).start();
        return;
        this.l = paramContext.getClass().getName();
      }
    }
    catch (Exception localException)
    {
      a.b("MobclickAgent", "Exception occurred in Mobclick.onResume(). ", localException);
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.umeng.a.c
 * JD-Core Version:    0.6.2
 */