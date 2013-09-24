package org.jsoup.parser;

import org.jsoup.nodes.Element;

 enum HtmlTreeBuilderState$19
{
  HtmlTreeBuilderState$19()
  {
    super(str, 18, (byte)0);
  }

  final boolean a(Token paramToken, HtmlTreeBuilder paramHtmlTreeBuilder)
  {
    if (HtmlTreeBuilderState.a(paramToken))
      paramHtmlTreeBuilder.a(paramToken.k());
    do
    {
      while (true)
      {
        return true;
        if (paramToken.h())
        {
          paramHtmlTreeBuilder.a(paramToken.i());
        }
        else
        {
          if (paramToken.b())
          {
            paramHtmlTreeBuilder.b(this);
            return false;
          }
          if (paramToken.d())
          {
            Token.StartTag localStartTag = paramToken.e();
            String str = localStartTag.o();
            if (str.equals("html"))
              return paramHtmlTreeBuilder.a(localStartTag, g);
            if (str.equals("frameset"))
            {
              paramHtmlTreeBuilder.a(localStartTag);
            }
            else if (str.equals("frame"))
            {
              paramHtmlTreeBuilder.b(localStartTag);
            }
            else
            {
              if (str.equals("noframes"))
                return paramHtmlTreeBuilder.a(localStartTag, d);
              paramHtmlTreeBuilder.b(this);
              return false;
            }
          }
          else
          {
            if ((!paramToken.f()) || (!paramToken.g().o().equals("frameset")))
              break;
            if (paramHtmlTreeBuilder.v().a().equals("html"))
            {
              paramHtmlTreeBuilder.b(this);
              return false;
            }
            paramHtmlTreeBuilder.h();
            if ((!paramHtmlTreeBuilder.g()) && (!paramHtmlTreeBuilder.v().a().equals("frameset")))
              paramHtmlTreeBuilder.a(t);
          }
        }
      }
      if (!paramToken.l())
        break;
    }
    while (paramHtmlTreeBuilder.v().a().equals("html"));
    paramHtmlTreeBuilder.b(this);
    return true;
    paramHtmlTreeBuilder.b(this);
    return false;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.HtmlTreeBuilderState.19
 * JD-Core Version:    0.6.2
 */