package org.jsoup.select;

import org.jsoup.nodes.Element;

public class Evaluator$IsNthLastOfType extends Evaluator.CssNthEvaluator
{
  protected final int a(Element paramElement)
  {
    int i = 0;
    Elements localElements = paramElement.k().m();
    for (int j = paramElement.p().intValue(); j < localElements.size(); j++)
      if (localElements.a(j).h() == paramElement.h())
        i++;
    return i;
  }

  protected final String a()
  {
    return "nth-last-of-type";
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.select.Evaluator.IsNthLastOfType
 * JD-Core Version:    0.6.2
 */