package org.jsoup.select;

import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

public final class Evaluator$IsLastChild extends Evaluator
{
  public final boolean a(Element paramElement1, Element paramElement2)
  {
    Element localElement = paramElement2.k();
    return (localElement != null) && (!(localElement instanceof Document)) && (paramElement2.p().intValue() == -1 + localElement.m().size());
  }

  public final String toString()
  {
    return ":last-child";
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.select.Evaluator.IsLastChild
 * JD-Core Version:    0.6.2
 */