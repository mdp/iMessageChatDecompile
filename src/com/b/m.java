package com.b;

import android.content.Context;
import android.util.Log;

public final class m
{
  private i a;
  private n b = null;
  private Context c;
  private ad d;

  public m(Context paramContext, i parami, ad paramad)
  {
    this.a = parami;
    this.c = paramContext;
    this.d = paramad;
  }

  public final void a()
  {
    if (this.b != null)
      this.b.a(false);
  }

  public final void b()
  {
    Log.d("Heart", "Heart Start");
    if (this.b != null)
      this.b.a(false);
    this.b = new n(this);
    this.b.a(true);
    this.b.start();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.b.m
 * JD-Core Version:    0.6.2
 */