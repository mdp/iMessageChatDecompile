package activity;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.view.ViewPager;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.a.g;
import com.b.ab;
import com.c.l;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class FriendListActivity extends MyActivity
  implements View.OnClickListener
{
  private LinearLayout A;
  private ImageView B;
  private ImageView C;
  private ImageView D;
  private TextView E;
  private TextView F;
  private TextView G;
  private ViewPager H;
  private List I;
  private TextView J;
  private TextView K;
  private MenuInflater L;
  private boolean M = false;
  private boolean N = false;
  private String O;
  private String P;
  private int Q = 0;
  private boolean R = false;
  private ab S;
  private long T = 0L;
  private boolean U = false;
  private cp V;
  private InputMethodManager W;
  private Handler X = new ai(this);
  private final int a = 0;
  private final int m = 1;
  private int n = 0;
  private ag o;
  private ah p;
  private av q;
  private ListView r;
  private ListView s;
  private ListView t;
  private int u = 0;
  private Button v;
  private Button w;
  private Button x;
  private LinearLayout y;
  private LinearLayout z;

  private void b(String paramString)
  {
    int i = this.r.getFirstVisiblePosition();
    boolean bool = this.o.a(paramString);
    Log.d("FriendList", "readdeletemsgDB " + paramString);
    this.O = paramString;
    this.r.setAdapter(this.o.c());
    if (i >= 0)
      this.o.c().getCount();
    this.r.setSelection(this.Q);
    this.o.c().notifyDataSetChanged();
    if (!bool)
      l();
  }

  private void c(String paramString)
  {
    int i = this.r.getFirstVisiblePosition();
    boolean bool = this.o.a(paramString, this.V.b());
    this.O = paramString;
    Log.d("FriendList", "readmsgDB " + paramString);
    this.r.setAdapter(this.o.b());
    if (i >= 0)
      this.o.b().getCount();
    this.r.setSelection(this.Q);
    this.o.b().notifyDataSetChanged();
    this.o.b().notifyDataSetChanged();
    if (!bool)
    {
      this.x.setVisibility(4);
      return;
    }
    if (this.H.getCurrentItem() == 0)
      this.x.setVisibility(0);
    Log.d("FriendActivity", "Show Edit Btn");
  }

  private void h()
  {
    this.n = this.h.f();
    if (this.n == 0)
    {
      this.K.setVisibility(0);
      this.K.setText(this.b.getString(2131165276));
      return;
    }
    if (this.n == 1)
    {
      this.K.setVisibility(0);
      this.K.setText(this.b.getString(2131165277));
      return;
    }
    this.K.setVisibility(4);
  }

  private void i()
  {
    this.v.setVisibility(4);
    this.x.setVisibility(4);
    this.w.setVisibility(4);
    this.J.setText(this.b.getString(2131165280));
    this.B.setBackgroundResource(2130838534);
    this.E.setBackgroundResource(2131099660);
    this.C.setBackgroundResource(2130838531);
    this.F.setBackgroundResource(2131099660);
    this.D.setBackgroundResource(2130838537);
    this.G.setBackgroundResource(2130838533);
    this.H.setCurrentItem(2);
  }

  private void j()
  {
    this.v.setVisibility(4);
    this.x.setVisibility(4);
    this.w.setVisibility(4);
    this.J.setText(this.b.getString(2131165281));
    this.B.setBackgroundResource(2130838534);
    this.E.setBackgroundResource(2131099660);
    this.C.setBackgroundResource(2130838532);
    this.F.setBackgroundResource(2130838533);
    this.D.setBackgroundResource(2130838536);
    this.G.setBackgroundResource(2131099660);
    this.H.setCurrentItem(1);
  }

  private void k()
  {
    if (this.N)
    {
      this.v.setVisibility(4);
      this.x.setVisibility(4);
      this.w.setVisibility(0);
      this.J.setText(this.b.getString(2131165282));
      this.B.setBackgroundResource(2130838535);
      this.E.setBackgroundResource(2130838533);
      this.C.setBackgroundResource(2130838531);
      this.F.setBackgroundResource(2131099660);
      this.D.setBackgroundResource(2130838536);
      this.G.setBackgroundResource(2131099660);
      this.H.setCurrentItem(0);
      return;
    }
    if (this.o.a().size() == 1)
      this.x.setVisibility(4);
    while (true)
    {
      this.v.setVisibility(0);
      this.w.setVisibility(4);
      break;
      this.x.setVisibility(0);
      Log.d("FriendActivity", "Show Edit Btn2");
    }
  }

  private void l()
  {
    this.N = false;
    this.w.setVisibility(4);
    this.x.setVisibility(0);
    Log.d("FriendActivity", "Show Edit Btn3");
    this.v.setVisibility(0);
    b();
  }

  public final void a()
  {
  }

  public final void a(byte paramByte)
  {
    isFinishing();
    this.R = true;
  }

  public final void a(int paramInt)
  {
  }

  public final void a(String paramString)
  {
    if (this.N)
    {
      b(paramString);
      return;
    }
    this.V.b();
    c(paramString);
  }

  public final void b()
  {
    if (this.U)
      return;
    long l = System.currentTimeMillis();
    if (l - this.T < 200L)
    {
      this.R = true;
      return;
    }
    this.T = l;
    if (this.N)
    {
      b(this.O);
      return;
    }
    String str = this.O;
    this.V.b();
    c(str);
  }

  public final void b(byte paramByte)
  {
    h();
  }

  public final void c()
  {
    this.p.a(this.P, this.V.b());
    this.s.setAdapter(this.p.a());
    this.p.a().notifyDataSetChanged();
  }

  public final void d()
  {
    c();
  }

  public final void e()
  {
    new AlertDialog.Builder(this).setTitle(this.b.getString(2131165249)).setMessage(this.b.getString(2131165286)).setPositiveButton(this.b.getString(2131165251), new ar(this)).setNegativeButton(this.b.getString(2131165252), null).create().show();
  }

  public final void f()
  {
    new AlertDialog.Builder(this).setTitle(this.b.getString(2131165249)).setMessage(this.b.getString(2131165285)).setPositiveButton(this.b.getString(2131165251), new as(this)).setNegativeButton(this.b.getString(2131165252), null).create().show();
  }

  public void onBackPressed()
  {
    this.h.b(true);
    Intent localIntent = new Intent();
    localIntent.putExtra("status", "EXIT");
    setResult(-1, localIntent);
    finish();
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    case 2131427412:
    case 2131427413:
    case 2131427414:
    case 2131427415:
    case 2131427417:
    case 2131427418:
    case 2131427420:
    case 2131427421:
    default:
      return;
    case 2131427411:
      Intent localIntent = new Intent();
      localIntent.setClass(this, NewMessageActivity.class);
      startActivity(localIntent);
      return;
    case 2131427409:
      ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
      this.N = true;
      this.w.setVisibility(0);
      this.x.setVisibility(4);
      this.v.setVisibility(4);
      b();
      return;
    case 2131427410:
      l();
      return;
    case 2131427422:
      i();
      return;
    case 2131427419:
      j();
      return;
    case 2131427416:
    }
    k();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903061);
    this.W = ((InputMethodManager)getSystemService("input_method"));
    this.O = "";
    this.P = "";
    this.g.a(this.e);
    this.g.a(this.d);
    this.g.a(this.c);
    this.g.a(this);
    l locall = this.g.h();
    locall.a(this.h.e());
    this.e.a(locall);
    this.V = new cp(this, this.X);
    this.o = new ag(this.X, this);
    this.p = new ah(this.X, this);
    this.q = new av(this.X, this);
    this.L = new MenuInflater(this);
    this.J = ((TextView)findViewById(2131427408));
    this.g.h();
    this.H = ((ViewPager)findViewById(2131427414));
    this.I = new ArrayList();
    LayoutInflater localLayoutInflater = LayoutInflater.from(this);
    View localView1 = localLayoutInflater.inflate(2130903092, null);
    View localView2 = localLayoutInflater.inflate(2130903093, null);
    View localView3 = localLayoutInflater.inflate(2130903094, null);
    this.I.add(localView1);
    this.I.add(localView2);
    this.I.add(localView3);
    this.H.setAdapter(new MyPagerAdapter(this.I));
    if (this.g.n())
    {
      this.g.b(false);
      this.H.setCurrentItem(2);
    }
    while (true)
    {
      this.H.setOnPageChangeListener(new au(this));
      this.v = ((Button)findViewById(2131427411));
      this.v.setOnClickListener(this);
      this.w = ((Button)findViewById(2131427410));
      this.w.setOnClickListener(this);
      this.x = ((Button)findViewById(2131427409));
      this.x.setOnClickListener(this);
      this.y = ((LinearLayout)findViewById(2131427416));
      this.y.setOnClickListener(this);
      this.B = ((ImageView)findViewById(2131427417));
      this.z = ((LinearLayout)findViewById(2131427419));
      this.z.setOnClickListener(this);
      this.C = ((ImageView)findViewById(2131427420));
      this.A = ((LinearLayout)findViewById(2131427422));
      this.A.setOnClickListener(this);
      this.D = ((ImageView)findViewById(2131427423));
      this.E = ((TextView)findViewById(2131427418));
      this.E.getBackground().setAlpha(1);
      this.F = ((TextView)findViewById(2131427421));
      this.F.getBackground().setAlpha(0);
      this.G = ((TextView)findViewById(2131427424));
      this.G.getBackground().setAlpha(0);
      this.K = ((TextView)findViewById(2131427412));
      this.r = ((ListView)localView1.findViewById(2131427531));
      this.r.setAdapter(this.o.b());
      an localan = new an(this);
      this.r.setOnScrollListener(localan);
      this.s = ((ListView)localView2.findViewById(2131427532));
      this.s.setAdapter(this.p.a());
      this.t = ((ListView)localView3.findViewById(2131427533));
      this.t.setAdapter(this.q.a());
      this.q.b();
      this.q.a().notifyDataSetChanged();
      this.s.setClickable(true);
      this.s.setOnItemClickListener(new ao(this));
      this.s.setOnItemLongClickListener(new ap(this));
      this.S = new ab(this.X);
      this.S.start();
      return;
      this.g.b(false);
      this.H.setCurrentItem(0);
    }
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    this.L.inflate(2131361792, paramMenu);
    return super.onCreateOptionsMenu(paramMenu);
  }

  public void onDestroy()
  {
    super.onDestroy();
    this.S.a();
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
    case 2131427536:
    }
    while (true)
    {
      return super.onOptionsItemSelected(paramMenuItem);
      String str1 = this.b.getString(2131165249);
      String str2 = this.b.getString(2131165283);
      new AlertDialog.Builder(this).setTitle(str1).setMessage(str2).setPositiveButton(this.b.getString(2131165251), new at(this)).setNegativeButton(this.b.getString(2131165252), null).create().show();
    }
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
    b();
    c();
    switch (this.H.getCurrentItem())
    {
    default:
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      h();
      return;
      k();
      continue;
      j();
      continue;
      i();
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.FriendListActivity
 * JD-Core Version:    0.6.2
 */