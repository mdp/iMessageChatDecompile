package com.c;

import java.io.Serializable;

public final class k
  implements Serializable
{
  private int a;
  private int b;
  private long c;

  public final int a()
  {
    return this.a;
  }

  public final void a(long paramLong)
  {
    this.a = 2;
    this.c = paramLong;
  }

  public final void a(long paramLong, int paramInt)
  {
    this.b = paramInt;
    this.c = paramLong;
    this.a = 1;
  }

  public final int b()
  {
    return this.b;
  }

  public final long c()
  {
    return this.c;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.c.k
 * JD-Core Version:    0.6.2
 */