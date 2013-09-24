package com.umeng.a;

import android.content.Context;
import android.util.Log;
import com.umeng.a.a.a;
import com.umeng.a.a.d;
import com.umeng.a.a.h;
import com.umeng.a.a.i;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;

public final class e
{
  private i a = new i();
  private HashMap b = new HashMap();
  private HashMap c = new HashMap();
  private int d = 10;

  public final int a()
  {
    return this.a.b();
  }

  public final void a(Context paramContext)
  {
    if (this.a.b() <= 0)
      return;
    String str = com.umeng.common.b.a(paramContext);
    JSONObject localJSONObject = m.a(paramContext, str);
    i locali = new i();
    if (localJSONObject != null)
      locali.b(localJSONObject);
    try
    {
      locali.a(this.a);
      this.a.c();
      m.a(paramContext, locali, str);
      return;
    }
    finally
    {
    }
  }

  public final void a(d paramd)
  {
    try
    {
      this.a.a(paramd);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(h paramh)
  {
    try
    {
      this.a.a(paramh);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(com.umeng.a.a.m paramm)
  {
    try
    {
      this.a.a(paramm);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(String paramString1, String paramString2, HashMap paramHashMap)
  {
    try
    {
      i locali = this.a;
      a locala = new a(paramString2, paramHashMap);
      if (locala.a())
      {
        Iterator localIterator = locali.e.iterator();
        while (localIterator.hasNext())
        {
          com.umeng.a.a.b localb = (com.umeng.a.a.b)localIterator.next();
          if (localb.a.equals(paramString1))
            localb.b.add(locala);
        }
      }
      while (true)
      {
        return;
        locali.e.add(new com.umeng.a.a.b(paramString1, locala));
      }
    }
    finally
    {
    }
  }

  public final void b(Context paramContext)
  {
    JSONObject localJSONObject = m.a(paramContext, com.umeng.common.b.a(paramContext));
    if ((localJSONObject == null) || (localJSONObject.length() == 0))
      return;
    i locali = new i();
    locali.b(localJSONObject);
    try
    {
      this.a.a(locali);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean b()
  {
    return this.a.b() > this.d;
  }

  public final boolean c()
  {
    return this.a.a();
  }

  public final JSONObject d()
  {
    try
    {
      localJSONObject = new JSONObject();
      this.a.a(localJSONObject);
      return localJSONObject;
    }
    catch (Exception localException)
    {
      while (true)
      {
        Log.d("MobclickAgent", "", localException);
        JSONObject localJSONObject = null;
      }
    }
    finally
    {
    }
  }

  public final void e()
  {
    try
    {
      this.a.c();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.umeng.a.e
 * JD-Core Version:    0.6.2
 */