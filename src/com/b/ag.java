package com.b;

import activity.LoginActivity;
import activity.MyActivity;
import activity.MyApplication;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings.Secure;
import android.util.Log;
import com.a.e;
import com.a.g;
import com.c.j;
import d.h;
import java.util.HashMap;
import java.util.UUID;

public final class ag
  implements q
{
  public static boolean a;
  private Context b;
  private MyApplication c;
  private i d;
  private d e;
  private ad f;
  private com.d.a g;
  private com.a.d h;
  private g i;
  private com.a.f j;
  private com.c.l k;
  private com.a.c l;
  private Handler m;
  private boolean n;

  public ag(Context paramContext, Handler paramHandler, MyApplication paramMyApplication)
  {
    this.b = paramContext;
    this.c = paramMyApplication;
    this.k = paramMyApplication.h();
    this.g = new com.d.a(this.b, "saveUser");
    this.d = paramMyApplication.b();
    this.e = paramMyApplication.d();
    this.f = paramMyApplication.c();
    this.m = paramHandler;
  }

  private void a(int paramInt)
  {
    String str = this.g.b();
    com.a.c localc = this.l;
    Log.d("Login", " Pri ");
    if (!this.n)
    {
      localc.b(str);
      Log.d("Login", " getPri ");
    }
    while (true)
    {
      this.f.a();
      Intent localIntent = new Intent();
      localIntent.setAction("com.way.loginstep");
      localIntent.putExtra("message", paramInt);
      this.b.sendBroadcast(localIntent);
      return;
      localc.c(str);
    }
  }

  private void a(com.c.b paramb)
  {
    int i1 = paramb.b();
    byte[] arrayOfByte1 = paramb.a();
    int i2 = 8;
    this.n = false;
    while (true)
    {
      if (i2 >= i1)
        return;
      int i3 = i2 + 1;
      switch (arrayOfByte1[i2])
      {
      case 8:
      default:
        i2 = i3;
        break;
      case 4:
        int i19 = 1 + (i3 + 1);
        String str = Integer.toString(0xFF & arrayOfByte1[(i19 + 3)]) + "." + Integer.toString(0xFF & arrayOfByte1[(i19 + 2)]) + "." + Integer.toString(0xFF & arrayOfByte1[(i19 + 1)]) + "." + Integer.toString(0xFF & arrayOfByte1[i19]);
        i2 = i19 + 4;
        e.c.g = str;
        break;
      case 5:
        int i16 = 1 + (i3 + 1);
        int i17 = i16 + 1;
        int i18 = 0xFF00 & arrayOfByte1[i16] << 8;
        i2 = i17 + 1;
        e.c.h = i18 | 0xFF & arrayOfByte1[i17];
        break;
      case 6:
        int i12 = i3 + 1;
        int i13 = 0xFF00 & arrayOfByte1[i3] << 8;
        int i14 = i12 + 1;
        int i15 = i13 | 0xFF & arrayOfByte1[i12];
        byte[] arrayOfByte4 = new byte[i15];
        System.arraycopy(arrayOfByte1, i14, arrayOfByte4, 0, i15);
        if (i15 != 0)
          this.n = true;
        e.c.j = arrayOfByte4;
        i2 = i15 + i14;
        break;
      case 7:
        int i8 = i3 + 1;
        int i9 = 0xFF00 & arrayOfByte1[i3] << 8;
        int i10 = i8 + 1;
        int i11 = i9 | 0xFF & arrayOfByte1[i8];
        byte[] arrayOfByte3 = new byte[i11];
        if (i11 != 0)
          this.n = true;
        System.arraycopy(arrayOfByte1, i10, arrayOfByte3, 0, i11);
        i2 = i11 + i10;
        e.c.i = arrayOfByte3;
        break;
      case 9:
        int i4 = i3 + 1;
        int i5 = 0xFF00 & arrayOfByte1[i3] << 8;
        int i6 = i4 + 1;
        int i7 = i5 | 0xFF & arrayOfByte1[i4];
        byte[] arrayOfByte2 = new byte[i7];
        System.arraycopy(arrayOfByte1, i6, arrayOfByte2, 0, i7);
        i2 = i7 + i6;
        e.c.n = arrayOfByte2;
      }
    }
  }

  private void b(com.c.b paramb)
  {
    byte[] arrayOfByte1 = paramb.a();
    int i1 = 7;
    this.n = false;
    while (true)
    {
      if (i1 >= paramb.b())
        return;
      int i2 = i1 + 1;
      switch (arrayOfByte1[i1])
      {
      default:
        i1 = i2;
        break;
      case 4:
        int i18 = 1 + (i2 + 1);
        String str = Integer.toString(0xFF & arrayOfByte1[(i18 + 3)]) + "." + Integer.toString(0xFF & arrayOfByte1[(i18 + 2)]) + "." + Integer.toString(0xFF & arrayOfByte1[(i18 + 1)]) + "." + Integer.toString(0xFF & arrayOfByte1[i18]);
        i1 = i18 + 4;
        e.c.g = str;
        break;
      case 5:
        int i15 = 1 + (i2 + 1);
        int i16 = i15 + 1;
        int i17 = 0xFF00 & arrayOfByte1[i15] << 8;
        i1 = i16 + 1;
        e.c.h = i17 | 0xFF & arrayOfByte1[i16];
        break;
      case 6:
        int i11 = i2 + 1;
        int i12 = 0xFF00 & arrayOfByte1[i2] << 8;
        int i13 = i11 + 1;
        int i14 = i12 | 0xFF & arrayOfByte1[i11];
        byte[] arrayOfByte4 = new byte[i14];
        System.arraycopy(arrayOfByte1, i13, arrayOfByte4, 0, i14);
        if (i14 != 0)
          this.n = true;
        e.c.j = arrayOfByte4;
        i1 = i14 + i13;
        break;
      case 7:
        int i7 = i2 + 1;
        int i8 = 0xFF00 & arrayOfByte1[i2] << 8;
        int i9 = i7 + 1;
        int i10 = i8 | 0xFF & arrayOfByte1[i7];
        byte[] arrayOfByte3 = new byte[i10];
        if (i10 != 0)
          this.n = true;
        System.arraycopy(arrayOfByte1, i9, arrayOfByte3, 0, i10);
        i1 = i10 + i9;
        e.c.i = arrayOfByte3;
        break;
      case 8:
        int i3 = i2 + 1;
        int i4 = 0xFF00 & arrayOfByte1[i2] << 8;
        int i5 = i3 + 1;
        int i6 = i4 | 0xFF & arrayOfByte1[i3];
        byte[] arrayOfByte2 = new byte[i6];
        System.arraycopy(arrayOfByte1, i5, arrayOfByte2, 0, i6);
        e.c.k = arrayOfByte2;
        i1 = i6 + i5;
      }
    }
  }

  private void c(com.c.b paramb)
  {
    Intent localIntent1 = new Intent();
    b.a locala = new b.a(paramb);
    int i1 = b.a.a(paramb.a()[7]);
    if (i1 > 0)
    {
      LoginActivity.b(i1);
      Intent localIntent2 = new Intent();
      localIntent2.setAction("com.way.loginstep");
      localIntent2.putExtra("message", i1);
      this.b.sendBroadcast(localIntent2);
    }
    if (locala.a())
    {
      j localj1 = new j();
      localj1.a(locala.b());
      this.d.a(localj1);
      return;
    }
    j localj2 = new j();
    Log.d("NetWork ", "Down");
    localj2.a(p.a());
    localj2.k();
    localIntent1.setAction("com.way.message");
    localIntent1.putExtra("message", localj2);
    this.b.sendBroadcast(localIntent1);
  }

  public final void a(com.a.d paramd, g paramg, com.a.f paramf, com.a.c paramc)
  {
    this.h = paramd;
    this.i = paramg;
    this.j = paramf;
    this.l = paramc;
  }

  public final void a(j paramj)
  {
    int i1 = 7;
    int i2 = paramj.i();
    Intent localIntent1 = new Intent();
    Log.d("InMsg", " type " + i2);
    switch (i2)
    {
    case 60:
    default:
      return;
    case 13:
      j localj4 = new j();
      localj4.a(b.a(paramj.j(), paramj.n()));
      this.f.a(localj4);
      return;
    case 15:
      new com.c.f();
      com.c.f.a(paramj.j(), paramj.n());
      return;
    case 1:
      byte[] arrayOfByte2 = paramj.j();
      int i12 = paramj.n();
      int i13 = arrayOfByte2[6];
      Intent localIntent2 = new Intent();
      switch (i13)
      {
      case 3:
      default:
      case 2:
      case 4:
      }
      while (true)
      {
        i1 = -1;
        while (i1 > 0)
        {
          LoginActivity.b(i1);
          localIntent2.setAction("com.way.loginstep");
          localIntent2.putExtra("message", i1);
          this.b.sendBroadcast(localIntent2);
          return;
          e.a.a(arrayOfByte2);
          j localj3 = new j();
          localj3.a(e.a.c());
          this.d.a(localj3);
          i1 = 3;
          continue;
          Context localContext = this.b;
          String str3 = com.c.d.a(localContext);
          Log.e("ProgrameUUID", "id: " + str3);
          String str4 = UUID.nameUUIDFromBytes(("35" + Build.BOARD.length() % 10 + Build.BRAND.length() % 10 + Build.CPU_ABI.length() % 10 + Build.DEVICE.length() % 10 + Build.DISPLAY.length() % 10 + Build.HOST.length() % 10 + Build.ID.length() % 10 + Build.MANUFACTURER.length() % 10 + Build.MODEL.length() % 10 + Build.PRODUCT.length() % 10 + Build.TAGS.length() % 10 + Build.TYPE.length() % 10 + Build.USER.length() % 10).getBytes()).toString();
          Log.e("ProgrameUUID", "device_uuid: " + str4);
          String str5 = Settings.Secure.getString(localContext.getContentResolver(), "android_id").toString();
          if ((str5 == null) || (str5.length() == 0))
            str5 = "209bc4511c6df7s";
          String str6 = UUID.nameUUIDFromBytes(str5.getBytes()).toString();
          Log.e("ProgrameUUID", "android_id_uuid: " + str6);
          String str7 = UUID.nameUUIDFromBytes((str3 + str4 + str6).getBytes()).toString().replaceAll("-", "");
          Log.d("Auth_Result", i12);
          boolean bool = e.a.a(arrayOfByte2, i12);
          String str8 = this.g.b();
          if (!bool)
            break label858;
          byte[] arrayOfByte3 = e.c.e;
          if ((this.g.g()) && (this.l != null))
          {
            o localo4 = new o(str8, this.l.a(str8), str7.getBytes(), arrayOfByte3);
            j localj2 = new j();
            localj2.a(localo4.a());
            this.d.a(localj2);
          }
          else
          {
            o localo3 = new o(str8, this.g.c().getBytes(), str7.getBytes(), arrayOfByte3);
            j localj1 = new j();
            localj1.a(localo3.b());
            this.d.a(localj1);
          }
        }
        this.d.d();
        this.f.b();
      }
    case 9:
      Log.d("Heart", "Respone");
      byte[] arrayOfByte1 = paramj.j();
      int i5 = paramj.n();
      if (i5 == 5)
      {
        com.c.a.d = 0xFF000000 & arrayOfByte1[1] << 24 | 0xFF0000 & arrayOfByte1[2] << 16 | 0xFF00 & arrayOfByte1[3] << 8 | 0xFF & arrayOfByte1[4] << 0;
        return;
      }
      int i6 = i5 - 4;
      int i7 = i6 + 1;
      int i8 = 0xFF000000 & arrayOfByte1[i6] << 24;
      int i9 = i7 + 1;
      int i10 = i8 | 0xFF0000 & arrayOfByte1[i7] << 16;
      int i11 = i9 + 1;
      com.c.a.d = i10 | 0xFF00 & arrayOfByte1[i9] << 8 | 0xFF & arrayOfByte1[i11] << 0;
      return;
    case 2:
      int i4 = b.a.a(paramj.j()[i1]);
      switch (paramj.j()[i1])
      {
      default:
        c(paramj.h());
        return;
      case 12:
        a = true;
        a(paramj.h());
        a(i4);
        return;
      case 20:
        a = false;
        b(paramj.h());
        a(i4);
        return;
      case 10:
      }
      c(paramj.h());
      return;
    case 3:
      label858: paramj.k();
      LoginActivity.a = paramj.j()[9];
      if (paramj.j()[9] == 0)
      {
        this.f.c();
        this.g.a(true);
        this.g.a(2);
        this.c.e().b();
        this.c.d().a();
        paramj.l().a(this.g.b(), this.l);
        this.d.c();
        com.c.a.f = this.g.b();
        this.g.c(true);
      }
      while (true)
      {
        localIntent1.setAction("com.way.message");
        localIntent1.putExtra("message", paramj);
        this.b.sendBroadcast(localIntent1);
        return;
        Log.d("Login error", " " + paramj.j()[9]);
        this.g.a(1);
        e.c.m = this.b.getString(2131165278);
        this.d.d();
        this.f.b();
      }
    case 4:
    }
    int i3 = paramj.j()[6];
    Log.d("InMsg", "stype" + i3);
    z localz;
    long l5;
    switch (i3)
    {
    case 3:
    case 5:
    case 7:
    default:
      return;
    case 2:
      localz = paramj.o();
      long l4 = localz.b();
      new j().a(s.a(l4));
      switch (localz.a())
      {
      default:
        l5 = localz.b();
        i1 = 8;
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
      }
    case 4:
      while (true)
      {
        this.h.a(this.k.a(), l5, 100);
        this.h.b(this.k.a(), l5, i1);
        paramj.b();
        localIntent1.setAction("com.way.message");
        localIntent1.putExtra("message", paramj);
        this.b.sendBroadcast(localIntent1);
        return;
        paramj.d();
        w localw = paramj.m();
        String str1 = localw.d();
        String str2 = localw.e();
        if (localw.i())
          break;
        if (this.h.c(this.k.a(), localw.c()))
        {
          Log.e("messageDB", "msg " + str2 + " exit");
          HashMap localHashMap = new HashMap();
          localHashMap.put("Msg Exit", " ");
          com.umeng.a.a.a(this.b, "MsgExitError", localHashMap);
          return;
        }
        if (localw.g())
        {
          this.c.d().a(paramj);
          activity.o localo2 = new activity.o(str1, e.b(), "....", false, 0);
          localo2.e(8);
          localo2.a(localw.c());
          localo2.a(localw.b());
          localo2.e(localw.a());
          localo2.b(0);
          this.h.a(this.k.a(), localo2);
        }
        while (true)
        {
          long l3 = localw.h();
          new j().a(s.b(l3));
          com.c.l locall1 = new com.c.l();
          locall1.a(str1);
          this.i.a(locall1);
          if (MyActivity.j != 0)
            break;
          Message localMessage2 = this.m.obtainMessage();
          localMessage2.what = 1;
          localMessage2.getData().putSerializable("msg", paramj);
          this.m.sendMessage(localMessage2);
          return;
          activity.o localo1 = new activity.o(str1, e.b(), str2, false, 0);
          localo1.e(5);
          localo1.a(localw.c());
          localo1.a(localw.b());
          localo1.b(100);
          this.h.a(this.k.a(), localo1);
        }
        Message localMessage1 = this.m.obtainMessage();
        localMessage1.what = 2;
        localMessage1.getData().putSerializable("msg", paramj);
        this.m.sendMessage(localMessage1);
        paramj.b();
        localIntent1.setAction("com.way.message");
        localIntent1.putExtra("message", paramj);
        this.b.sendBroadcast(localIntent1);
        return;
        l5 = localz.b();
        i1 = 6;
        continue;
        l5 = localz.c();
        i1 = 5;
        continue;
        l5 = localz.b();
      }
    case 6:
      d.l locall = this.c.d().b();
      locall.a(paramj.h());
      long l2 = locall.d();
      new j().a(s.a((int)l2));
      return;
    case 8:
    }
    h localh = this.c.d().c();
    localh.a(paramj.h());
    long l1 = localh.e();
    new j().a(s.a((int)l1));
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.b.ag
 * JD-Core Version:    0.6.2
 */