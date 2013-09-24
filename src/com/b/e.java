package com.b;

public final class e extends Thread
{
  private f b;
  private g c;

  public e(d paramd)
  {
    this.b = new f(d.a(paramd), d.b(paramd));
    this.c = new g(d.a(paramd), d.c(paramd), d.d(paramd), d.b(paramd));
    this.b.a(d.e(paramd));
  }

  public final f a()
  {
    return this.b;
  }

  public final g b()
  {
    return this.c;
  }

  public final void run()
  {
    this.b.start();
    this.c.start();
    d.f(this.a);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.b.e
 * JD-Core Version:    0.6.2
 */