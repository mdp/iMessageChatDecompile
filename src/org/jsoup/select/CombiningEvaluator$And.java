package org.jsoup.select;

import java.util.List;
import org.jsoup.helper.StringUtil;
import org.jsoup.nodes.Element;

final class CombiningEvaluator$And extends CombiningEvaluator
{
  public final boolean a(Element paramElement1, Element paramElement2)
  {
    for (int i = 0; i < this.a.size(); i++)
      if (!((Evaluator)this.a.get(i)).a(paramElement1, paramElement2))
        return false;
    return true;
  }

  public final String toString()
  {
    return StringUtil.a(this.a, " ");
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.select.CombiningEvaluator.And
 * JD-Core Version:    0.6.2
 */