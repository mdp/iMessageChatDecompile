package com.b;

import android.content.Context;
import android.content.Intent;
import com.c.b;
import com.c.j;
import d.h;
import d.l;
import java.util.ArrayList;
import java.util.concurrent.locks.ReentrantLock;

public final class d
{
  private e a;
  private i b;
  private q c;
  private boolean d = false;
  private ArrayList e;
  private ReentrantLock f;
  private Context g;

  public d(Context paramContext, i parami)
  {
    this.b = parami;
    this.e = new ArrayList();
    this.f = new ReentrantLock();
    this.g = paramContext;
  }

  public final void a(q paramq)
  {
    this.c = paramq;
  }

  public final void a(j paramj)
  {
    if (this.d)
    {
      this.a.a().a(paramj);
      return;
    }
    j localj = new j();
    byte[] arrayOfByte = new byte[9];
    arrayOfByte[0] = 3;
    arrayOfByte[4] = 4;
    arrayOfByte[5] = 3;
    arrayOfByte[6] = 1;
    arrayOfByte[7] = 1;
    arrayOfByte[8] = 1;
    localj.a(new b(arrayOfByte, arrayOfByte.length));
    localj.k();
    Intent localIntent = new Intent();
    localIntent.setAction("com.way.message");
    localIntent.putExtra("message", localj);
    this.g.sendBroadcast(localIntent);
  }

  public final boolean a()
  {
    this.a = new e(this);
    this.a.start();
    return true;
  }

  public final l b()
  {
    return this.a.b().b();
  }

  public final void b(j paramj)
  {
    if (this.d)
    {
      this.a.b().a(paramj);
      return;
    }
    j localj = new j();
    byte[] arrayOfByte = new byte[9];
    arrayOfByte[0] = 3;
    arrayOfByte[4] = 4;
    arrayOfByte[5] = 3;
    arrayOfByte[6] = 1;
    arrayOfByte[7] = 1;
    arrayOfByte[8] = 1;
    localj.a(new b(arrayOfByte, arrayOfByte.length));
    localj.k();
    Intent localIntent = new Intent();
    localIntent.setAction("com.way.message");
    localIntent.putExtra("message", localj);
    this.g.sendBroadcast(localIntent);
  }

  public final h c()
  {
    return this.a.a().a();
  }

  public final void d()
  {
    if (this.a != null)
    {
      this.a.a().b();
      this.a.b().a();
    }
    this.e.clear();
    this.d = false;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.b.d
 * JD-Core Version:    0.6.2
 */