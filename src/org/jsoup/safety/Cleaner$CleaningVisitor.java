package org.jsoup.safety;

import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.select.NodeVisitor;

final class Cleaner$CleaningVisitor
  implements NodeVisitor
{
  private int b;
  private final Element c;
  private Element d;

  public final void a(Node paramNode, int paramInt)
  {
    if ((paramNode instanceof Element))
    {
      Element localElement1 = (Element)paramNode;
      if (Cleaner.a(this.a).a(localElement1.g()))
      {
        localElementMeta = Cleaner.a(this.a, localElement1);
        localElement2 = localElementMeta.a;
        this.d.a(localElement2);
        this.b += localElementMeta.b;
        this.d = localElement2;
      }
      while (paramNode == this.c)
      {
        Cleaner.ElementMeta localElementMeta;
        Element localElement2;
        return;
      }
      this.b = (1 + this.b);
      return;
    }
    if ((paramNode instanceof TextNode))
    {
      TextNode localTextNode = new TextNode(((TextNode)paramNode).d(), paramNode.w());
      this.d.a(localTextNode);
      return;
    }
    this.b = (1 + this.b);
  }

  public final void b(Node paramNode, int paramInt)
  {
    if (((paramNode instanceof Element)) && (Cleaner.a(this.a).a(paramNode.a())))
      this.d = this.d.k();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.safety.Cleaner.CleaningVisitor
 * JD-Core Version:    0.6.2
 */