package org.jsoup.select;

import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;

class Collector$Accumulator
  implements NodeVisitor
{
  private final Element a;
  private final Elements b;
  private final Evaluator c;

  Collector$Accumulator(Element paramElement, Elements paramElements, Evaluator paramEvaluator)
  {
    this.a = paramElement;
    this.b = paramElements;
    this.c = paramEvaluator;
  }

  public final void a(Node paramNode, int paramInt)
  {
    if ((paramNode instanceof Element))
    {
      Element localElement = (Element)paramNode;
      if (this.c.a(this.a, localElement))
        this.b.a(localElement);
    }
  }

  public final void b(Node paramNode, int paramInt)
  {
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.select.Collector.Accumulator
 * JD-Core Version:    0.6.2
 */