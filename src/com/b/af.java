package com.b;

import activity.MyActivity;
import activity.MyApplication;
import activity.o;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.a.c;
import com.a.e;
import com.a.f;
import com.a.g;
import com.c.j;
import com.c.l;
import com.d.a;

public final class af
  implements q
{
  private Context a;
  private MyApplication b;
  private i c;
  private d d;
  private ad e;
  private a f;
  private com.a.d g;
  private g h;
  private f i;
  private l j;
  private c k;
  private Handler l;

  public af(Context paramContext, Handler paramHandler, MyApplication paramMyApplication)
  {
    this.a = paramContext;
    this.b = paramMyApplication;
    this.j = paramMyApplication.h();
    this.f = new a(this.a, "saveUser");
    this.c = paramMyApplication.b();
    this.d = paramMyApplication.d();
    this.e = paramMyApplication.c();
    this.l = paramHandler;
  }

  public final void a(com.a.d paramd, g paramg, f paramf, c paramc)
  {
    this.g = paramd;
    this.h = paramg;
    this.i = paramf;
    this.k = paramc;
  }

  public final void a(j paramj)
  {
    if (this.g == null)
      return;
    w localw = paramj.m();
    String str1 = localw.d();
    String str2 = localw.e();
    long l1 = localw.h();
    new j().a(s.b(l1));
    l locall = new l();
    locall.a(str1);
    this.h.a(locall);
    o localo = new o(str1, e.b(), str2, false, 0);
    if (paramj.p())
      localo.e(5);
    while (true)
    {
      localo.e(localw.a());
      localo.a(localw.c());
      localo.a(localw.b());
      localo.b(100);
      this.g.a(this.j.a(), localo);
      if (MyActivity.j != 0)
        break;
      Message localMessage = this.l.obtainMessage();
      localMessage.what = 1;
      localMessage.getData().putSerializable("msg", paramj);
      this.l.sendMessage(localMessage);
      return;
      localo.e(7);
    }
    paramj.b();
    Intent localIntent = new Intent();
    localIntent.setAction("com.way.message");
    localIntent.putExtra("message", paramj);
    this.a.sendBroadcast(localIntent);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.b.af
 * JD-Core Version:    0.6.2
 */