package activity;

import android.app.Application;
import android.app.NotificationManager;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.util.Log;
import com.a.g;
import com.b.ad;
import com.b.i;
import com.b.m;
import com.c.l;
import com.c.o;
import java.io.File;

public class MyApplication extends Application
{
  private i a;
  private com.b.d b;
  private m c;
  private ad d;
  private NotificationManager e;
  private int f = 0;
  private l g;
  private g h;
  private com.a.d i;
  private FriendListActivity j;
  private boolean k = false;
  private com.a.a l;
  private boolean m = false;
  private int n = -1;

  private String o()
  {
    PackageManager localPackageManager = getPackageManager();
    try
    {
      PackageInfo localPackageInfo2 = localPackageManager.getPackageInfo(getPackageName(), 0);
      localPackageInfo1 = localPackageInfo2;
      return localPackageInfo1.versionName;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
      {
        localNameNotFoundException.printStackTrace();
        PackageInfo localPackageInfo1 = null;
      }
    }
  }

  public final void a()
  {
    this.c.a();
    this.b.d();
    this.d.b();
  }

  public final void a(int paramInt)
  {
    this.n = paramInt;
  }

  public final void a(FriendListActivity paramFriendListActivity)
  {
    this.j = paramFriendListActivity;
  }

  public final void a(NotificationManager paramNotificationManager)
  {
    this.e = paramNotificationManager;
  }

  public final void a(com.a.a parama)
  {
    this.l = parama;
  }

  public final void a(com.a.d paramd)
  {
    this.i = paramd;
  }

  public final void a(g paramg)
  {
    this.h = paramg;
  }

  public final void a(boolean paramBoolean)
  {
    this.k = paramBoolean;
  }

  public final i b()
  {
    return this.a;
  }

  public final void b(int paramInt)
  {
    this.f -= paramInt;
  }

  public final void b(boolean paramBoolean)
  {
    this.m = paramBoolean;
  }

  public final ad c()
  {
    return this.d;
  }

  public final void c(int paramInt)
  {
    this.f = (paramInt + this.f);
  }

  public final com.b.d d()
  {
    return this.b;
  }

  public final m e()
  {
    return this.c;
  }

  public final boolean f()
  {
    return this.k;
  }

  public final void g()
  {
    this.f = 0;
  }

  public final l h()
  {
    return this.g;
  }

  public final g i()
  {
    return this.h;
  }

  public final com.a.d j()
  {
    return this.i;
  }

  public final com.a.a k()
  {
    return this.l;
  }

  public final int l()
  {
    return this.n;
  }

  public final int m()
  {
    return this.f;
  }

  public final boolean n()
  {
    return this.m;
  }

  public void onCreate()
  {
    super.onCreate();
    new com.d.a(this, "saveUser");
    try
    {
      com.c.a.a = getString(2131165195);
      com.c.a.b = getString(2131165196);
      File localFile = new File(com.c.a.a);
      if (!localFile.exists())
      {
        localFile.mkdirs();
        new File(com.c.a.b).mkdirs();
      }
      if (!new File(com.c.a.a).exists())
      {
        com.c.a.a = getString(2131165197);
        com.c.a.b = getString(2131165198);
        if (!new File(com.c.a.a).isDirectory())
        {
          new File(com.c.a.a).mkdirs();
          new File(com.c.a.b).mkdirs();
        }
      }
      Log.d("FileDir", com.c.a.a);
      this.a = new i(this, getString(2131165186), getResources().getInteger(2131230720));
      this.b = new com.b.d(this, this.a);
      this.d = new ad(this);
      this.c = new m(this, this.a, this.d);
      this.g = new l();
      o.a(this);
      this.k = false;
      com.c.a.e = o();
      startService(new Intent(this, GetMsgService.class));
      return;
    }
    catch (SecurityException localSecurityException)
    {
      while (true)
        localSecurityException.printStackTrace();
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.MyApplication
 * JD-Core Version:    0.6.2
 */