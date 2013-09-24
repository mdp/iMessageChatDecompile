package org.jsoup.select;

import org.jsoup.nodes.Element;

public final class Evaluator$IsNthLastChild extends Evaluator.CssNthEvaluator
{
  protected final int a(Element paramElement)
  {
    return paramElement.k().m().size() - paramElement.p().intValue();
  }

  protected final String a()
  {
    return "nth-last-child";
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.select.Evaluator.IsNthLastChild
 * JD-Core Version:    0.6.2
 */