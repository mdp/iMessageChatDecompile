package org.jsoup.select;

import org.jsoup.nodes.Element;

class StructuralEvaluator$Not extends StructuralEvaluator
{
  public final boolean a(Element paramElement1, Element paramElement2)
  {
    return !this.a.a(paramElement1, paramElement2);
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.a;
    return String.format(":not%s", arrayOfObject);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.select.StructuralEvaluator.Not
 * JD-Core Version:    0.6.2
 */