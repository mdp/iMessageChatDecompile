package org.jsoup.select;

import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

public abstract class Evaluator$CssNthEvaluator extends Evaluator
{
  protected final int a = 0;
  protected final int b = 1;

  protected abstract int a(Element paramElement);

  protected abstract String a();

  public final boolean a(Element paramElement1, Element paramElement2)
  {
    boolean bool = true;
    Element localElement = paramElement2.k();
    if ((localElement == null) || ((localElement instanceof Document)))
      bool = false;
    int i;
    do
    {
      do
      {
        return bool;
        i = a(paramElement2);
        if (this.a != 0)
          break;
      }
      while (i == this.b);
      return false;
    }
    while (((i - this.b) * this.a >= 0) && ((i - this.b) % this.a == 0));
    return false;
  }

  public String toString()
  {
    if (this.a == 0)
    {
      Object[] arrayOfObject3 = new Object[2];
      arrayOfObject3[0] = a();
      arrayOfObject3[1] = Integer.valueOf(this.b);
      return String.format(":%s(%d)", arrayOfObject3);
    }
    if (this.b == 0)
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = a();
      arrayOfObject2[1] = Integer.valueOf(this.a);
      return String.format(":%s(%dn)", arrayOfObject2);
    }
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = a();
    arrayOfObject1[1] = Integer.valueOf(this.a);
    arrayOfObject1[2] = Integer.valueOf(this.b);
    return String.format(":%s(%dn%+d)", arrayOfObject1);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.select.Evaluator.CssNthEvaluator
 * JD-Core Version:    0.6.2
 */