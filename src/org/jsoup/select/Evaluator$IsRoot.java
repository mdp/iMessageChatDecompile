package org.jsoup.select;

import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

public final class Evaluator$IsRoot extends Evaluator
{
  public final boolean a(Element paramElement1, Element paramElement2)
  {
    if ((paramElement1 instanceof Document))
      paramElement1 = paramElement1.l();
    return paramElement2 == paramElement1;
  }

  public final String toString()
  {
    return ":root";
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.select.Evaluator.IsRoot
 * JD-Core Version:    0.6.2
 */