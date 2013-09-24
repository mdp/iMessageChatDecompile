package com.b;

import android.content.Context;
import android.util.Log;
import com.c.j;
import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.locks.ReentrantLock;
import javax.net.ssl.SSLSocket;

public final class ad
{
  private SSLSocket a;
  private ae b;
  private ArrayList c;
  private q d;
  private q e;
  private ArrayList f = new ArrayList();
  private ReentrantLock g = new ReentrantLock();
  private Context h;
  private boolean i = false;

  public ad(Context paramContext)
  {
    this.h = paramContext;
    this.c = new ArrayList();
  }

  public final void a(q paramq1, q paramq2)
  {
    this.d = paramq1;
    this.e = paramq2;
  }

  public final void a(j paramj)
  {
    if (this.b == null)
    {
      this.f.add(paramj);
      Log.d("client", "down");
      return;
    }
    a locala = this.b.a();
    c localc = this.b.b();
    if ((locala == null) || (localc == null) || (!locala.a()) || (!localc.b()))
    {
      if (locala != null)
        locala.b();
      if (localc != null)
        localc.a();
      this.f.add(paramj);
      Log.d("client", "down");
      return;
    }
    this.b.b().a(paramj);
  }

  public final boolean a()
  {
    if (this.b != null)
    {
      Log.d("Apple", " Apple Thread start t");
      b();
      this.b = null;
    }
    this.b = new ae(this);
    this.b.start();
    return true;
  }

  public final void b()
  {
    this.f.clear();
    this.i = false;
    if (this.a != null);
    try
    {
      this.a.close();
      this.a = null;
      if (this.b != null)
      {
        if (this.b.b() != null)
          this.b.b().a();
        if (this.b.a() != null)
          this.b.a().b();
      }
      this.b = null;
      return;
    }
    catch (IOException localIOException)
    {
      while (true)
        localIOException.printStackTrace();
    }
  }

  public final void c()
  {
    if (this.b == null)
      return;
    a locala = this.b.a();
    c localc = this.b.b();
    if ((locala == null) || (localc == null) || (!locala.a()) || (!localc.b()))
    {
      if (locala != null)
        locala.b();
      if (localc != null)
        localc.a();
      Log.d("client", "down");
      return;
    }
    this.b.b().c();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.b.ad
 * JD-Core Version:    0.6.2
 */