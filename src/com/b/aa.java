package com.b;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;

public final class aa extends Thread
{
  private boolean a = true;
  private int b;
  private long c;
  private long d;
  private Handler e;

  public aa(int paramInt, long paramLong1, long paramLong2, Handler paramHandler)
  {
    this.b = paramInt;
    this.c = paramLong1;
    this.a = true;
    this.e = paramHandler;
    if (paramLong2 < 0L)
      paramLong2 = 0L;
    this.d = paramLong2;
  }

  public final int a()
  {
    return this.b;
  }

  public final long b()
  {
    return this.c;
  }

  public final void c()
  {
    this.a = false;
    try
    {
      notify();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void run()
  {
    Log.d("TimeWait", " time " + this.d);
    try
    {
      Thread.sleep(this.d);
      if (this.a)
      {
        Message localMessage = this.e.obtainMessage();
        localMessage.what = 12;
        localMessage.getData().putSerializable("msg", null);
        this.e.sendMessage(localMessage);
      }
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
        localInterruptedException.printStackTrace();
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.b.aa
 * JD-Core Version:    0.6.2
 */