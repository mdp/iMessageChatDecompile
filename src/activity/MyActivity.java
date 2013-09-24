package activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.a.d;
import com.a.f;
import com.a.g;
import com.b.i;
import com.c.h;

public abstract class MyActivity extends Activity
{
  public static int j = 0;
  private int a = 0;
  protected Context b;
  protected com.a.a c;
  protected d d;
  protected g e;
  protected f f;
  protected MyApplication g;
  protected com.d.a h;
  protected String i;
  public boolean k = false;
  protected long l;
  private BroadcastReceiver m = new bh(this);

  public abstract void a();

  public abstract void a(byte paramByte);

  public abstract void a(int paramInt);

  public abstract void b(byte paramByte);

  public void d()
  {
  }

  public void d(int paramInt)
  {
  }

  public final void g()
  {
    Intent localIntent = new Intent();
    localIntent.setAction("com.way.message");
    sendBroadcast(localIntent);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.l = System.currentTimeMillis();
    com.c.a.c = false;
    this.k = false;
    Log.d("SetisBack create", "BackFlag=" + com.c.a.c);
    Display localDisplay = getWindowManager().getDefaultDisplay();
    h.b = localDisplay.getHeight();
    h.a = localDisplay.getWidth();
    Log.d("Tel ", "width " + h.a);
    Log.d("Tel ", "height " + h.b);
    this.b = this;
    this.d = new d(this);
    this.c = new com.a.a(this);
    this.e = new g(this);
    this.f = new f(this);
    this.g = ((MyApplication)getApplicationContext());
    this.i = "";
    this.h = new com.d.a(this, "saveUser");
    i locali = this.g.b();
    if ((this.h.g()) && (!locali.a()))
    {
      this.h.a(this.a);
      this.g.b().b();
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    this.d.b();
    this.c.b();
    this.f.a();
  }

  public void onStart()
  {
    super.onStart();
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.way.message");
    localIntentFilter.addAction("com.way.update");
    localIntentFilter.addAction("com.way.querystatus");
    localIntentFilter.addAction("com.way.loginstep");
    localIntentFilter.addAction("com.way.readcellphone");
    localIntentFilter.addAction("com.way.readcellphonesuccess");
    registerReceiver(this.m, localIntentFilter);
    com.c.a.c = false;
    Log.d("SetisBack start", "BackFlag=" + com.c.a.c);
    this.k = false;
    if (j == 0)
    {
      Intent localIntent = new Intent();
      localIntent.setAction("com.common.activitystart");
      sendBroadcast(localIntent);
    }
    j = 1 + j;
  }

  protected void onStop()
  {
    super.onStop();
    j = -1 + j;
    com.c.a.c = true;
    Log.d("SetisBack stop", "BackFlag=" + com.c.a.c);
    unregisterReceiver(this.m);
    this.k = true;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.MyActivity
 * JD-Core Version:    0.6.2
 */