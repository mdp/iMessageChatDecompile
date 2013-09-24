package org.jsoup.select;

import org.jsoup.nodes.Element;

public final class Evaluator$ContainsText extends Evaluator
{
  private String a;

  public final boolean a(Element paramElement1, Element paramElement2)
  {
    return paramElement2.r().toLowerCase().contains(this.a);
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.a;
    return String.format(":contains(%s", arrayOfObject);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.select.Evaluator.ContainsText
 * JD-Core Version:    0.6.2
 */