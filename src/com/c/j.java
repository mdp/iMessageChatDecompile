package com.c;

import activity.NewMessageActivity;
import activity.o;
import com.b.p;
import com.b.w;
import com.b.y;
import com.b.z;
import java.io.Serializable;
import java.util.concurrent.locks.ReentrantLock;

public final class j
  implements Serializable
{
  private b a;
  private int b = 0;
  private y c;
  private w d;
  private p e;
  private String f;
  private q g;
  private ReentrantLock h = new ReentrantLock();
  private NewMessageActivity i;
  private boolean j = true;

  public final int a()
  {
    return this.b;
  }

  public final void a(o paramo)
  {
    this.d = new w(paramo);
    this.a = new b();
    byte[] arrayOfByte = new byte[7];
    arrayOfByte[0] = 4;
    arrayOfByte[4] = 2;
    arrayOfByte[5] = 3;
    arrayOfByte[6] = 4;
    this.a.a(arrayOfByte, 7);
  }

  public final void a(b paramb)
  {
    this.a = paramb;
    this.b = 0;
  }

  public final void a(String paramString, NewMessageActivity paramNewMessageActivity)
  {
    this.f = paramString;
    this.b = 3;
    this.i = paramNewMessageActivity;
  }

  public final void a(String paramString, y paramy)
  {
    this.f = paramString;
    this.c = paramy;
    this.b = 1;
  }

  public final void a(boolean paramBoolean)
  {
    this.j = paramBoolean;
  }

  public final void b()
  {
    this.g = new q();
    this.g.c = this.a.a()[6];
    if (this.g.c == 4)
    {
      this.g.b = this.d.e();
      this.g.a = this.d.d();
    }
  }

  public final q c()
  {
    return this.g;
  }

  public final void d()
  {
    this.d = new w();
    this.d.a(this.a);
  }

  public final NewMessageActivity e()
  {
    return this.i;
  }

  public final y f()
  {
    return this.c;
  }

  public final String g()
  {
    return this.f;
  }

  public final b h()
  {
    return this.a;
  }

  public final int i()
  {
    return this.a.a()[0];
  }

  public final byte[] j()
  {
    return this.a.a();
  }

  public final void k()
  {
    this.e = new p();
    this.e.a(this.a);
  }

  public final p l()
  {
    return this.e;
  }

  public final w m()
  {
    return this.d;
  }

  public final int n()
  {
    return this.a.b();
  }

  public final z o()
  {
    z localz = new z();
    localz.a(this.a);
    return localz;
  }

  public final boolean p()
  {
    return this.j;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.c.j
 * JD-Core Version:    0.6.2
 */