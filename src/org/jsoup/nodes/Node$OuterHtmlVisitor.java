package org.jsoup.nodes;

import org.jsoup.select.NodeVisitor;

class Node$OuterHtmlVisitor
  implements NodeVisitor
{
  private StringBuilder a;
  private Document.OutputSettings b;

  Node$OuterHtmlVisitor(StringBuilder paramStringBuilder, Document.OutputSettings paramOutputSettings)
  {
    this.a = paramStringBuilder;
    this.b = paramOutputSettings;
  }

  public final void a(Node paramNode, int paramInt)
  {
    paramNode.a(this.a, paramInt, this.b);
  }

  public final void b(Node paramNode, int paramInt)
  {
    if (!paramNode.a().equals("#text"))
      paramNode.b(this.a, paramInt, this.b);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.nodes.Node.OuterHtmlVisitor
 * JD-Core Version:    0.6.2
 */