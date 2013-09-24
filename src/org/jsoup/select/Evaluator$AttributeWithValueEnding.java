package org.jsoup.select;

import org.jsoup.nodes.Element;

public final class Evaluator$AttributeWithValueEnding extends Evaluator.AttributeKeyPair
{
  public final boolean a(Element paramElement1, Element paramElement2)
  {
    return (paramElement2.d(this.a)) && (paramElement2.c(this.a).toLowerCase().endsWith(this.b));
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.a;
    arrayOfObject[1] = this.b;
    return String.format("[%s$=%s]", arrayOfObject);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.select.Evaluator.AttributeWithValueEnding
 * JD-Core Version:    0.6.2
 */