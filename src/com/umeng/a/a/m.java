package com.umeng.a.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.umeng.a.j;
import com.umeng.common.a;
import com.umeng.common.b;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

public final class m extends l
  implements g
{
  public o a;
  public p b;
  public long c = 0L;
  private ArrayList d = new ArrayList();

  public m()
  {
  }

  private m(String paramString)
  {
    this.e = paramString;
  }

  public static m a(Context paramContext)
  {
    SharedPreferences localSharedPreferences1 = com.umeng.a.m.b(paramContext);
    String str = localSharedPreferences1.getString("session_id", null);
    if (str == null)
      return null;
    m localm = new m(str);
    o localo;
    long l;
    String[] arrayOfString;
    if (!j.d)
    {
      localo = null;
      if ((localo != null) && (localo.a()))
        localm.a = localo;
      p localp = p.a(paramContext);
      if ((localp != null) && (localp.a()))
        localm.b = localp;
      localm.d = a(localSharedPreferences1);
      localm.c = (localSharedPreferences1.getLong("duration", 0L) / 1000L);
      l = localSharedPreferences1.getLong("terminate_time", 0L);
      boolean bool = l < 0L;
      arrayOfString = null;
      if (bool)
        break label305;
    }
    while (true)
    {
      if ((arrayOfString != null) && (arrayOfString.length == 2))
      {
        localm.f = arrayOfString[0];
        localm.g = arrayOfString[1];
      }
      SharedPreferences.Editor localEditor = localSharedPreferences1.edit();
      localEditor.putLong("duration", 0L);
      localEditor.putString("activities", "");
      localEditor.commit();
      return localm;
      SharedPreferences localSharedPreferences2 = com.umeng.a.m.b(paramContext);
      localo = new o();
      if (!localSharedPreferences2.contains("gps_time"))
      {
        localo = null;
        break;
      }
      localo.b = localSharedPreferences2.getFloat("lat", 0.0F);
      localo.a = localSharedPreferences2.getFloat("lng", 0.0F);
      localo.c = localSharedPreferences2.getLong("gps_time", 0L);
      localSharedPreferences2.edit().remove("gps_time").commit();
      break;
      label305: arrayOfString = b.a(new Date(l)).split(" ");
    }
  }

  private static ArrayList a(SharedPreferences paramSharedPreferences)
  {
    String str = paramSharedPreferences.getString("activities", "");
    if (!"".equals(str))
    {
      ArrayList localArrayList = new ArrayList();
      try
      {
        String[] arrayOfString = str.split(";");
        for (int i = 0; i < arrayOfString.length; i++)
          localArrayList.add(new k(new JSONArray(arrayOfString[i])));
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        if (localArrayList.size() > 0)
          return localArrayList;
      }
    }
    return null;
  }

  public final void a(JSONObject paramJSONObject)
  {
    super.a(paramJSONObject);
    if (this.c > 0L)
      paramJSONObject.put("duration", this.c);
    if (this.b != null)
      this.b.a(paramJSONObject);
    if (this.a != null)
      this.a.a(paramJSONObject);
    if (this.d.size() != 0)
    {
      JSONArray localJSONArray1 = new JSONArray();
      Iterator localIterator = this.d.iterator();
      while (localIterator.hasNext())
      {
        k localk = (k)localIterator.next();
        JSONArray localJSONArray2 = new JSONArray();
        localJSONArray2.put(localk.a);
        localJSONArray2.put(localk.b);
        localJSONArray1.put(localJSONArray2);
      }
      paramJSONObject.put("activities", localJSONArray1);
    }
  }

  public final boolean a()
  {
    if ((this.a == null) && (j.d))
      a.c("MobclickAgent", "missing location info in Terminate");
    if (this.b == null)
      a.d("MobclickAgent", "missing receive and transport Traffic in Terminate ");
    if (this.c <= 0L)
    {
      a.b("MobclickAgent", "missing Duration info in Terminate");
      return false;
    }
    if ((this.d == null) || (this.d.size() == 0))
      a.d("MobclickAgent", "missing Activities info in Terminate");
    return super.a();
  }

  public final void b(JSONObject paramJSONObject)
  {
    try
    {
      super.b(paramJSONObject);
      this.c = paramJSONObject.getLong("duration");
      p localp = new p();
      if (paramJSONObject != null)
      {
        if (paramJSONObject.has("uptr"))
          localp.a = paramJSONObject.getLong("uptr");
        if (paramJSONObject.has("dntr"))
          localp.b = paramJSONObject.getLong("dntr");
      }
      if (localp.a())
        this.b = localp;
      o localo = new o();
      localo.b(paramJSONObject);
      if (localo.a())
        this.a = localo;
      if (paramJSONObject.has("activities"))
      {
        JSONArray localJSONArray = paramJSONObject.getJSONArray("activities");
        for (int i = 0; i < localJSONArray.length(); i++)
        {
          k localk = new k(localJSONArray.getJSONArray(i));
          this.d.add(localk);
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.umeng.a.a.m
 * JD-Core Version:    0.6.2
 */