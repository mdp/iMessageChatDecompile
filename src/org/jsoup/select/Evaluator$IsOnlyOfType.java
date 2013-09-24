package org.jsoup.select;

import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.parser.Tag;

public final class Evaluator$IsOnlyOfType extends Evaluator
{
  public final boolean a(Element paramElement1, Element paramElement2)
  {
    Element localElement = paramElement2.k();
    if ((localElement == null) || ((localElement instanceof Document)));
    int j;
    do
    {
      return false;
      Elements localElements = localElement.m();
      int i = 0;
      j = 0;
      while (i < localElements.size())
      {
        if (localElements.a(i).h().equals(paramElement2.h()))
          j++;
        i++;
      }
    }
    while (j != 1);
    return true;
  }

  public final String toString()
  {
    return ":only-of-type";
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.select.Evaluator.IsOnlyOfType
 * JD-Core Version:    0.6.2
 */