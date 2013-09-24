package com.d;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Log;

public final class a
{
  private SharedPreferences a;
  private SharedPreferences.Editor b;

  public a(Context paramContext, String paramString)
  {
    this.a = paramContext.getSharedPreferences(paramString, 0);
    this.b = this.a.edit();
  }

  public final String a()
  {
    return this.a.getString("version", "");
  }

  public final void a(int paramInt)
  {
    this.b.putInt("linkstatus", paramInt);
    this.b.commit();
  }

  public final void a(String paramString)
  {
    this.b.putString("account", paramString);
    this.b.commit();
  }

  public final void a(boolean paramBoolean)
  {
    this.b.putBoolean("Login", paramBoolean);
    this.b.commit();
  }

  public final String b()
  {
    return this.a.getString("account", "");
  }

  public final void b(String paramString)
  {
    this.b.putString("passwd", paramString);
    this.b.commit();
  }

  public final void b(boolean paramBoolean)
  {
    this.b.putBoolean("isStart", paramBoolean);
    this.b.commit();
  }

  public final String c()
  {
    return this.a.getString("passwd", "");
  }

  public final void c(String paramString)
  {
    this.b.putString("version", paramString);
    this.b.commit();
  }

  public final void c(boolean paramBoolean)
  {
    Log.d("Set AutoLogin Flag ", paramBoolean);
    this.b.putBoolean("AutoLogin", paramBoolean);
    this.b.commit();
  }

  public final String d()
  {
    return this.a.getString("curchatuser", "");
  }

  public final void d(String paramString)
  {
    this.b.putString("curchatuser", paramString);
    this.b.commit();
  }

  public final void d(boolean paramBoolean)
  {
    this.b.putBoolean("notifynoise", paramBoolean);
    this.b.commit();
  }

  public final String e()
  {
    return this.a.getString("name", "");
  }

  public final void e(String paramString)
  {
    this.b.putString("name", paramString);
    this.b.commit();
  }

  public final void e(boolean paramBoolean)
  {
    this.b.putBoolean("notifyvibrate", paramBoolean);
    this.b.commit();
  }

  public final int f()
  {
    return this.a.getInt("linkstatus", 0);
  }

  public final void f(boolean paramBoolean)
  {
    this.b.putBoolean("notifyled", paramBoolean);
    this.b.commit();
  }

  public final boolean g()
  {
    boolean bool = this.a.getBoolean("AutoLogin", false);
    Log.d("Get AutoLogin Flag ", bool);
    return bool;
  }

  public final boolean h()
  {
    return this.a.getBoolean("notifynoise", true);
  }

  public final boolean i()
  {
    return this.a.getBoolean("notifyvibrate", false);
  }

  public final boolean j()
  {
    return this.a.getBoolean("notifyled", true);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.d.a
 * JD-Core Version:    0.6.2
 */