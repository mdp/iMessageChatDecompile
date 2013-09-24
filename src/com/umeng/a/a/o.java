package com.umeng.a.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.location.Location;
import com.umeng.a.j;
import com.umeng.common.b;
import org.json.JSONObject;

public final class o
  implements g
{
  public double a;
  public double b;
  public long c;

  public o()
  {
  }

  public o(Location paramLocation)
  {
    if (paramLocation == null)
      return;
    this.a = paramLocation.getLongitude();
    this.b = paramLocation.getLatitude();
    this.c = paramLocation.getTime();
  }

  public static SharedPreferences.Editor a(Context paramContext, SharedPreferences paramSharedPreferences)
  {
    if (!j.d);
    Location localLocation;
    do
    {
      return null;
      localLocation = b.g(paramContext);
    }
    while (!a(localLocation, paramSharedPreferences));
    SharedPreferences.Editor localEditor = paramSharedPreferences.edit();
    localEditor.putFloat("lng", (float)localLocation.getLongitude());
    localEditor.putFloat("lat", (float)localLocation.getLatitude());
    localEditor.putLong("gps_time", localLocation.getTime());
    localEditor.commit();
    return localEditor;
  }

  static boolean a(Location paramLocation, SharedPreferences paramSharedPreferences)
  {
    if ((paramLocation != null) && (paramLocation.getTime() > paramSharedPreferences.getLong("last_gps_change_time", 0L)))
    {
      paramSharedPreferences.edit().putLong("last_gps_change_time", paramLocation.getTime()).commit();
      return true;
    }
    return false;
  }

  public final void a(JSONObject paramJSONObject)
  {
    paramJSONObject.put("lng", this.a);
    paramJSONObject.put("lat", this.b);
    paramJSONObject.put("gps_time", this.c);
  }

  public final boolean a()
  {
    return (this.a != 0.0D) || (this.b != 0.0D) || (this.c != 0L);
  }

  public final void b(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null);
    do
    {
      return;
      if (paramJSONObject.has("lng"))
        this.a = paramJSONObject.getDouble("lng");
      if (paramJSONObject.has("lat"))
        this.b = paramJSONObject.getDouble("lat");
    }
    while (!paramJSONObject.has("gps_time"));
    this.c = paramJSONObject.getLong("gps_time");
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.umeng.a.a.o
 * JD-Core Version:    0.6.2
 */