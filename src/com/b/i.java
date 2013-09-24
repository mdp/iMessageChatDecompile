package com.b;

import android.content.Context;
import android.util.Log;
import com.a.f;
import java.io.IOException;
import java.net.Socket;
import java.util.ArrayList;
import java.util.concurrent.locks.ReentrantLock;

public final class i
{
  private Socket a;
  private j b;
  private String c;
  private int d;
  private ArrayList e;
  private q f;
  private String g;
  private f h;
  private ArrayList i;
  private ReentrantLock j;
  private Context k;
  private boolean l = false;

  public i(Context paramContext, String paramString, int paramInt)
  {
    this.c = paramString;
    this.d = paramInt;
    this.i = new ArrayList();
    this.j = new ReentrantLock();
    this.k = paramContext;
    this.e = new ArrayList();
  }

  public final void a(q paramq)
  {
    this.f = paramq;
  }

  public final void a(com.c.j paramj)
  {
    this.b.b().a(paramj);
  }

  public final void a(String paramString, f paramf)
  {
    this.g = paramString;
    this.h = paramf;
  }

  public final boolean a()
  {
    return this.l;
  }

  public final void b(com.c.j paramj)
  {
    k localk = this.b.a();
    l locall = this.b.b();
    if ((localk == null) || (locall == null) || (!localk.a()) || (!locall.c()))
    {
      if (!this.l)
      {
        if (localk != null)
          localk.b();
        if (locall != null)
          locall.b();
        this.i.add(paramj);
        Log.d("client", "down");
        b();
      }
      return;
    }
    this.b.b().b(paramj);
  }

  public final boolean b()
  {
    if (!this.l)
    {
      this.l = true;
      this.b = new j(this);
      this.b.start();
    }
    return true;
  }

  public final void c()
  {
    this.b.b().a();
  }

  public final void d()
  {
    this.i.clear();
    this.l = false;
    if (this.b.b() != null)
      this.b.b().b();
    if (this.b.a() != null)
      this.b.a().b();
  }

  public final void e()
  {
    if (this.a != null);
    try
    {
      this.a.close();
      this.a = null;
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.b.i
 * JD-Core Version:    0.6.2
 */