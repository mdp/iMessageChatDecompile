package org.jsoup.select;

import org.jsoup.nodes.Element;

public final class Evaluator$Tag extends Evaluator
{
  private String a;

  public Evaluator$Tag(String paramString)
  {
    this.a = paramString;
  }

  public final boolean a(Element paramElement1, Element paramElement2)
  {
    return paramElement2.g().equals(this.a);
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.a;
    return String.format("%s", arrayOfObject);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.select.Evaluator.Tag
 * JD-Core Version:    0.6.2
 */