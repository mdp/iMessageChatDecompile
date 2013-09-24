package com.umeng.a;

import android.content.Context;
import com.umeng.a.b.b;
import java.util.HashMap;

public final class a
{
  private static final c a = new c();
  private static final b b;

  static
  {
    b localb = new b();
    b = localb;
    localb.a(a);
  }

  public static void a(Context paramContext)
  {
    a.a(paramContext);
  }

  public static void a(Context paramContext, String paramString, HashMap paramHashMap)
  {
    a.a(paramContext, paramString, paramHashMap);
  }

  public static void b(Context paramContext)
  {
    a.b(paramContext);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.umeng.a.a
 * JD-Core Version:    0.6.2
 */