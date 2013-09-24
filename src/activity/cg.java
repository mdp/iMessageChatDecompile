package activity;

public final class cg
{
  private String a;
  private int b;
  private int c;
  private String d;
  private String e;
  private String f;
  private int g;
  private boolean h;

  public cg()
  {
  }

  public cg(String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3, String paramString4)
  {
    this.a = paramString1;
    this.b = paramInt1;
    this.c = paramInt2;
    this.d = paramString2;
    this.e = paramString3;
    this.f = paramString4;
    this.g = ci.b;
  }

  public final String a()
  {
    return this.d;
  }

  public final void a(int paramInt)
  {
    this.g = paramInt;
  }

  public final void a(String paramString)
  {
    this.d = paramString;
  }

  public final int b()
  {
    return this.g;
  }

  public final void b(int paramInt)
  {
    this.c = (paramInt + this.c);
  }

  public final void b(String paramString)
  {
    this.a = paramString;
  }

  public final String c()
  {
    return this.a;
  }

  public final void c(String paramString)
  {
    this.e = paramString;
  }

  public final int d()
  {
    return this.b;
  }

  public final void d(String paramString)
  {
    this.f = paramString;
  }

  public final int e()
  {
    return this.c;
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    do
    {
      return false;
      if (paramObject == this)
        return true;
    }
    while ((!(paramObject instanceof cg)) || (!((cg)paramObject).a.equals(this.a)));
    return true;
  }

  public final String f()
  {
    return this.e;
  }

  public final String g()
  {
    return this.f;
  }

  public final void h()
  {
    if (this.h);
    for (boolean bool = false; ; bool = true)
    {
      this.h = bool;
      return;
    }
  }

  public final boolean i()
  {
    return this.h;
  }

  public final String toString()
  {
    return "RecentChatEntity [id=" + this.a + ", img=" + this.b + ", count=" + this.c + ", name=" + this.d + ", time=" + this.e + ", msg=" + this.f + "]";
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.cg
 * JD-Core Version:    0.6.2
 */