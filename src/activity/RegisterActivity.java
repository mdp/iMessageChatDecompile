package activity;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import com.b.x;
import com.c.c;
import com.c.m;
import com.umeng.a.a;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegisterActivity extends MyActivity
  implements View.OnClickListener
{
  private TextView A;
  private EditText B;
  private TextView C;
  private EditText D;
  private TextView E;
  private EditText F;
  private TextView G;
  private DatePicker H;
  private boolean I = false;
  private String J;
  private String K;
  private String L;
  private String M;
  private String N;
  private String O;
  private String P;
  private String Q;
  private int R;
  private int S;
  private Dialog T = null;
  private Handler U = new cj(this);
  private final int a = 18;
  private String[] m;
  private Spinner n;
  private ArrayAdapter o;
  private String[] p;
  private String[] q;
  private Spinner r;
  private ArrayAdapter s;
  private Button t;
  private Button u;
  private EditText v;
  private TextView w;
  private EditText x;
  private TextView y;
  private EditText z;

  private static boolean a(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    int j = 0;
    int k = 0;
    int i1 = 0;
    int i2 = 0;
    if (j >= i)
    {
      if ((i >= 8) && (i2 != 0) && (i1 != 0) && (k != 0))
        return true;
    }
    else
    {
      if ((paramArrayOfByte[j] >= 48) && (paramArrayOfByte[j] <= 57))
        i2 = 1;
      while (true)
      {
        j++;
        break;
        if ((paramArrayOfByte[j] >= 97) && (paramArrayOfByte[j] <= 122))
          i1 = 1;
        else if ((paramArrayOfByte[j] >= 65) && (paramArrayOfByte[j] <= 90))
          k = 1;
      }
    }
    return false;
  }

  private void b()
  {
    this.J = this.v.getText().toString();
    this.K = this.x.getText().toString();
    this.L = this.z.getText().toString();
    this.M = this.B.getText().toString();
    this.N = this.D.getText().toString();
    this.P = this.F.getText().toString();
    for (int i = 0; ; i++)
    {
      if (i >= this.p.length);
      while (true)
      {
        this.R = this.H.getMonth();
        this.S = this.H.getDayOfMonth();
        return;
        if (!this.Q.equals(this.p[i]))
          break;
        this.Q = this.q[i];
      }
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
  }

  public final void b(byte paramByte)
  {
  }

  public void onClick(View paramView)
  {
    int i = 1;
    switch (paramView.getId())
    {
    default:
      return;
    case 2131427488:
      finish();
      return;
    case 2131427489:
    }
    NetworkInfo[] arrayOfNetworkInfo = ((ConnectivityManager)getApplicationContext().getSystemService("connectivity")).getAllNetworkInfo();
    if (arrayOfNetworkInfo != null);
    for (int i10 = 0; ; i10++)
    {
      if (i10 >= arrayOfNetworkInfo.length);
      for (int j = 0; ; j = i)
      {
        if (j != 0)
          break label157;
        new AlertDialog.Builder(this).setTitle(getString(2131165301)).setMessage(getString(2131165302)).setPositiveButton(getString(2131165303), new cn(this)).setNegativeButton(getString(2131165252), null).create().show();
        return;
        if (arrayOfNetworkInfo[i10].getState() != NetworkInfo.State.CONNECTED)
          break;
      }
    }
    label157: b();
    Log.d("Register", "FN " + this.J);
    Log.d("Register", "LN " + this.K);
    Log.d("Register", "EM " + this.L);
    Log.d("Register", "SP " + this.M);
    Log.d("Register", "SP1 " + this.N);
    Log.d("Register", "SQ " + this.O);
    Log.d("Register", "SQA " + this.P);
    Log.d("Register", "SP " + this.Q);
    Log.d("Register", "MO " + this.R);
    Log.d("Register", "DA " + this.S);
    Log.d("Register", "GE " + this.I);
    int k;
    int i2;
    label498: int i4;
    label528: int i6;
    label561: int i8;
    label608: label635: String str;
    Dialog localDialog;
    TextView localTextView;
    if (this.J.length() > 0)
    {
      this.w.setTextColor(-16777216);
      k = i;
      int i1 = k & 0x1;
      if (this.K.length() <= 0)
        break label876;
      this.y.setTextColor(-16777216);
      i2 = i;
      int i3 = i1 & i2;
      if (this.L.length() != 0)
        break label892;
      this.A.setTextColor(-65536);
      i4 = 0;
      int i5 = i3 & i4;
      if (!a(this.M.getBytes()))
        break label943;
      this.C.setTextColor(-16777216);
      i6 = i;
      int i7 = i5 & i6;
      if ((!a(this.N.getBytes())) || (!this.N.equals(this.M)))
        break label959;
      this.E.setTextColor(-16777216);
      i8 = i;
      int i9 = i8 & i7;
      if (this.P.length() <= 0)
        break label975;
      this.G.setTextColor(-16777216);
      if ((i9 & i) == 0)
        break label1000;
      if (this.T != null)
      {
        this.T.dismiss();
        this.T = null;
      }
      str = getString(2131165326);
      localDialog = new Dialog(this, 2131296257);
      localDialog.setContentView(2130903057);
      localDialog.getWindow().getAttributes().width = ((int)(0.6D * m.a(this)));
      localTextView = (TextView)localDialog.findViewById(2131427398);
      if ((str != null) && (str.length() != 0))
        break label990;
      localTextView.setText(2131165212);
    }
    while (true)
    {
      localDialog.setCancelable(false);
      this.T = localDialog;
      this.T.show();
      x localx = new x(this.U, this);
      localx.b(this.L);
      localx.a(this.J, this.K);
      localx.a(this.M);
      localx.b(this.O, this.P);
      localx.a(this.R, this.S);
      localx.c(this.Q);
      localx.a(this.I);
      localx.start();
      return;
      this.w.setTextColor(-65536);
      k = 0;
      break;
      label876: this.y.setTextColor(-65536);
      i2 = 0;
      break label498;
      label892: if (!Pattern.compile("^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\\.([a-zA-Z0-9_-])+)+$").matcher(this.L).matches())
      {
        this.A.setTextColor(-65536);
        i4 = 0;
        break label528;
      }
      this.A.setTextColor(-16777216);
      i4 = i;
      break label528;
      label943: this.C.setTextColor(-65536);
      i6 = 0;
      break label561;
      label959: this.E.setTextColor(-65536);
      i8 = 0;
      break label608;
      label975: this.G.setTextColor(-65536);
      i = 0;
      break label635;
      label990: localTextView.setText(str);
    }
    label1000: if (this.T.isShowing())
      this.T.dismiss();
    c.a(this, getString(2131165327), getString(2131165328));
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903082);
    this.m = getResources().getStringArray(2131034980);
    this.p = getResources().getStringArray(2131034981);
    this.q = getResources().getStringArray(2131034982);
    this.T = c.a(this, getString(2131165326));
    ((CheckBox)findViewById(2131427517)).setOnCheckedChangeListener(new ck(this));
    this.t = ((Button)findViewById(2131427488));
    this.t.setOnClickListener(this);
    this.u = ((Button)findViewById(2131427489));
    this.u.setOnClickListener(this);
    this.v = ((EditText)findViewById(2131427491));
    this.w = ((TextView)findViewById(2131427490));
    this.x = ((EditText)findViewById(2131427493));
    this.y = ((TextView)findViewById(2131427492));
    this.z = ((EditText)findViewById(2131427495));
    this.A = ((TextView)findViewById(2131427494));
    this.B = ((EditText)findViewById(2131427498));
    this.C = ((TextView)findViewById(2131427497));
    this.D = ((EditText)findViewById(2131427500));
    this.E = ((TextView)findViewById(2131427499));
    this.F = ((EditText)findViewById(2131427507));
    this.G = ((TextView)findViewById(2131427506));
    this.H = ((DatePicker)findViewById(2131427509));
    this.n = ((Spinner)findViewById(2131427505));
    this.o = new ArrayAdapter(this, 17367048, this.m);
    this.o.setDropDownViewResource(17367049);
    this.n.setAdapter(this.o);
    this.n.setOnItemSelectedListener(new cl(this));
    this.r = ((Spinner)findViewById(2131427513));
    this.s = new ArrayAdapter(this, 17367048, this.p);
    this.s.setDropDownViewResource(17367049);
    this.r.setAdapter(this.s);
    this.r.setOnItemSelectedListener(new cm(this));
  }

  public void onPause()
  {
    super.onPause();
    a.a(this.b);
  }

  public void onResume()
  {
    super.onResume();
    a.b(this.b);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.RegisterActivity
 * JD-Core Version:    0.6.2
 */