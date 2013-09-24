package org.jsoup.select;

import java.util.List;
import org.jsoup.nodes.Element;

final class CombiningEvaluator$Or extends CombiningEvaluator
{
  public final boolean a(Element paramElement1, Element paramElement2)
  {
    for (int i = 0; ; i++)
    {
      int j = this.a.size();
      boolean bool = false;
      if (i < j)
      {
        if (((Evaluator)this.a.get(i)).a(paramElement1, paramElement2))
          bool = true;
      }
      else
        return bool;
    }
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.a;
    return String.format(":or%s", arrayOfObject);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.select.CombiningEvaluator.Or
 * JD-Core Version:    0.6.2
 */