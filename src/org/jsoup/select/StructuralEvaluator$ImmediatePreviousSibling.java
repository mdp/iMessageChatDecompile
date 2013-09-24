package org.jsoup.select;

import org.jsoup.nodes.Element;

class StructuralEvaluator$ImmediatePreviousSibling extends StructuralEvaluator
{
  public final boolean a(Element paramElement1, Element paramElement2)
  {
    if (paramElement1 == paramElement2);
    Element localElement;
    do
    {
      return false;
      localElement = paramElement2.o();
    }
    while ((localElement == null) || (!this.a.a(paramElement1, localElement)));
    return true;
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.a;
    return String.format(":prev%s", arrayOfObject);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.select.StructuralEvaluator.ImmediatePreviousSibling
 * JD-Core Version:    0.6.2
 */