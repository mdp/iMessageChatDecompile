package activity;

public final class z
{
  private String a;
  private String b;
  private int c;
  private int d;
  private String e;

  public z()
  {
  }

  public z(String paramString1, String paramString2, int paramInt)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramInt;
    this.e = "";
  }

  public final String a()
  {
    return this.a;
  }

  public final void a(int paramInt)
  {
    this.d = paramInt;
  }

  public final void a(String paramString)
  {
    this.a = paramString;
  }

  public final String b()
  {
    return this.b;
  }

  public final void b(String paramString)
  {
    this.b = paramString;
  }

  public final int c()
  {
    return this.d;
  }

  public final void c(String paramString)
  {
    this.e = paramString;
  }

  public final void d()
  {
    this.c = 0;
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
    while ((!(paramObject instanceof z)) || (!((z)paramObject).a.equals(this.a)));
    return true;
  }

  public final String f()
  {
    return this.e;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.z
 * JD-Core Version:    0.6.2
 */