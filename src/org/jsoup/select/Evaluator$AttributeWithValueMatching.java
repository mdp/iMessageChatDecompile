package org.jsoup.select;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.jsoup.nodes.Element;

public final class Evaluator$AttributeWithValueMatching extends Evaluator
{
  String a;
  Pattern b;

  public final boolean a(Element paramElement1, Element paramElement2)
  {
    return (paramElement2.d(this.a)) && (this.b.matcher(paramElement2.c(this.a)).find());
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.a;
    arrayOfObject[1] = this.b.toString();
    return String.format("[%s~=%s]", arrayOfObject);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.select.Evaluator.AttributeWithValueMatching
 * JD-Core Version:    0.6.2
 */