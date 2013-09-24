package activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.c.c;
import com.c.g;
import com.c.h;
import com.c.l;

public class AddToContactActivity extends MyActivity
  implements View.OnClickListener
{
  private l a;
  private Button m;
  private Button n;
  private Button o;
  private Button p;
  private ImageView q;
  private TextView r;
  private EditText s;
  private Button t;
  private Button u;
  private Button v;
  private int[] w = { 2130838440, 2130838409, 2130838410, 2130838411, 2130838412, 2130838413, 2130838414, 2130838415, 2130838416, 2130838417 };

  private void b()
  {
    this.m.setVisibility(4);
    this.o.setVisibility(4);
    this.p.setVisibility(0);
    this.n.setVisibility(0);
    String str = this.r.getText().toString();
    this.r.setVisibility(4);
    this.s.setText(str);
    this.s.setVisibility(0);
  }

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

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    case 2131427334:
    case 2131427337:
    case 2131427338:
    case 2131427339:
    case 2131427340:
    default:
      return;
    case 2131427332:
      finish();
      return;
    case 2131427333:
      finish();
      return;
    case 2131427336:
      String str = this.s.getText().toString();
      if (str.length() == 0)
      {
        c.a(this, getString(2131165213), getString(2131165214));
        return;
      }
      z localz = new z(this.a.a(), str, 0);
      this.c.a(localz);
      finish();
      return;
    case 2131427335:
      b();
      return;
    case 2131427341:
    }
    Intent localIntent = new Intent();
    localIntent.setClass(this, NewMessageActivity.class);
    localIntent.putExtra("touser", this.a.a());
    startActivity(localIntent);
    finish();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903041);
    this.a = ((l)getIntent().getSerializableExtra("user"));
    this.m = ((Button)findViewById(2131427332));
    this.m.setOnClickListener(this);
    this.n = ((Button)findViewById(2131427333));
    this.n.setOnClickListener(this);
    this.o = ((Button)findViewById(2131427335));
    this.o.setOnClickListener(this);
    this.p = ((Button)findViewById(2131427336));
    this.p.setOnClickListener(this);
    this.t = ((Button)findViewById(2131427340));
    this.t.setOnClickListener(this);
    this.t.setText(this.a.a());
    this.u = ((Button)findViewById(2131427341));
    this.u.setOnClickListener(this);
    this.v = ((Button)findViewById(2131427342));
    this.v.setOnClickListener(this);
    this.q = ((ImageView)findViewById(2131427337));
    this.r = ((TextView)findViewById(2131427338));
    this.s = ((EditText)findViewById(2131427339));
    z localz = this.c.b(this.a.a());
    String str1;
    if (localz == null)
    {
      this.q.setImageResource(this.w[0]);
      this.r.setText("");
      this.s.setText("");
      str1 = this.a.a();
      b();
    }
    while (true)
    {
      this.m.setText(g.a(str1, this.m.getPaint(), 150.0F * h.a / 480.0F));
      return;
      this.q.setImageResource(this.w[localz.e()]);
      str1 = localz.b();
      this.r.setText(localz.b());
      this.s.setText(localz.b());
      this.m.setVisibility(0);
      this.o.setVisibility(0);
      this.p.setVisibility(4);
      this.n.setVisibility(4);
      String str2 = this.s.getText().toString();
      this.s.setVisibility(4);
      this.r.setText(str2);
      this.r.setVisibility(0);
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
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
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.AddToContactActivity
 * JD-Core Version:    0.6.2
 */