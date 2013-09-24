package activity;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.view.ViewPager;
import android.text.Editable;
import android.text.SpannableString;
import android.text.style.ImageSpan;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.SimpleAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.b.y;
import com.c.n;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;

public class ChatActivity extends MyActivity
  implements View.OnClickListener
{
  private TextView A;
  private ListView B;
  private RelativeLayout C;
  private RelativeLayout D;
  private p E;
  private m F;
  private List G = new ArrayList();
  private List H = new ArrayList();
  private com.c.l I;
  private com.c.l J;
  private long K = 0L;
  private int L = 0;
  private ViewPager M;
  private GridView N;
  private ArrayList O;
  private String P;
  private String Q;
  private ProgressBar R;
  private LinearLayout S;
  private boolean T = false;
  private long U = 0L;
  private int V = 0;
  private boolean W = false;
  private TextView X;
  private ac Y;
  private RelativeLayout Z;
  private final int a = 69648;
  private TextView aa;
  private int ab;
  private Handler ac = new a(this);
  private final int m = 69649;
  private final int n = 69650;
  private int o = 76032;
  private int p = 0;
  private int q = 23;
  private Button r;
  private Button s;
  private Button t;
  private Button u;
  private Button v;
  private Button w;
  private Button x;
  private Button y;
  private EditText z;

  private void a(String paramString)
  {
    if (paramString == null)
      return;
    File localFile = new File(paramString);
    String str4;
    Bitmap localBitmap1;
    if (localFile.isFile())
    {
      str4 = localFile.toString();
      if (com.c.e.a(str4, getResources().getStringArray(2131034967)))
        localBitmap1 = n.a(paramString, 0.3F, 250);
    }
    while (true)
    {
      String str1 = paramString.substring(1 + paramString.lastIndexOf("/"), paramString.length());
      Canvas localCanvas = new Canvas();
      Paint localPaint = new Paint();
      localPaint.setColor(-16777216);
      localPaint.setTextSize(20.0F);
      String str2 = com.c.g.a(str1, localPaint, com.c.h.c());
      int i = (int)localPaint.measureText(str2);
      int j = (int)(i + com.c.h.f());
      int i1;
      int k;
      label160: Bitmap localBitmap2;
      if (localBitmap1 != null)
      {
        int i2 = localBitmap1.getWidth();
        int i3 = localBitmap1.getHeight();
        i1 = i2;
        k = i3;
        localBitmap2 = Bitmap.createBitmap(i1, k, Bitmap.Config.ARGB_4444);
        NinePatchDrawable localNinePatchDrawable = (NinePatchDrawable)getResources().getDrawable(2130838420);
        localNinePatchDrawable.setBounds(0, 0, i1, k);
        localCanvas.setBitmap(localBitmap2);
        localNinePatchDrawable.draw(localCanvas);
        if (localBitmap1 != null)
          break label359;
        localCanvas.drawText(str2, (j - i) / 2.0F, 7.0F + com.c.h.d() / 2.0F, localPaint);
      }
      while (true)
      {
        ImageSpan localImageSpan = new ImageSpan(this, localBitmap2);
        String str3 = "STARTFILE:" + paramString + ":ENDFILE";
        SpannableString localSpannableString = new SpannableString(str3);
        localSpannableString.setSpan(localImageSpan, 0, str3.length(), 33);
        this.z.append(localSpannableString);
        return;
        if (!com.c.e.a(str4, getResources().getStringArray(2131034969)))
          break label372;
        localBitmap1 = n.a(paramString, 150, 100);
        break;
        k = (int)com.c.h.d();
        i1 = j;
        break label160;
        label359: localCanvas.drawBitmap(localBitmap1, 0.0F, 0.0F, localPaint);
      }
      label372: localBitmap1 = null;
    }
  }

  private void b(o paramo)
  {
    Random localRandom = new Random(System.currentTimeMillis() + this.l);
    byte[] arrayOfByte = new byte[16];
    long l;
    do
    {
      localRandom.nextBytes(arrayOfByte);
      l = 0x7FFFFFFF & (arrayOfByte[3] << 24 | arrayOfByte[2] << 16 | arrayOfByte[1] << 8 | arrayOfByte[0]);
    }
    while ((this.d.b(this.J.a(), l) != null) || (l == 0L));
    paramo.a(arrayOfByte);
    paramo.a(l);
  }

  private void e(int paramInt)
  {
    Log.d("send Rage", " " + paramInt);
    if (paramInt >= 90)
    {
      this.S.setVisibility(4);
      this.A.setVisibility(0);
      paramInt = 100;
    }
    while (true)
    {
      this.R.setProgress(paramInt);
      return;
      this.A.setVisibility(4);
      this.S.setVisibility(0);
    }
  }

  private void h()
  {
    Log.d("ChatActivity", "firstListView " + this.V);
    int i = 1 + this.V;
    this.G.clear();
    o localo1 = new o();
    localo1.d(3);
    localo1.a(this.I.a());
    int k;
    int i1;
    Iterator localIterator;
    int i2;
    if (this.c.b(this.I.a()) == null)
    {
      localo1.d(this.b.getString(2131165264));
      boolean bool = this.W;
      int j = 0;
      if (!bool)
      {
        j = 1;
        this.G.add(localo1);
      }
      k = j;
      List localList = this.d.b(this.J.a(), this.I.a());
      i1 = 1;
      if (localList.size() <= 0)
        break label684;
      localIterator = localList.iterator();
      i2 = 1;
      label178: if (localIterator.hasNext())
        break label341;
    }
    while (true)
    {
      e((int)(100.0F * (1.0F * i1 / i2)));
      this.B.setAdapter(this.E);
      int i3;
      label235: o localo2;
      label263: label341: int i5;
      if (i == this.G.size())
      {
        i3 = i - 1;
        if (!this.T)
          break label656;
        this.T = false;
        this.B.setSelection(-1 + this.B.getCount());
        this.B.setDivider(new ColorDrawable(0));
        this.B.setDividerHeight(1);
        this.E.notifyDataSetChanged();
        this.B.setClickable(false);
        if (this.G.size() != k)
          break label668;
        this.t.setVisibility(4);
        return;
        localo1.d(this.b.getString(2131165265));
        break;
        localo2 = (o)localIterator.next();
        if (localo2.m() == 0L)
          break label178;
        String str = localo2.d();
        long l = com.a.e.a(str);
        if (l - this.K > 300000L)
        {
          o localo3 = new o();
          localo3.c(str);
          localo3.a(true);
          localo3.d(2);
          localo3.d("Error");
          this.K = l;
          this.G.add(localo3);
        }
        this.G.add(localo2);
        int i4 = localo2.n();
        i5 = localo2.l();
        switch (i4)
        {
        case 6:
        default:
          if ((localo2.l() == 1) && (localo2.g() != 100) && (localo2.n() != 7))
            if (i1 != 1)
              break label677;
          break;
        case 5:
        case 7:
        }
      }
      label656: label668: label677: for (int i6 = localo2.g(); ; i6 = i1)
      {
        i2 += 100;
        i1 = i6;
        break;
        switch (i5)
        {
        default:
          break;
        case 1:
          o localo4 = new o();
          localo4.d(5);
          this.G.add(localo4);
          break;
          switch (i5)
          {
          default:
            break;
          case 0:
            localo2.d(10);
            break;
          case 1:
            localo2.d(4);
            break;
            break label178;
            i3 = i;
            break label235;
            this.B.setSelection(i3);
            break label263;
            this.t.setVisibility(0);
            return;
          }
          break;
        }
      }
      label684: i2 = 1;
    }
  }

  private void i()
  {
    Object localObject1 = null;
    int i = 0;
    if (i >= this.H.size())
    {
      m();
      Intent localIntent = new Intent();
      localIntent.setClass(this, NewMessageActivity.class);
      localIntent.putExtra("msg", (String)localObject1);
      startActivity(localIntent);
      finish();
      return;
    }
    l locall = (l)this.H.get(i);
    Object localObject2;
    if (locall.d())
      if (localObject1 != null)
        localObject2 = localObject1 + "\n" + locall.b();
    while (true)
    {
      i++;
      localObject1 = localObject2;
      break;
      localObject2 = locall.b();
      continue;
      localObject2 = localObject1;
    }
  }

  private void j()
  {
    while (true)
    {
      if (this.H.isEmpty())
      {
        this.L = 0;
        k();
        e();
        return;
      }
      l locall = (l)this.H.get(0);
      if ((locall.e() == 0) || (locall.e() == 1) || (locall.e() == 4) || (locall.e() == 10))
        this.d.a(this.J.a(), locall.f());
      this.H.remove(0);
    }
  }

  private void k()
  {
    String str;
    if (this.L > 0)
    {
      str = " ( " + this.L + " )";
      this.v.setClickable(true);
      this.u.setClickable(true);
      this.u.getBackground().setAlpha(255);
      this.v.getBackground().setAlpha(255);
    }
    while (true)
    {
      this.v.setText(this.b.getString(2131165266) + str);
      this.u.setText(this.b.getString(2131165267) + str);
      return;
      str = "";
      this.v.setClickable(false);
      this.u.setClickable(false);
      this.u.getBackground().setAlpha(100);
      this.v.getBackground().setAlpha(100);
    }
  }

  private void l()
  {
    for (int i = 0; ; i++)
    {
      if (i >= this.H.size())
      {
        e();
        this.L = 0;
        k();
        return;
      }
      l locall = (l)this.H.get(i);
      if (locall.d())
        this.d.a(this.J.a(), locall.f());
    }
  }

  private void m()
  {
    this.L = 0;
    this.s.setVisibility(0);
    this.t.setVisibility(0);
    this.y.setVisibility(4);
    this.w.setVisibility(4);
    this.C.setVisibility(0);
    this.D.setVisibility(4);
    this.B.setClickable(false);
    e();
  }

  public final void a()
  {
    List localList = this.d.b(this.J.a(), this.I.a());
    Iterator localIterator;
    int i;
    int j;
    if (localList.size() > 0)
    {
      localIterator = localList.iterator();
      i = 1;
      j = 1;
      if (localIterator.hasNext());
    }
    while (true)
    {
      Log.d("SendMsgBar", " " + j + "/" + i);
      e((int)(100.0F * (1.0F * j / i)));
      return;
      o localo = (o)localIterator.next();
      if ((localo.m() == 0L) || (localo.l() != 1) || (localo.g() == 100) || (localo.n() == 7))
        break;
      if (j == 1);
      for (int k = localo.g(); ; k = j)
      {
        i += 100;
        j = k;
        break;
      }
      i = 1;
      j = 1;
    }
  }

  public final void a(byte paramByte)
  {
    e();
    Log.d("UpdateChatUI", " " + paramByte);
    if (paramByte == 4)
      this.B.setSelection(-1 + this.B.getCount());
  }

  public final void a(int paramInt)
  {
  }

  public final void a(o paramo)
  {
    com.b.i locali = this.g.b();
    com.b.d locald = this.g.d();
    y localy = new y(paramo);
    com.c.j localj = new com.c.j();
    localj.a(paramo.b(), localy);
    if (localy.b())
    {
      paramo.b(0);
      locald.b(localj);
      return;
    }
    paramo.b(50);
    locali.b(localj);
  }

  public final void a_()
  {
    this.r.setClickable(false);
    this.r.setTextColor(-7829368);
  }

  protected final void b()
  {
    Intent localIntent = new Intent("android.media.action.IMAGE_CAPTURE");
    this.P = com.c.a.a;
    String str = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + ".jpg";
    File localFile1 = new File(this.P);
    if (!localFile1.exists())
      localFile1.mkdirs();
    File localFile2 = new File(this.P, str);
    this.P += str;
    localIntent.putExtra("output", Uri.fromFile(localFile2));
    localIntent.putExtra("android.intent.extra.videoQuality", 1);
    startActivityForResult(localIntent, 69649);
  }

  public final void b(byte paramByte)
  {
  }

  public final void b(int paramInt)
  {
    new AlertDialog.Builder(this).setTitle(getString(2131165249)).setMessage(getString(2131165250)).setPositiveButton(getString(2131165251), new d(this, paramInt)).setNegativeButton(getString(2131165252), null).create().show();
  }

  public final void c()
  {
    this.r.setClickable(true);
    this.r.setTextColor(-1);
  }

  public final void c(int paramInt)
  {
    new AlertDialog.Builder(this).setTitle(getString(2131165249)).setMessage(getString(2131165253)).setPositiveButton(getString(2131165251), new e(this, paramInt)).setNegativeButton(getString(2131165252), null).create().show();
  }

  public final void e()
  {
    this.d.a(this.J.a(), this.I.a());
    this.K = 0L;
    Iterator localIterator;
    int i;
    int j;
    if (this.y.getVisibility() == 0)
    {
      List localList = this.d.b(this.J.a(), this.I.a());
      this.H.clear();
      if (localList.size() <= 0)
        break label625;
      localIterator = localList.iterator();
      i = 1;
      j = 1;
      if (localIterator.hasNext());
    }
    while (true)
    {
      e((int)(100.0F * (1.0F * j / i)));
      Log.d("ChatActivity", "firstListView " + this.V);
      int k = 1 + this.V;
      this.B.setAdapter(this.F);
      label188: l locall1;
      int i4;
      label353: int i5;
      if (this.T)
      {
        this.T = false;
        this.B.setSelection(-1 + this.B.getCount());
        this.B.setDivider(new ColorDrawable(-16777216));
        this.B.setDividerHeight(1);
        this.F.notifyDataSetChanged();
        if (this.H.size() == 0)
          m();
        return;
        o localo = (o)localIterator.next();
        if (localo.m() == 0L)
          break;
        locall1 = new l(localo.b(), localo.d(), localo.e(), localo.i(), localo.l());
        locall1.a(localo.m());
        locall1.b(localo.n());
        if ((localo.l() != 1) || (localo.g() == 100) || (localo.n() == 7))
          break label619;
        if (j != 1)
          break label613;
        i4 = localo.g();
        i5 = i + 100;
        j = i4;
      }
      label613: label619: for (int i1 = i5; ; i1 = i)
      {
        String str = locall1.a();
        long l = com.a.e.a(str);
        if (l - this.K > 300000L)
        {
          l locall2 = new l();
          locall2.a(str);
          locall2.g();
          locall2.a(2);
          locall2.b("Error");
          this.K = l;
          this.H.add(locall2);
        }
        this.H.add(locall1);
        int i2 = locall1.h();
        int i3 = locall1.e();
        switch (i2)
        {
        case 6:
        default:
        case 5:
        case 7:
        }
        while (true)
        {
          i = i1;
          break;
          switch (i3)
          {
          default:
          case 1:
          }
          while (true)
          {
            i = i1;
            break;
            l locall3 = new l();
            locall3.a(5);
            this.H.add(locall3);
          }
          switch (i3)
          {
          default:
            break;
          case 1:
            locall1.a(4);
          }
        }
        this.B.setSelection(k);
        break label188;
        h();
        return;
        i4 = j;
        break label353;
      }
      label625: i = 1;
      j = 1;
    }
  }

  public final void f()
  {
    this.Z.setVisibility(8);
    this.M.setVisibility(8);
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default:
    case 69650:
    case 69649:
    case 69648:
    }
    Uri localUri1;
    do
    {
      do
      {
        do
        {
          Cursor localCursor2;
          do
          {
            do
              return;
            while (paramInt2 != -1);
            Uri localUri2 = paramIntent.getData();
            localCursor2 = getContentResolver().query(localUri2, null, null, null, null);
          }
          while (!localCursor2.moveToNext());
          this.Q = localCursor2.getString(localCursor2.getColumnIndex("_data"));
          Toast.makeText(this, this.Q, 0).show();
          Log.d("Video Path", " " + this.Q);
          a(this.Q);
          return;
        }
        while (paramInt2 != -1);
        Toast.makeText(this, this.P, 0).show();
        Log.d("Photo Path", " " + this.P);
        a(this.P);
        return;
      }
      while (paramIntent == null);
      localUri1 = paramIntent.getData();
    }
    while (localUri1 == null);
    String[] arrayOfString = { "_data" };
    if (localUri1.toString().startsWith("file://"));
    Cursor localCursor1;
    int i;
    for (String str = (localUri1.getScheme() + "://" + localUri1.getAuthority() + localUri1.getPath()).substring(7); ; str = localCursor1.getString(i))
    {
      Log.d("ht", str);
      a(str);
      return;
      localCursor1 = managedQuery(localUri1, arrayOfString, null, null, null);
      i = localCursor1.getColumnIndexOrThrow("_data");
      localCursor1.moveToFirst();
    }
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131427358:
      String str1 = this.z.getText().toString();
      this.z.setText("");
      String str2 = str1;
      int k;
      for (int i = 0; ; i = k + 8)
      {
        if (i >= str2.length());
        int j;
        do
        {
          a_();
          if (str2.length() <= 0)
            break;
          o localo = new o();
          localo.a(this.I.a());
          localo.c(com.a.e.b());
          localo.d(str2);
          localo.c(this.I.b());
          localo.h();
          localo.j();
          localo.a(false);
          localo.d(1);
          localo.e(8);
          b(localo);
          a(localo);
          Log.d("setRate", localo.g());
          this.d.a(this.J.a(), localo);
          e();
          this.B.setSelection(-1 + this.B.getCount());
          this.E.notifyDataSetChanged();
          return;
          j = str2.indexOf("STARTFILE:", i);
          k = str2.indexOf(":ENDFILE", i);
        }
        while ((j == -1) || (k == -1));
        if ((j > 0) && (str2.charAt(j - 1) != '\n'))
        {
          str2 = str2.substring(0, j) + "\n" + str2.substring(j);
          k++;
        }
        if ((k + 8 < str2.length()) && (str2.charAt(1 + (k + 8)) != '\n'))
          str2 = str2.substring(0, k + 8) + "\n" + str2.substring(k + 8);
      }
    case 2131427345:
      finish();
      return;
    case 2131427346:
      j();
      return;
    case 2131427348:
      this.s.setVisibility(4);
      this.t.setVisibility(4);
      this.y.setVisibility(0);
      this.w.setVisibility(0);
      this.B.setClickable(true);
      ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
      this.C.setVisibility(4);
      this.D.setVisibility(0);
      f();
      e();
      k();
      return;
    case 2131427353:
      m();
      return;
    case 2131427362:
      l();
      return;
    case 2131427361:
      i();
      return;
    case 2131427401:
      Intent localIntent = new Intent(this, AddToContactActivity.class);
      localIntent.setFlags(268435456);
      localIntent.putExtra("user", this.I);
      startActivity(localIntent);
      return;
    case 2131427357:
      ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
      if ((this.M.getVisibility() == 0) || (this.Z.getVisibility() == 0))
      {
        this.M.setVisibility(8);
        this.Z.setVisibility(8);
        return;
      }
      this.M.setVisibility(0);
      return;
    case 2131427359:
    }
    f();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    this.i = this.h.d();
    String str1;
    if (this.i.indexOf("||") != -1)
    {
      setContentView(2130903065);
      this.W = true;
      this.aa = ((TextView)findViewById(2131427428));
      this.aa.setOnClickListener(new f(this));
      this.aa.setText(getString(2131165271));
      this.X = ((TextView)findViewById(2131427427));
      String str3 = com.c.g.a(com.c.g.a(this.i, this.c, ","), this.X.getPaint(), (int)com.c.h.i());
      this.X.setText(str3 + "& more");
      this.I = ((com.c.l)getIntent().getSerializableExtra("user"));
      if (this.I == null)
      {
        this.I = new com.c.l();
        this.I.a(this.h.d());
        this.e.a(this.I);
      }
      this.J = new com.c.l();
      this.J.a(this.h.b());
      this.e.a(this.J);
      this.E = new p(this.ac, this, this.G);
      this.F = new m(this, this.H);
      this.d.a(this.J.a(), this.I.a());
      this.R = ((ProgressBar)findViewById(2131427352));
      this.S = ((LinearLayout)findViewById(2131427350));
      this.S.setVisibility(4);
      this.R.setMax(100);
      this.B = ((ListView)findViewById(2131427354));
      j localj = new j(this);
      this.B.setOnScrollListener(localj);
      this.r = ((Button)findViewById(2131427358));
      this.r.setOnClickListener(this);
      this.s = ((Button)findViewById(2131427345));
      this.s.setOnClickListener(this);
      this.y = ((Button)findViewById(2131427346));
      this.y.setOnClickListener(this);
      this.u = ((Button)findViewById(2131427362));
      this.u.setOnClickListener(this);
      this.v = ((Button)findViewById(2131427361));
      this.v.setOnClickListener(this);
      this.A = ((TextView)findViewById(2131427349));
      this.ab = ((LinearLayout)findViewById(2131427347)).getWidth();
      this.x = ((Button)findViewById(2131427357));
      this.x.setOnClickListener(this);
      z localz = this.c.b(this.I.a());
      if (localz == null)
        break label1255;
      str1 = localz.b();
      label584: if (this.W)
        break label1267;
    }
    label1255: label1267: for (String str2 = com.c.g.a(str1, this.A.getPaint(), com.c.h.a()); ; str2 = getString(2131165270))
    {
      Log.d("ChatName ", str2);
      this.A.setText(str2);
      this.z = ((EditText)findViewById(2131427359));
      this.z.setOnFocusChangeListener(new k(this));
      this.C = ((RelativeLayout)findViewById(2131427356));
      this.D = ((RelativeLayout)findViewById(2131427360));
      this.t = ((Button)findViewById(2131427348));
      this.t.setOnClickListener(this);
      this.w = ((Button)findViewById(2131427353));
      this.w.setOnClickListener(this);
      b localb = new b(this);
      a_();
      this.z.addTextChangedListener(localb);
      this.z.setOnClickListener(this);
      this.B.setOnItemClickListener(new c(this));
      this.T = true;
      this.Y = new i(this, this, new int[] { 2130838479, 2130838480, 2130838481, 2130838482, 2130838483 }, com.c.o.a);
      this.Z = ((RelativeLayout)findViewById(2131427364));
      this.Z.addView(this.Y);
      this.Z.setVisibility(8);
      this.M = ((ViewPager)findViewById(2131427363));
      this.M.setVisibility(8);
      this.O = new ArrayList();
      this.N = ((GridView)LayoutInflater.from(this).inflate(2130903053, null));
      ArrayList localArrayList = new ArrayList();
      HashMap localHashMap1 = new HashMap();
      localHashMap1.put("image", Integer.valueOf(2130837521));
      localHashMap1.put("TITLE", getString(2131165254));
      localArrayList.add(localHashMap1);
      HashMap localHashMap2 = new HashMap();
      localHashMap2.put("image", Integer.valueOf(2130837522));
      localHashMap2.put("TITLE", getString(2131165255));
      localArrayList.add(localHashMap2);
      HashMap localHashMap3 = new HashMap();
      localHashMap3.put("image", Integer.valueOf(2130837520));
      localHashMap3.put("TITLE", getString(2131165256));
      localArrayList.add(localHashMap3);
      HashMap localHashMap4 = new HashMap();
      localHashMap4.put("image", Integer.valueOf(2130837519));
      localHashMap4.put("TITLE", getString(2131165257));
      localArrayList.add(localHashMap4);
      SimpleAdapter localSimpleAdapter = new SimpleAdapter(this, localArrayList, 2130903052, new String[] { "image", "TITLE" }, new int[] { 2131427386, 2131427387 });
      this.N.setAdapter(localSimpleAdapter);
      this.N.setOnItemClickListener(new g(this));
      this.O.add(this.N);
      h localh = new h(this);
      this.M.setAdapter(localh);
      return;
      setContentView(2130903042);
      this.W = false;
      break;
      str1 = this.I.a();
      break label584;
    }
  }

  public void onPause()
  {
    super.onPause();
    com.umeng.a.a.a(this.b);
  }

  protected void onResume()
  {
    e();
    z localz = this.c.b(this.I.a());
    String str1;
    if (localz != null)
    {
      str1 = localz.b();
      if (this.W)
        break label89;
    }
    label89: for (String str2 = com.c.g.a(str1, this.A.getPaint(), com.c.h.a()); ; str2 = getString(2131165270))
    {
      Log.d("ChatName ", str2);
      this.A.setText(str2);
      super.onResume();
      com.umeng.a.a.b(this.b);
      return;
      str1 = this.I.a();
      break;
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.ChatActivity
 * JD-Core Version:    0.6.2
 */