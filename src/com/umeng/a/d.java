package com.umeng.a;

import android.content.Context;
import com.umeng.common.a;

final class d extends Thread
{
  private final Object b = new Object();
  private Context c;
  private int d;

  d(c paramc, Context paramContext, int paramInt)
  {
    this.c = paramContext.getApplicationContext();
    this.d = paramInt;
  }

  public final void run()
  {
    while (true)
    {
      try
      {
        synchronized (this.b)
        {
          switch (this.d)
          {
          default:
            return;
          case 0:
            c.a(this.a, this.c);
          case 1:
          }
        }
      }
      catch (Exception localException)
      {
        a.b("MobclickAgent", "Exception occurred in invokehander.", localException);
        return;
      }
      c.b(this.a, this.c);
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.umeng.a.d
 * JD-Core Version:    0.6.2
 */