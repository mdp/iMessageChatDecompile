package org.jsoup.select;

import org.jsoup.nodes.Element;

public final class Evaluator$ContainsOwnText extends Evaluator
{
  private String a;

  public final boolean a(Element paramElement1, Element paramElement2)
  {
    return paramElement2.s().toLowerCase().contains(this.a);
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.a;
    return String.format(":containsOwn(%s", arrayOfObject);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.select.Evaluator.ContainsOwnText
 * JD-Core Version:    0.6.2
 */