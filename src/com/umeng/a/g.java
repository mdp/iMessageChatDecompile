package com.umeng.a;

import android.content.Context;
import com.umeng.common.a;

final class g
  implements Runnable
{
  private Context b;

  g(f paramf, Context paramContext)
  {
    this.b = paramContext.getApplicationContext();
  }

  public final void run()
  {
    try
    {
      synchronized (f.a(this.a))
      {
        this.a.c.a(this.b);
        return;
      }
    }
    catch (Exception localException2)
    {
      a.b("MobclickAgent", "Exception occurred in ReportMessageHandler", localException2);
      return;
    }
    catch (Error localError)
    {
      a.b("MobclickAgent", "Error : " + localError.getMessage());
      try
      {
        m.d(this.b);
        return;
      }
      catch (Exception localException1)
      {
        localException1.printStackTrace();
      }
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.umeng.a.g
 * JD-Core Version:    0.6.2
 */