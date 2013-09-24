package org.jsoup.select;

import org.jsoup.nodes.Element;

class StructuralEvaluator$Parent extends StructuralEvaluator
{
  public final boolean a(Element paramElement1, Element paramElement2)
  {
    if (paramElement1 == paramElement2);
    while (true)
    {
      return false;
      for (Element localElement = paramElement2.k(); localElement != paramElement1; localElement = localElement.k())
        if (this.a.a(paramElement1, localElement))
          return true;
    }
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.a;
    return String.format(":parent%s", arrayOfObject);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.select.StructuralEvaluator.Parent
 * JD-Core Version:    0.6.2
 */