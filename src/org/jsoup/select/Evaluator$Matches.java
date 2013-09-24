package org.jsoup.select;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.jsoup.nodes.Element;

public final class Evaluator$Matches extends Evaluator
{
  private Pattern a;

  public final boolean a(Element paramElement1, Element paramElement2)
  {
    return this.a.matcher(paramElement2.r()).find();
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.a;
    return String.format(":matches(%s", arrayOfObject);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.select.Evaluator.Matches
 * JD-Core Version:    0.6.2
 */