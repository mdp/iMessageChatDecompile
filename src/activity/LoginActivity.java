package activity;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.Toast;
import com.b.aa;
import com.b.i;
import com.c.c;
import com.c.l;
import com.c.p;

public class LoginActivity extends MyActivity
  implements View.OnClickListener
{
  private static int A;
  private static long B;
  public static int a;
  private aa C;
  private boolean D = false;
  private final long E = 30000L;
  private Handler F = new ba(this);
  private Dialog G = null;
  private Button m;
  private Button n;
  private Button o;
  private Button p;
  private EditText q;
  private EditText r;
  private boolean s = false;
  private boolean t = false;
  private ProgressBar u;
  private int v = 0;
  private boolean w = false;
  private String x;
  private boolean y = false;
  private String z;

  private void a(Context paramContext)
  {
    new AlertDialog.Builder(paramContext).setTitle(this.b.getString(2131165301)).setMessage(this.b.getString(2131165302)).setPositiveButton(this.b.getString(2131165303), new bf(this)).setNegativeButton(this.b.getString(2131165252), null).create().show();
  }

  public static void b(int paramInt)
  {
    A = paramInt;
    B = System.currentTimeMillis();
  }

  private boolean h()
  {
    NetworkInfo[] arrayOfNetworkInfo = ((ConnectivityManager)getApplicationContext().getSystemService("connectivity")).getAllNetworkInfo();
    if (arrayOfNetworkInfo != null);
    for (int i = 0; ; i++)
    {
      if (i >= arrayOfNetworkInfo.length)
        return false;
      if (arrayOfNetworkInfo[i].getState() == NetworkInfo.State.CONNECTED)
        return true;
    }
  }

  public final void a()
  {
  }

  public final void a(byte paramByte)
  {
  }

  public final void a(int paramInt)
  {
    if ((this.G != null) && (this.G.isShowing()) && (paramInt > 0))
      this.u.setProgress(paramInt);
  }

  public final void b()
  {
    new AlertDialog.Builder(this.b).setTitle(this.b.getString(2131165335)).setMessage(this.b.getString(2131165336)).setPositiveButton(this.b.getString(2131165251), new bb(this)).setNegativeButton(this.b.getString(2131165252), new bc(this)).create().show();
  }

  public final void b(byte paramByte)
  {
    String str2;
    if (!this.t)
    {
      this.t = true;
      a = -1;
      if (!isFinishing());
      switch (paramByte)
      {
      default:
        if (paramByte == 0)
        {
          this.D = true;
          String str1 = this.h.a();
          str2 = p.a(this);
          if ((str1 != null) && (str1.equals(str2)))
            break label469;
          this.g.b(true);
          this.h.c(str2);
          this.h.a(true);
          startActivityForResult(new Intent(this, IntroduceActivity.class), 1118209);
        }
        break;
      case 0:
      case 2:
      case 3:
      case 6:
      case 10:
      case 1:
      case 112:
      }
    }
    while (true)
    {
      if ((!isFinishing()) && (this.G != null) && (this.G.isShowing()))
        this.G.dismiss();
      return;
      Toast.makeText(getApplicationContext(), this.b.getString(2131165305), 0).show();
      break;
      if (this.v >= 2)
      {
        this.v = 0;
        new AlertDialog.Builder(this).setTitle(this.b.getString(2131165301)).setMessage(this.b.getString(2131165304)).setPositiveButton(this.b.getString(2131165251), new bg(this)).setNegativeButton(this.b.getString(2131165252), null).create().show();
        break;
      }
      this.v = (1 + this.v);
      c.a(this.b, this.b.getString(2131165202), this.b.getString(2131165306));
      break;
      c.a(this.b, this.b.getString(2131165202), this.b.getString(2131165307));
      break;
      c.a(this.b, this.b.getString(2131165202), this.b.getString(2131165308));
      break;
      c.a(this.b, this.b.getString(2131165202), this.b.getString(2131165309));
      break;
      c.a(this.b, this.b.getString(2131165202), this.b.getString(2131165310));
      break;
      label469: this.g.b(false);
      this.h.c(str2);
      this.h.a(true);
      startActivityForResult(new Intent(this, FriendListActivity.class), 1118209);
    }
  }

  public final void c()
  {
    new AlertDialog.Builder(this.b).setTitle(this.b.getString(2131165335)).setMessage(this.z).setPositiveButton(this.b.getString(2131165251), new bd(this)).setNegativeButton(this.b.getString(2131165252), new be(this)).create().show();
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default:
    case 1118209:
    }
    String str;
    do
    {
      do
        return;
      while (paramIntent == null);
      str = (String)paramIntent.getSerializableExtra("status");
    }
    while ((str == null) || (!str.equals("EXIT")));
    Intent localIntent = new Intent();
    localIntent.putExtra("status", "EXIT");
    setResult(-1, localIntent);
    finish();
  }

  public void onBackPressed()
  {
    stopService(new Intent(this, GetMsgService.class));
    this.g.a(false);
    g();
    finish();
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    case 2131427439:
    case 2131427440:
    case 2131427441:
    case 2131427442:
    default:
      return;
    case 2131427444:
      Intent localIntent2 = new Intent();
      localIntent2.setClass(this, RegisterActivity.class);
      startActivity(localIntent2);
      return;
    case 2131427443:
      if (!h())
      {
        a(this);
        return;
      }
      String str2 = this.q.getText().toString();
      String str3 = this.r.getText().toString();
      if ((str2.length() == 0) || (str3.length() == 0))
      {
        c.a(this, this.b.getString(2131165202), this.b.getString(2131165298));
        return;
      }
      if (this.G != null)
      {
        this.G.dismiss();
        this.G = null;
      }
      this.G = c.a(this, this.b.getString(2131165297));
      this.u = ((ProgressBar)this.G.findViewById(2131427397));
      this.u.setMax(100);
      this.G.show();
      this.h.a(str2);
      this.h.b(str3);
      l locall = this.g.h();
      locall.a(str2);
      locall.b(str3);
      this.t = false;
      this.h.e(str2);
      this.g.b().b();
      this.D = false;
      A = 0;
      B = System.currentTimeMillis();
      if (this.C != null)
        this.C.c();
      this.C = new aa(A, B, 30000L, this.F);
      this.C.start();
      return;
    case 2131427438:
      g();
      finish();
      return;
    case 2131427445:
    }
    String str1 = this.b.getString(2131165188);
    Intent localIntent1 = new Intent("android.intent.action.VIEW");
    localIntent1.setData(Uri.parse(str1));
    startActivity(localIntent1);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903073);
    a = -1;
    new c.a(this, this.F).start();
    this.m = ((Button)findViewById(2131427444));
    this.m.setOnClickListener(this);
    this.n = ((Button)findViewById(2131427443));
    this.n.setOnClickListener(this);
    this.o = ((Button)findViewById(2131427445));
    this.o.setOnClickListener(this);
    this.p = ((Button)findViewById(2131427438));
    this.p.setOnClickListener(this);
    this.q = ((EditText)findViewById(2131427441));
    this.r = ((EditText)findViewById(2131427442));
    String str1 = this.h.b();
    String str2 = this.h.c();
    this.h.a(false);
    this.q.setText(str1);
    this.r.setText(str2);
  }

  public void onPause()
  {
    super.onPause();
    com.umeng.a.a.a(this.b);
  }

  protected void onResume()
  {
    super.onResume();
    com.umeng.a.a.b(this.b);
    if (!h())
      a(this);
    Log.d("LoginActivity", " Status " + a);
    if (a != -1)
      b((byte)a);
    if (this.w)
      b();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.LoginActivity
 * JD-Core Version:    0.6.2
 */