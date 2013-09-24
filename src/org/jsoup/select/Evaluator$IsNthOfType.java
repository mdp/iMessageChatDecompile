package org.jsoup.select;

import org.jsoup.nodes.Element;

public class Evaluator$IsNthOfType extends Evaluator.CssNthEvaluator
{
  protected final int a(Element paramElement)
  {
    int i = 0;
    Elements localElements = paramElement.k().m();
    int j = 0;
    while (i < localElements.size())
    {
      if (localElements.a(i).h() == paramElement.h())
        j++;
      if (localElements.a(i) == paramElement)
        break;
      i++;
    }
    return j;
  }

  protected final String a()
  {
    return "nth-of-type";
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.select.Evaluator.IsNthOfType
 * JD-Core Version:    0.6.2
 */