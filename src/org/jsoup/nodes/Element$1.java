package org.jsoup.nodes;

import org.jsoup.parser.Tag;
import org.jsoup.select.NodeVisitor;

class Element$1
  implements NodeVisitor
{
  Element$1(Element paramElement, StringBuilder paramStringBuilder)
  {
  }

  public final void a(Node paramNode, int paramInt)
  {
    if ((paramNode instanceof TextNode))
    {
      TextNode localTextNode = (TextNode)paramNode;
      Element.a(this.a, localTextNode);
    }
    Element localElement;
    do
    {
      do
        return;
      while (!(paramNode instanceof Element));
      localElement = (Element)paramNode;
    }
    while ((this.a.length() <= 0) || ((!localElement.i()) && (!Element.a(localElement).a().equals("br"))) || (TextNode.b(this.a)));
    this.a.append(" ");
  }

  public final void b(Node paramNode, int paramInt)
  {
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.nodes.Element.1
 * JD-Core Version:    0.6.2
 */