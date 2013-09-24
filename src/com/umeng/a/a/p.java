package com.umeng.a.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import com.umeng.a.m;
import com.umeng.common.a;
import java.lang.reflect.Method;
import org.json.JSONObject;

public final class p
  implements g
{
  public long a = 0L;
  public long b = 0L;

  public static p a(Context paramContext)
  {
    try
    {
      p localp = new p();
      Class localClass = Class.forName("android.net.TrafficStats");
      Class[] arrayOfClass1 = new Class[1];
      arrayOfClass1[0] = Integer.TYPE;
      Method localMethod1 = localClass.getMethod("getUidRxBytes", arrayOfClass1);
      Class[] arrayOfClass2 = new Class[1];
      arrayOfClass2[0] = Integer.TYPE;
      Method localMethod2 = localClass.getMethod("getUidTxBytes", arrayOfClass2);
      int i = paramContext.getApplicationInfo().uid;
      Object localObject;
      if (i == -1)
        localObject = null;
      while (localObject[0] > 0L)
        if (localObject[1] <= 0L)
        {
          break;
          long[] arrayOfLong = new long[2];
          Object[] arrayOfObject1 = new Object[1];
          arrayOfObject1[0] = Integer.valueOf(i);
          arrayOfLong[0] = ((Long)localMethod1.invoke(null, arrayOfObject1)).longValue();
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = Integer.valueOf(i);
          arrayOfLong[1] = ((Long)localMethod2.invoke(null, arrayOfObject2)).longValue();
          localObject = arrayOfLong;
        }
        else
        {
          SharedPreferences localSharedPreferences = m.b(paramContext);
          long l1 = localSharedPreferences.getLong("uptr", -1L);
          long l2 = localSharedPreferences.getLong("dntr", -1L);
          localSharedPreferences.edit().putLong("uptr", localObject[1]).putLong("dntr", localObject[0]).commit();
          if ((l1 <= 0L) || (l2 <= 0L))
            break label336;
          localObject[0] -= l2;
          localObject[1] -= l1;
          if ((localObject[0] <= 0L) || (localObject[1] <= 0L))
            break label338;
          localp.b = localObject[0];
          localp.a = localObject[1];
          return localp;
        }
    }
    catch (Exception localException)
    {
      a.d("MobclickAgent", "sdk less than 2.2 has get no traffic");
      return null;
    }
    return null;
    label336: return null;
    label338: return null;
  }

  public final void a(JSONObject paramJSONObject)
  {
    if (this.a > 0L)
      paramJSONObject.put("uptr", this.a);
    if (this.b > 0L)
      paramJSONObject.put("dntr", this.b);
  }

  public final boolean a()
  {
    return (this.a > 0L) && (this.b > 0L);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.umeng.a.a.p
 * JD-Core Version:    0.6.2
 */