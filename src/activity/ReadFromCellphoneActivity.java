package activity;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.Spinner;
import com.b.v;

public class ReadFromCellphoneActivity extends MyActivity
  implements View.OnClickListener
{
  private Button a;
  private Button m;
  private Button n;
  private ProgressBar o;
  private Spinner p;
  private ArrayAdapter q;
  private String[] r;
  private String[] s;
  private String t;
  private v u;

  public final void a()
  {
  }

  public final void a(byte paramByte)
  {
  }

  public final void a(int paramInt)
  {
  }

  public final void b(byte paramByte)
  {
  }

  public final void d()
  {
    this.p.setClickable(true);
    this.m.setText(getString(2131165353));
    this.m.setClickable(true);
    this.o.setVisibility(4);
    this.n.setVisibility(4);
  }

  public final void d(int paramInt)
  {
    if (!isFinishing())
      this.o.setProgress(paramInt);
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    case 2131427468:
    case 2131427469:
    default:
    case 2131427466:
    case 2131427470:
    case 2131427467:
    }
    do
    {
      return;
      finish();
      return;
      if (this.h.f() != 2)
      {
        new AlertDialog.Builder(this).setTitle(this.b.getString(2131165249)).setMessage(this.b.getString(2131165287)).setPositiveButton(this.b.getString(2131165251), new bw(this)).setNegativeButton(this.b.getString(2131165252), null).create().show();
        return;
      }
      this.m.setText(getString(2131165354));
      this.m.setClickable(false);
      this.p.setClickable(false);
      this.n.setVisibility(0);
      this.o.setVisibility(0);
      this.u = new v(this.b, this.t);
      this.u.start();
      return;
    }
    while (this.u == null);
    this.u.a();
    this.u = null;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903078);
    this.a = ((Button)findViewById(2131427466));
    this.a.setOnClickListener(this);
    this.m = ((Button)findViewById(2131427470));
    this.m.setOnClickListener(this);
    this.n = ((Button)findViewById(2131427467));
    this.n.setOnClickListener(this);
    this.o = ((ProgressBar)findViewById(2131427469));
    this.o.setMax(100);
    this.p = ((Spinner)findViewById(2131427468));
    int i = this.g.l();
    this.s = getResources().getStringArray(2131034115);
    this.r = getResources().getStringArray(2131034114);
    this.q = new ArrayAdapter(this, 17367048, this.r);
    this.q.setDropDownViewResource(17367049);
    this.p.setAdapter(this.q);
    this.p.setOnItemSelectedListener(new bv(this));
    if (i < 0)
    {
      this.m.setText(getString(2131165353));
      this.m.setClickable(true);
      this.n.setVisibility(4);
      this.o.setVisibility(4);
      this.p.setClickable(true);
      return;
    }
    this.m.setText(getString(2131165354));
    this.m.setClickable(false);
    this.o.setVisibility(0);
    this.o.setProgress(i);
    this.p.setClickable(false);
    if ((com.c.a.g < 0) || (com.c.a.g >= this.r.length))
      com.c.a.g = 0;
    this.p.setSelection(com.c.a.g);
    this.n.setVisibility(0);
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
    int i = this.g.l();
    if (i < 0)
    {
      this.m.setText(getString(2131165353));
      this.m.setClickable(true);
      this.o.setVisibility(4);
      this.p.setClickable(true);
      return;
    }
    this.m.setText(getString(2131165354));
    this.m.setClickable(false);
    this.o.setVisibility(0);
    this.o.setProgress(i);
    this.p.setClickable(false);
    if ((com.c.a.g < 0) || (com.c.a.g >= this.r.length))
      com.c.a.g = 0;
    this.p.setSelection(com.c.a.g);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.ReadFromCellphoneActivity
 * JD-Core Version:    0.6.2
 */