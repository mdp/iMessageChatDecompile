package activity;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.NinePatchDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
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
import android.widget.RelativeLayout;
import android.widget.SimpleAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.b.i;
import com.b.u;
import com.b.y;
import com.c.c;
import com.c.h;
import com.c.j;
import com.c.l;
import com.c.n;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

public class NewMessageActivity extends MyActivity
  implements View.OnClickListener
{
  private String A;
  private String B;
  private l C;
  private l D;
  private o E;
  private boolean F = false;
  private boolean G = false;
  private ArrayList H;
  private ArrayList I;
  private ViewPager J;
  private GridView K;
  private ArrayList L;
  private String M;
  private String N;
  private ac O;
  private RelativeLayout P;
  private int Q;
  private Handler R = new bi(this);
  private final int a = 69632;
  private final int m = 69633;
  private final int n = 69634;
  private final int o = 0;
  private int p = 0;
  private int q = 71936;
  private int r = 0;
  private int s = 23;
  private TextView t;
  private EditText u;
  private EditText v;
  private Button w;
  private Button x;
  private Button y;
  private Button z;

  private void a(o paramo)
  {
    Random localRandom = new Random(System.currentTimeMillis() + this.l);
    byte[] arrayOfByte = new byte[16];
    long l;
    do
    {
      localRandom.nextBytes(arrayOfByte);
      l = 0x7FFFFFFF & (arrayOfByte[3] << 24 | arrayOfByte[2] << 16 | arrayOfByte[1] << 8 | arrayOfByte[0]);
    }
    while ((this.d.b(this.C.a(), l) != null) || (l == 0L));
    paramo.a(arrayOfByte);
    paramo.a(l);
  }

  private void b(String paramString)
  {
    File localFile = new File(paramString);
    String str4;
    Bitmap localBitmap1;
    if (localFile.isFile())
    {
      str4 = localFile.toString();
      if (com.c.e.a(str4, getResources().getStringArray(2131034967)))
        localBitmap1 = n.a(paramString, 0.25F, (int)(250.0F * h.a / 480.0F));
    }
    while (true)
    {
      String str1 = paramString.substring(1 + paramString.lastIndexOf("/"), paramString.length());
      Canvas localCanvas = new Canvas();
      Paint localPaint = new Paint();
      localPaint.setColor(-16777216);
      localPaint.setTextSize(20.0F);
      String str2 = com.c.g.a(str1, localPaint, h.c());
      int i = (int)localPaint.measureText(str2);
      int j = (int)(i + h.f());
      int i1;
      int k;
      label163: Bitmap localBitmap2;
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
          break label380;
        localCanvas.drawText(str2, (j - i) / 2.0F, 7 + k / 2, localPaint);
      }
      while (true)
      {
        ImageSpan localImageSpan = new ImageSpan(this, localBitmap2);
        String str3 = "STARTFILE:" + paramString + ":ENDFILE";
        SpannableString localSpannableString = new SpannableString(str3);
        localSpannableString.setSpan(localImageSpan, 0, str3.length(), 33);
        this.v.append(localSpannableString);
        return;
        if (!com.c.e.a(str4, getResources().getStringArray(2131034969)))
          break label393;
        localBitmap1 = n.a(paramString, (int)(100.0F * h.a / 480.0F), (int)(150.0F * h.a / 480.0F));
        break;
        k = (int)h.d();
        i1 = j;
        break label163;
        label380: localCanvas.drawBitmap(localBitmap1, 0.0F, 0.0F, localPaint);
      }
      label393: localBitmap1 = null;
    }
  }

  private void h()
  {
    switch (this.p)
    {
    default:
      return;
    case 3:
      this.t.setVisibility(0);
      this.t.setText(this.b.getString(2131165317));
      return;
    case 2:
      this.t.setVisibility(0);
      this.t.setText(this.b.getString(2131165318));
      return;
    case 0:
    case 1:
      this.t.setVisibility(4);
      return;
    case 4:
    }
    this.t.setVisibility(0);
    this.t.setText(this.b.getString(2131165319));
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

  protected final void a(String paramString)
  {
    if (paramString.length() == 0)
      return;
    this.p = 3;
    h();
    i locali = this.g.b();
    new u(paramString);
    j localj = new j();
    localj.a(paramString, this);
    locali.b(localj);
  }

  public final void a(String paramString, int paramInt)
  {
    this.Q = paramInt;
    Message localMessage = this.R.obtainMessage();
    if (paramInt == 0);
    for (localMessage.what = 2; ; localMessage.what = 3)
    {
      localMessage.getData().putSerializable("msg", paramString);
      this.R.sendMessage(localMessage);
      return;
    }
  }

  protected final void b()
  {
    Intent localIntent = new Intent("android.media.action.IMAGE_CAPTURE");
    this.M = com.c.a.a;
    String str = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + ".jpg";
    File localFile1 = new File(this.M);
    if (!localFile1.exists())
      localFile1.mkdirs();
    File localFile2 = new File(this.M, str);
    this.M += str;
    localIntent.putExtra("output", Uri.fromFile(localFile2));
    localIntent.putExtra("android.intent.extra.videoQuality", 1);
    startActivityForResult(localIntent, 69633);
  }

  public final void b(byte paramByte)
  {
    if (paramByte != 0)
      this.p = 4;
    h();
  }

  public final void c()
  {
    if ((this.F) && (this.G))
    {
      this.x.setClickable(true);
      this.x.setTextColor(-1);
    }
  }

  public final void e()
  {
    this.x.setClickable(false);
    this.x.setTextColor(-7829368);
  }

  public final void f()
  {
    this.J.setVisibility(8);
    this.P.setVisibility(8);
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default:
    case 69634:
    case 69633:
    case 0:
    case 69632:
    }
    Uri localUri1;
    do
    {
      do
      {
        l locall;
        z localz;
        do
        {
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
                this.N = localCursor2.getString(localCursor2.getColumnIndex("_data"));
                Toast.makeText(this, this.N, 0).show();
                Log.d("Video Path", " " + this.N);
                b(this.N);
                return;
              }
              while (paramInt2 != -1);
              Toast.makeText(this, this.M, 0).show();
              Log.d("Photo Path", " " + this.M);
              b(this.M);
              return;
            }
            while (paramIntent == null);
            locall = (l)paramIntent.getSerializableExtra("user");
            Log.d("Contact back", "");
          }
          while (locall == null);
          localz = this.c.b(locall.a());
        }
        while (localz == null);
        Log.d("Contact back", locall.a());
        this.u.setText("");
        String str2 = com.c.g.a(localz.b(), this.u.getPaint(), h.b());
        this.u.append(n.a(this, localz.a(), str2));
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
    for (String str1 = (localUri1.getScheme() + "://" + localUri1.getAuthority() + localUri1.getPath()).substring(7); ; str1 = localCursor1.getString(i))
    {
      Log.d("ht", str1);
      b(str1);
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
    case 2131427453:
    case 2131427454:
    default:
      return;
    case 2131427450:
      finish();
      return;
    case 2131427456:
      String str = this.A;
      this.B = this.v.getText().toString();
      int k;
      for (int i = 0; ; i = k + 8)
      {
        if (i >= this.B.length());
        int j;
        do
        {
          if ((str.length() != 0) && (this.B.length() != 0))
            break;
          c.a(this, this.b.getString(2131165324), this.b.getString(2131165325));
          return;
          j = this.B.indexOf("STARTFILE:", i);
          k = this.B.indexOf(":ENDFILE", i);
        }
        while ((j == -1) || (k == -1));
        if ((j > 0) && (this.B.charAt(j - 1) != '\n'))
        {
          this.B = (this.B.substring(0, j) + "\n" + this.B.substring(j));
          k++;
        }
        if ((k + 8 < this.B.length()) && (this.B.charAt(1 + (k + 8)) != '\n'))
          this.B = (this.B.substring(0, k + 8) + "\n" + this.B.substring(k + 8));
      }
      this.D = new l();
      this.D.a(str);
      this.e.a(this.D);
      this.E.a(str);
      this.E.c(com.a.e.b());
      this.E.d(this.B);
      this.E.c(this.D.b());
      this.E.h();
      this.E.d(1);
      this.E.j();
      this.E.e(8);
      a(this.E);
      o localo = this.E;
      i locali = this.g.b();
      com.b.d locald = this.g.d();
      y localy = new y(localo);
      j localj = new j();
      localj.a(localo.b(), localy);
      if (localy.b())
      {
        localo.b(0);
        localj.a(localo.b(), localy);
        locald.b(localj);
      }
      while (true)
      {
        this.d.a(this.C.a(), this.E);
        this.h.d(str);
        Intent localIntent = new Intent(this, ChatActivity.class);
        localIntent.setFlags(268435456);
        localIntent.putExtra("user", this.D);
        startActivity(localIntent);
        finish();
        return;
        localo.b(50);
        locali.b(localj);
      }
    case 2131427452:
      ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
      startActivityForResult(new Intent(this, ContactListActivity.class), 0);
      return;
    case 2131427455:
      ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
      if ((this.J.getVisibility() == 0) || (this.P.getVisibility() == 0))
      {
        this.J.setVisibility(8);
        this.P.setVisibility(8);
        return;
      }
      this.J.setVisibility(0);
      return;
    case 2131427451:
    case 2131427457:
    }
    f();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903075);
    this.p = 0;
    this.H = new ArrayList();
    this.H.clear();
    this.I = new ArrayList();
    this.I.clear();
    this.w = ((Button)findViewById(2131427450));
    this.w.setOnClickListener(this);
    this.x = ((Button)findViewById(2131427456));
    this.x.setOnClickListener(this);
    this.y = ((Button)findViewById(2131427455));
    this.y.setOnClickListener(this);
    this.z = ((Button)findViewById(2131427452));
    this.z.setOnClickListener(this);
    this.t = ((TextView)findViewById(2131427448));
    this.u = ((EditText)findViewById(2131427451));
    this.u.setOnClickListener(this);
    this.u.setOnFocusChangeListener(new bj(this));
    this.u.addTextChangedListener(new bk(this));
    this.v = ((EditText)findViewById(2131427457));
    this.v.setOnClickListener(this);
    this.v.setOnFocusChangeListener(new bl(this));
    String str1 = (String)getIntent().getSerializableExtra("msg");
    int i;
    label290: label307: z localz;
    if (str1 != null)
    {
      this.v.setText("");
      i = 0;
      if (i >= str1.length())
      {
        this.v.append(str1.substring(i));
        c();
        String str2 = (String)getIntent().getSerializableExtra("touser");
        if (str2 != null)
        {
          localz = this.c.b(str2);
          if (localz != null)
            break label952;
          this.u.setText(str2);
        }
      }
    }
    while (true)
    {
      bm localbm = new bm(this);
      this.v.addTextChangedListener(localbm);
      this.C = this.g.h();
      this.E = new o();
      this.O = new bp(this, this, new int[] { 2130838479, 2130838480, 2130838481, 2130838482, 2130838483 }, com.c.o.a);
      this.P = ((RelativeLayout)findViewById(2131427364));
      this.P.addView(this.O);
      this.P.setVisibility(8);
      this.J = ((ViewPager)findViewById(2131427363));
      this.J.setVisibility(8);
      this.L = new ArrayList();
      this.K = ((GridView)LayoutInflater.from(this).inflate(2130903053, null));
      ArrayList localArrayList = new ArrayList();
      HashMap localHashMap1 = new HashMap();
      localHashMap1.put("image", Integer.valueOf(2130837521));
      localHashMap1.put("TITLE", this.b.getString(2131165254));
      localArrayList.add(localHashMap1);
      HashMap localHashMap2 = new HashMap();
      localHashMap2.put("image", Integer.valueOf(2130837522));
      localHashMap2.put("TITLE", this.b.getString(2131165255));
      localArrayList.add(localHashMap2);
      HashMap localHashMap3 = new HashMap();
      localHashMap3.put("image", Integer.valueOf(2130837520));
      localHashMap3.put("TITLE", this.b.getString(2131165256));
      localArrayList.add(localHashMap3);
      HashMap localHashMap4 = new HashMap();
      localHashMap4.put("image", Integer.valueOf(2130837519));
      localHashMap4.put("TITLE", this.b.getString(2131165257));
      localArrayList.add(localHashMap4);
      SimpleAdapter localSimpleAdapter = new SimpleAdapter(this, localArrayList, 2130903052, new String[] { "image", "TITLE" }, new int[] { 2131427386, 2131427387 });
      this.K.setAdapter(localSimpleAdapter);
      this.K.setOnItemClickListener(new bn(this));
      this.L.add(this.K);
      bo localbo = new bo(this);
      this.J.setAdapter(localbo);
      h();
      return;
      int j = str1.indexOf("STARTFILE:", i);
      int k = str1.indexOf(":ENDFILE", i);
      if ((j == -1) || (k == -1))
        break label290;
      this.v.append(str1.subSequence(i, j));
      b(str1.substring(j + 10, k));
      i = k + 8;
      break;
      e();
      break label307;
      label952: this.u.setText("");
      String str3 = com.c.g.a(localz.b(), this.u.getPaint(), h.b());
      this.u.append(n.a(this, localz.a(), str3));
    }
  }

  public void onPause()
  {
    super.onPause();
    com.umeng.a.a.a(this.b);
  }

  public void onResume()
  {
    super.onResume();
    com.umeng.a.a.b(this.b);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.NewMessageActivity
 * JD-Core Version:    0.6.2
 */