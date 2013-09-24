package com.b;

import android.util.Log;
import com.c.b;
import com.c.j;
import e.c;

public final class n extends Thread
{
  private boolean b = true;

  public n(m paramm)
  {
  }

  public final void a(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }

  public final void run()
  {
    while (true)
      try
      {
        boolean bool = this.b;
        if (!bool)
        {
          Log.d("Heart", "Heart Over");
          return;
        }
        Log.d("Heart", "Heart Beat");
        j localj1 = new j();
        byte[] arrayOfByte1 = new byte[11];
        arrayOfByte1[0] = 8;
        arrayOfByte1[4] = 5;
        arrayOfByte1[5] = 4;
        arrayOfByte1[6] = 1;
        arrayOfByte1[8] = 2;
        arrayOfByte1[9] = 1;
        arrayOfByte1[10] = 44;
        localj1.a(new b(arrayOfByte1, 11));
        m.a(this.a).b(localj1);
        Thread.sleep(120000L);
        m.a(this.a).b(localj1);
        j localj2 = new j();
        byte[] arrayOfByte2 = c.l;
        localj2.a(new b(arrayOfByte2, arrayOfByte2.length));
        m.b(this.a).a(localj2);
        Thread.sleep(120000L);
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.b.n
 * JD-Core Version:    0.6.2
 */