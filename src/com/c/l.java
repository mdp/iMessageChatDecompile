package com.c;

import java.io.Serializable;

public final class l
  implements Serializable
{
  private String a;
  private String b;
  private String c;
  private String d;
  private int e = 0;

  public final String a()
  {
    return this.d;
  }

  public final void a(int paramInt)
  {
    this.e = paramInt;
  }

  public final void a(String paramString)
  {
    if (paramString.indexOf("||") == -1);
    for (this.e = 0; ; this.e = 1)
    {
      this.d = paramString;
      return;
    }
  }

  public final int b()
  {
    return this.e;
  }

  public final void b(String paramString)
  {
    this.c = paramString;
  }

  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof l)) && (((l)paramObject).d.equals(this.d));
  }

  public final String toString()
  {
    return "User [id=" + this.d + ", name=" + this.a + ", email=" + this.b + ", password=" + this.c + ", img=" + this.e + ", ip=]";
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.c.l
 * JD-Core Version:    0.6.2
 */