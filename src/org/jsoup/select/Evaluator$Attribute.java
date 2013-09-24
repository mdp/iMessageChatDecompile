package org.jsoup.select;

import org.jsoup.nodes.Element;

public final class Evaluator$Attribute extends Evaluator
{
  private String a;

  public final boolean a(Element paramElement1, Element paramElement2)
  {
    return paramElement2.d(this.a);
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.a;
    return String.format("[%s]", arrayOfObject);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.select.Evaluator.Attribute
 * JD-Core Version:    0.6.2
 */