package com.umeng.a.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.Log;
import com.umeng.a.m;
import com.umeng.common.b;
import org.json.JSONObject;

public final class f
  implements g
{
  public String A;
  public String B;
  public String C;
  public String D;
  public String E;
  public String F;
  private final String G = "appkey";
  private final String H = "channel";
  private final String I = "device_id";
  private final String J = "idmd5";
  private final String K = "mc";
  private final String L = "req_time";
  private final String M = "device_model";
  private final String N = "os";
  private final String O = "os_version";
  private final String P = "resolution";
  private final String Q = "cpu";
  private final String R = "gpu_vender";
  private final String S = "gpu_renderer";
  private final String T = "device_board";
  private final String U = "device_brand";
  private final String V = "device_manutime";
  private final String W = "device_manufacturer";
  private final String X = "device_manuid";
  private final String Y = "device_name";
  private final String Z = "app_version";
  public String a;
  private final String aa = "version_code";
  private final String ab = "package_name";
  private final String ac = "sdk_type";
  private final String ad = "sdk_version";
  private final String ae = "timezone";
  private final String af = "country";
  private final String ag = "language";
  private final String ah = "access";
  private final String ai = "access_subtype";
  private final String aj = "carrier";
  private final String ak = "wrapper_type";
  private final String al = "wrapper_version";
  public String b;
  public String c;
  public String d;
  public String e;
  public long f;
  public String g;
  public String h;
  public String i;
  public String j;
  public String k;
  public String l;
  public String m;
  public String n;
  public String o;
  public long p;
  public String q;
  public String r;
  public String s;
  public String t;
  public String u;
  public String v;
  public String w;
  public String x;
  public int y;
  public String z;

  public final void a(Context paramContext, String[] paramArrayOfString)
  {
    if ((paramArrayOfString != null) && (paramArrayOfString.length == 2))
    {
      this.a = paramArrayOfString[0];
      this.b = paramArrayOfString[1];
    }
    if (this.a == null)
      this.a = b.k(paramContext);
    if (this.b == null)
      this.b = b.o(paramContext);
    this.c = b.c(paramContext);
    this.d = b.d(paramContext);
    this.e = b.l(paramContext);
    SharedPreferences localSharedPreferences = m.a(paramContext);
    if (localSharedPreferences != null)
      this.f = localSharedPreferences.getLong("req_time", 0L);
    this.g = Build.MODEL;
    this.h = "Android";
    this.i = Build.VERSION.RELEASE;
    this.j = b.m(paramContext);
    this.k = b.a();
    this.n = Build.BOARD;
    this.o = Build.BRAND;
    this.p = Build.TIME;
    this.q = Build.MANUFACTURER;
    this.r = Build.ID;
    this.s = Build.DEVICE;
    this.t = b.b(paramContext);
    this.u = b.a(paramContext);
    this.v = b.p(paramContext);
    this.w = "Android";
    this.x = "4.6.2";
    this.y = b.i(paramContext);
    String[] arrayOfString1 = b.j(paramContext);
    this.z = arrayOfString1[0];
    this.A = arrayOfString1[1];
    String[] arrayOfString2 = b.e(paramContext);
    this.B = arrayOfString2[0];
    this.C = arrayOfString2[1];
    this.D = b.n(paramContext);
  }

  public final void a(JSONObject paramJSONObject)
  {
    paramJSONObject.put("appkey", this.a);
    paramJSONObject.put("device_id", this.c);
    paramJSONObject.put("idmd5", this.d);
    if (this.b != null)
      paramJSONObject.put("channel", this.b);
    if (this.e != null)
      paramJSONObject.put("mc", this.e);
    if (this.f > 0L)
      paramJSONObject.put("req_time", this.f);
    if (this.g != null)
      paramJSONObject.put("device_model", this.g);
    if (this.h != null)
      paramJSONObject.put("os", this.h);
    if (this.i != null)
      paramJSONObject.put("os_version", this.i);
    if (this.j != null)
      paramJSONObject.put("resolution", this.j);
    if (this.k != null)
      paramJSONObject.put("cpu", this.k);
    if (this.l != null)
      paramJSONObject.put("gpu_vender", this.l);
    if (this.m != null)
      paramJSONObject.put("gpu_vender", this.m);
    if (this.n != null)
      paramJSONObject.put("device_board", this.n);
    if (this.o != null)
      paramJSONObject.put("device_brand", this.o);
    if (this.p > 0L)
      paramJSONObject.put("device_manutime", this.p);
    if (this.q != null)
      paramJSONObject.put("device_manufacturer", this.q);
    if (this.r != null)
      paramJSONObject.put("device_manuid", this.r);
    if (this.s != null)
      paramJSONObject.put("device_name", this.s);
    if (this.t != null)
      paramJSONObject.put("app_version", this.t);
    if (this.u != null)
      paramJSONObject.put("version_code", this.u);
    if (this.v != null)
      paramJSONObject.put("package_name", this.v);
    paramJSONObject.put("sdk_type", this.w);
    paramJSONObject.put("sdk_version", this.x);
    paramJSONObject.put("timezone", this.y);
    if (this.z != null)
      paramJSONObject.put("country", this.z);
    if (this.A != null)
      paramJSONObject.put("language", this.A);
    if (this.B != null)
      paramJSONObject.put("access", this.B);
    if (this.C != null)
      paramJSONObject.put("access_subtype", this.C);
    if (this.D != null)
      paramJSONObject.put("carrier", this.D);
    if (this.E != null)
      paramJSONObject.put("wrapper_type", this.E);
    if (this.F != null)
      paramJSONObject.put("wrapper_version", this.F);
  }

  public final boolean a()
  {
    if (this.a == null)
    {
      Log.e("MobclickAgent", "missing appkey ");
      return false;
    }
    if ((this.c == null) || (this.d == null))
    {
      Log.e("MobclickAgent", "missing device id");
      return false;
    }
    return true;
  }

  public final boolean b()
  {
    return (this.a != null) && (this.c != null);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.umeng.a.a.f
 * JD-Core Version:    0.6.2
 */