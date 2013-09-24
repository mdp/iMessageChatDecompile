package org.jsoup.select;

import java.util.Iterator;
import java.util.List;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Element;

public final class Evaluator$AttributeStarting extends Evaluator
{
  private String a;

  public final boolean a(Element paramElement1, Element paramElement2)
  {
    Iterator localIterator = paramElement2.v().b().iterator();
    while (localIterator.hasNext())
      if (((Attribute)localIterator.next()).a().startsWith(this.a))
        return true;
    return false;
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.a;
    return String.format("[^%s]", arrayOfObject);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.select.Evaluator.AttributeStarting
 * JD-Core Version:    0.6.2
 */