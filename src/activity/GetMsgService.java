package activity;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.IBinder;
import android.util.Log;
import com.a.c;
import com.a.f;
import com.a.g;
import com.b.ac;
import com.b.ad;
import com.b.af;
import com.b.ag;
import com.b.i;
import com.c.l;
import com.d.a;

public class GetMsgService extends Service
{
  private MyApplication a;
  private i b;
  private com.b.d c;
  private ad d;
  private NotificationManager e;
  private boolean f = false;
  private Notification g;
  private Context h = this;
  private a i;
  private com.a.d j;
  private g k;
  private f l;
  private l m;
  private c n;
  private BroadcastReceiver o = new aw(this);
  private Handler p = new ax(this);

  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public void onCreate()
  {
    super.onCreate();
    Log.d("MsgService", "Create");
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.common.activitystart");
    registerReceiver(this.o, localIntentFilter);
    this.e = ((NotificationManager)getSystemService("notification"));
    this.a = ((MyApplication)getApplicationContext());
    this.m = this.a.h();
    this.i = new a(this, "saveUser");
    this.b = this.a.b();
    this.c = this.a.d();
    this.d = this.a.c();
    this.a.a(this.e);
  }

  public void onDestroy()
  {
    super.onDestroy();
    Log.d("MsgService", "destroy");
    if (this.j != null)
    {
      this.j.b();
      this.j = null;
    }
    if (this.l != null)
    {
      this.l.a();
      this.l = null;
    }
    if (this.n != null)
    {
      this.n.a();
      this.n = null;
    }
    unregisterReceiver(this.o);
    this.e.cancel(2321);
    this.a.a(null);
    this.a.a();
    this.a.a(false);
    this.b.a(null);
    this.d.a(null, null);
    if (this.b != null)
      this.b.e();
    if (this.d != null);
  }

  public void onStart(Intent paramIntent, int paramInt)
  {
    super.onStart(paramIntent, paramInt);
    Log.d("MsgService", "start");
    this.a.a(true);
    this.i = new a(getApplicationContext(), "saveUser");
    this.i.b(false);
    this.j = new com.a.d(this);
    this.k = new g(this);
    this.l = new f(this);
    this.n = new c(this);
    this.j.d(this.i.b());
    ag localag = new ag(this.h, this.p, this.a);
    localag.a(this.j, this.k, this.l, this.n);
    this.b.a(localag);
    af localaf = new af(this.h, this.p, this.a);
    localaf.a(this.j, this.k, this.l, this.n);
    this.c.a(localaf);
    this.d.a(new ac(this.a, false), new ac(this.a, true));
    this.b.a(this.i.b(), this.l);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.GetMsgService
 * JD-Core Version:    0.6.2
 */