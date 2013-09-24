package org.jsoup.select;

import org.jsoup.nodes.Element;

class StructuralEvaluator$ImmediateParent extends StructuralEvaluator
{
  public final boolean a(Element paramElement1, Element paramElement2)
  {
    if (paramElement1 == paramElement2);
    Element localElement;
    do
    {
      return false;
      localElement = paramElement2.k();
    }
    while ((localElement == null) || (!this.a.a(paramElement1, localElement)));
    return true;
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.a;
    return String.format(":ImmediateParent%s", arrayOfObject);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.select.StructuralEvaluator.ImmediateParent
 * JD-Core Version:    0.6.2
 */