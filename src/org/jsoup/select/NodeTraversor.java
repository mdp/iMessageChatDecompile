package org.jsoup.select;

import org.jsoup.nodes.Node;

public class NodeTraversor
{
  private NodeVisitor a;

  public NodeTraversor(NodeVisitor paramNodeVisitor)
  {
    this.a = paramNodeVisitor;
  }

  public final void a(Node paramNode)
  {
    int i = 0;
    Node localNode = paramNode;
    while (localNode != null)
    {
      this.a.a(localNode, i);
      if (localNode.y() > 0)
      {
        localNode = localNode.a(0);
        i++;
      }
      else
      {
        while ((localNode.A() == null) && (i > 0))
        {
          this.a.b(localNode, i);
          localNode = localNode.u();
          i--;
        }
        this.a.b(localNode, i);
        if (localNode == paramNode)
          break;
        localNode = localNode.A();
      }
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.select.NodeTraversor
 * JD-Core Version:    0.6.2
 */