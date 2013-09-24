package com.umeng.a;

import android.content.Context;
import com.umeng.common.a;

final class b
  implements Thread.UncaughtExceptionHandler
{
  private Thread.UncaughtExceptionHandler a;
  private l b;
  private Context c;

  public final void a(Context paramContext)
  {
    if (Thread.getDefaultUncaughtExceptionHandler() == this)
      return;
    this.c = paramContext.getApplicationContext();
    this.a = Thread.getDefaultUncaughtExceptionHandler();
    Thread.setDefaultUncaughtExceptionHandler(this);
  }

  public final void a(l paraml)
  {
    this.b = paraml;
  }

  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    if (paramThrowable == null)
      a.d("MobclickAgent", "Exception is null in handleException");
    while (true)
    {
      if (this.a != null)
        this.a.uncaughtException(paramThread, paramThrowable);
      return;
      this.b.a(this.c, paramThrowable);
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.umeng.a.b
 * JD-Core Version:    0.6.2
 */