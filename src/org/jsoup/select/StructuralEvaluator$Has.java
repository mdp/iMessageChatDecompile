package org.jsoup.select;

import java.util.Iterator;
import org.jsoup.nodes.Element;

class StructuralEvaluator$Has extends StructuralEvaluator
{
  public final boolean a(Element paramElement1, Element paramElement2)
  {
    Iterator localIterator = paramElement2.q().iterator();
    while (localIterator.hasNext())
    {
      Element localElement = (Element)localIterator.next();
      if ((localElement != paramElement2) && (this.a.a(paramElement1, localElement)))
        return true;
    }
    return false;
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.a;
    return String.format(":has(%s)", arrayOfObject);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.select.StructuralEvaluator.Has
 * JD-Core Version:    0.6.2
 */