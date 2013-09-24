package org.jsoup.select;

import org.jsoup.nodes.Element;

public final class Evaluator$IsNthChild extends Evaluator.CssNthEvaluator
{
  protected final int a(Element paramElement)
  {
    return 1 + paramElement.p().intValue();
  }

  protected final String a()
  {
    return "nth-child";
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.select.Evaluator.IsNthChild
 * JD-Core Version:    0.6.2
 */