package activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;
import com.a.d;
import com.c.c;
import com.c.j;
import com.c.k;
import com.c.q;
import com.d.a;
import java.io.PrintStream;

final class bh extends BroadcastReceiver
{
  bh(MyActivity paramMyActivity)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    this.a.b = paramContext;
    String str1 = this.a.h.b();
    String str2 = paramIntent.getAction();
    j localj;
    if (str2.equals("com.way.message"))
    {
      localj = (j)paramIntent.getSerializableExtra("message");
      if (localj != null)
      {
        System.out.println("MyActivity:" + localj);
        switch (localj.i())
        {
        default:
        case 3:
        case 4:
        }
      }
    }
    label608: 
    do
    {
      do
      {
        k localk;
        do
        {
          return;
          switch (localj.j()[9])
          {
          default:
          case 13:
          case 14:
          case 20:
          }
          while (true)
          {
            this.a.b(localj.j()[9]);
            this.a.d.d(str1);
            this.a.a((byte)-1);
            return;
            if (!this.a.isFinishing())
            {
              c.a(this.a.b, this.a.b.getString(2131165202), this.a.b.getString(2131165311));
              continue;
              if (!this.a.isFinishing())
              {
                c.a(this.a.b, this.a.b.getString(2131165202), this.a.b.getString(2131165312));
                continue;
                if (!this.a.isFinishing())
                  c.a(this.a.b, this.a.b.getString(2131165202), this.a.b.getString(2131165316));
              }
            }
          }
          switch (localj.j()[6])
          {
          case 3:
          default:
            return;
          case 2:
          case 4:
          }
          String str3;
          String str4;
          do
          {
            int i1 = localj.n();
            if (localj.j()[(i1 - 1)] == 0)
              break label608;
            this.a.a(localj.j()[6]);
            return;
            q localq = localj.c();
            if (localq == null)
              break;
            str3 = localq.a;
            str4 = localq.b;
          }
          while (this.a.i.equals(str3));
          String str5 = "";
          int n;
          for (int k = 0; ; k = n + 8)
          {
            if (k >= str4.length());
            int m;
            do
            {
              String str6 = str5 + str4.substring(k);
              if (this.a.isFinishing())
                break;
              Toast.makeText(this.a.b, str6, 0).show();
              break;
              m = str4.indexOf("STARTFILE:", k);
              n = str4.indexOf(":ENDFILE", k);
            }
            while ((m == -1) || (n == -1));
            str5 = new StringBuilder(String.valueOf(str5)).append(str4.substring(k, m)).toString() + str4.substring(m + 10, n);
          }
          this.a.a();
          return;
          this.a.g();
          return;
          if (!str2.equals("com.way.update"))
            break;
          localk = (k)paramIntent.getSerializableExtra("message");
        }
        while (localk == null);
        switch (localk.a())
        {
        default:
          return;
        case 0:
          this.a.d.d(str1);
          this.a.a((byte)-1);
          return;
        case 2:
          this.a.d.b(str1, localk.c(), 7);
          this.a.a((byte)-1);
          return;
        case 1:
        }
        this.a.d.a(str1, localk.c(), localk.b());
        this.a.a();
        return;
        if (!str2.equals("com.way.querystatus"))
          break;
      }
      while ((Integer.parseInt((String)paramIntent.getSerializableExtra("message")) != 5032) || (this.a.isFinishing()));
      c.a(this.a.b, this.a.b.getString(2131165314), this.a.b.getString(2131165315));
      return;
      if (str2.equals("com.way.loginstep"))
      {
        int j = Integer.parseInt((String)paramIntent.getSerializableExtra("message"));
        this.a.a(j);
        return;
      }
      if (str2.equals("com.way.readcellphone"))
      {
        int i = Integer.parseInt((String)paramIntent.getSerializableExtra("message"));
        this.a.d(i);
        return;
      }
    }
    while (!str2.equals("com.way.readcellphonesuccess"));
    if (!this.a.isFinishing())
      Toast.makeText(this.a.b, this.a.b.getString(2131165275), 1).show();
    this.a.d();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.bh
 * JD-Core Version:    0.6.2
 */