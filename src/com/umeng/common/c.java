package com.umeng.common;

import android.content.Context;
import java.lang.reflect.Field;

public class c
{
  private static final String a = c.class.getName();
  private static c b = null;
  private static String c = null;
  private static Class d = null;
  private static Class e = null;
  private static Class f = null;
  private static Class g = null;
  private static Class h = null;
  private static Class i = null;
  private static Class j = null;

  private c(String paramString)
  {
    try
    {
      e = Class.forName(paramString + ".R$drawable");
    }
    catch (ClassNotFoundException localClassNotFoundException6)
    {
      try
      {
        f = Class.forName(paramString + ".R$layout");
      }
      catch (ClassNotFoundException localClassNotFoundException6)
      {
        try
        {
          d = Class.forName(paramString + ".R$id");
        }
        catch (ClassNotFoundException localClassNotFoundException6)
        {
          try
          {
            g = Class.forName(paramString + ".R$anim");
          }
          catch (ClassNotFoundException localClassNotFoundException6)
          {
            try
            {
              h = Class.forName(paramString + ".R$style");
            }
            catch (ClassNotFoundException localClassNotFoundException6)
            {
              try
              {
                i = Class.forName(paramString + ".R$string");
              }
              catch (ClassNotFoundException localClassNotFoundException6)
              {
                try
                {
                  while (true)
                  {
                    j = Class.forName(paramString + ".R$array");
                    return;
                    localClassNotFoundException1 = localClassNotFoundException1;
                    a.b(a, localClassNotFoundException1.getMessage());
                    continue;
                    localClassNotFoundException2 = localClassNotFoundException2;
                    a.b(a, localClassNotFoundException2.getMessage());
                    continue;
                    localClassNotFoundException3 = localClassNotFoundException3;
                    a.b(a, localClassNotFoundException3.getMessage());
                    continue;
                    localClassNotFoundException4 = localClassNotFoundException4;
                    a.b(a, localClassNotFoundException4.getMessage());
                    continue;
                    localClassNotFoundException5 = localClassNotFoundException5;
                    a.b(a, localClassNotFoundException5.getMessage());
                    continue;
                    localClassNotFoundException6 = localClassNotFoundException6;
                    a.b(a, localClassNotFoundException6.getMessage());
                  }
                }
                catch (ClassNotFoundException localClassNotFoundException7)
                {
                  a.b(a, localClassNotFoundException7.getMessage());
                }
              }
            }
          }
        }
      }
    }
  }

  private static int a(Class paramClass, String paramString)
  {
    if (paramClass == null)
    {
      a.b(a, "getRes(null," + paramString + ")");
      throw new IllegalArgumentException("ResClass is not initialized. Please make sure you have added neccessary resources. Also make sure you have " + c + ".R$* configured in obfuscation. field=" + paramString);
    }
    try
    {
      int k = paramClass.getField(paramString).getInt(paramString);
      return k;
    }
    catch (Exception localException)
    {
      a.b(a, "getRes(" + paramClass.getName() + ", " + paramString + ")");
      a.b(a, "Error getting resource. Make sure you have copied all resources (res/) from SDK to your project. ");
      a.b(a, localException.getMessage());
    }
    return -1;
  }

  public static int a(String paramString)
  {
    return a(d, paramString);
  }

  public static c a(Context paramContext)
  {
    try
    {
      if (b == null)
        if (c == null)
          break label47;
      label47: String str;
      for (Object localObject2 = c; ; localObject2 = str)
      {
        c = (String)localObject2;
        b = new c(c);
        c localc = b;
        return localc;
        str = paramContext.getPackageName();
      }
    }
    finally
    {
    }
  }

  public static int b(String paramString)
  {
    return a(e, paramString);
  }

  public static int c(String paramString)
  {
    return a(f, paramString);
  }

  public static int d(String paramString)
  {
    return a(i, paramString);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.umeng.common.c
 * JD-Core Version:    0.6.2
 */