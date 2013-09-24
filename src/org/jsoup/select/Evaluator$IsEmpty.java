package org.jsoup.select;

import java.util.List;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.DocumentType;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.XmlDeclaration;

public final class Evaluator$IsEmpty extends Evaluator
{
  public final boolean a(Element paramElement1, Element paramElement2)
  {
    List localList = paramElement2.x();
    for (int i = 0; i < localList.size(); i++)
    {
      Node localNode = (Node)localList.get(i);
      if ((!(localNode instanceof Comment)) && (!(localNode instanceof XmlDeclaration)) && (!(localNode instanceof DocumentType)))
        return false;
    }
    return true;
  }

  public final String toString()
  {
    return ":empty";
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.select.Evaluator.IsEmpty
 * JD-Core Version:    0.6.2
 */