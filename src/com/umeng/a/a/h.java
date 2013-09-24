package com.umeng.a.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.location.Location;
import com.umeng.a.j;
import com.umeng.a.m;
import com.umeng.common.a;
import com.umeng.common.b;
import org.json.JSONObject;

public final class h extends l
  implements g
{
  o a;

  public h()
  {
  }

  public h(Context paramContext, String paramString)
  {
    this.e = paramString;
    Location localLocation;
    if (j.d)
    {
      SharedPreferences localSharedPreferences = m.b(paramContext);
      localLocation = b.g(paramContext);
      if (!o.a(localLocation, localSharedPreferences));
    }
    for (o localo = new o(localLocation); ; localo = null)
    {
      this.a = localo;
      return;
    }
  }

  public final void a(JSONObject paramJSONObject)
  {
    if (this.a != null)
      this.a.a(paramJSONObject);
    super.a(paramJSONObject);
  }

  public final boolean a()
  {
    if ((this.a == null) && (j.d))
      a.c("MobclickAgent", "missing location info in Launch");
    return super.a();
  }

  public final void b(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null);
    while (true)
    {
      return;
      try
      {
        super.b(paramJSONObject);
        o localo = new o();
        localo.b(paramJSONObject);
        if (localo.a())
        {
          this.a = localo;
          return;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.umeng.a.a.h
 * JD-Core Version:    0.6.2
 */