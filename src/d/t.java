package d;

public class t
{
  protected int a;
  protected long b;
  private long c;
  private long d;

  public final void g()
  {
    this.c = System.currentTimeMillis();
  }

  public final void h()
  {
    this.d = System.currentTimeMillis();
    this.b = (this.d - this.c);
  }

  public final long i()
  {
    return this.b;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     d.t
 * JD-Core Version:    0.6.2
 */