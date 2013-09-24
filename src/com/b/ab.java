package com.b;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;

public final class ab extends Thread
{
  private Handler a;
  private long b = 1500L;
  private boolean c = false;

  public ab(Handler paramHandler)
  {
    this.a = paramHandler;
  }

  public final void a()
  {
    this.c = true;
  }

  public final void run()
  {
    Log.d("TimeWait", " time " + this.b);
    try
    {
      do
      {
        Thread.sleep(this.b);
        Message localMessage = this.a.obtainMessage();
        localMessage.what = 14;
        localMessage.getData().putSerializable("msg", null);
        this.a.sendMessage(localMessage);
      }
      while (!this.c);
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
 * Qualified Name:     com.b.ab
 * JD-Core Version:    0.6.2
 */