package com.b;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.c.k;
import java.io.Serializable;

final class h
  implements r
{
  h(g paramg)
  {
  }

  public final void a(int paramInt1, int paramInt2, float paramFloat)
  {
    int i = 20;
    Object localObject = null;
    switch (paramInt2)
    {
    default:
      i = 0;
    case 3:
    case 0:
    case 1:
    case 2:
    case 4:
    case 5:
    }
    while (true)
    {
      if ((localObject != null) && (Math.abs(i - g.b(this.a)) >= 10))
      {
        g.a(this.a, i);
        Intent localIntent = new Intent();
        localIntent.setAction("com.way.update");
        localIntent.putExtra("message", (Serializable)localObject);
        g.c(this.a).sendBroadcast(localIntent);
        Log.d("send rate", ":" + i);
      }
      return;
      g.a(this.a, 0);
      i = (int)(10.0F * paramFloat);
      localObject = new k();
      ((k)localObject).a(g.a(this.a), i);
      continue;
      if (paramInt1 != 3)
        break;
      localObject = new k();
      ((k)localObject).a(g.a(this.a), i);
      continue;
      if (paramInt1 != 1)
        break;
      i = 20 + (int)(60.0F * paramFloat);
      localObject = new k();
      ((k)localObject).a(g.a(this.a), i);
      continue;
      if (paramInt1 != 3)
        break;
      localObject = new k();
      ((k)localObject).a(g.a(this.a), 90);
      i = 90;
      continue;
      localObject = new k();
      ((k)localObject).a(g.a(this.a), 95);
      i = 95;
      continue;
      i = -100;
      localObject = new k();
      ((k)localObject).a(g.a(this.a));
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.b.h
 * JD-Core Version:    0.6.2
 */