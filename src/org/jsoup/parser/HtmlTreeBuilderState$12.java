package org.jsoup.parser;

import org.jsoup.nodes.Element;

 enum HtmlTreeBuilderState$12
{
  HtmlTreeBuilderState$12()
  {
    super(str, 11, (byte)0);
  }

  private static boolean a(Token paramToken, TreeBuilder paramTreeBuilder)
  {
    if (paramTreeBuilder.a(new Token.EndTag("colgroup")))
      return paramTreeBuilder.a(paramToken);
    return true;
  }

  final boolean a(Token paramToken, HtmlTreeBuilder paramHtmlTreeBuilder)
  {
    if (HtmlTreeBuilderState.a(paramToken))
      paramHtmlTreeBuilder.a(paramToken.k());
    do
    {
      return true;
      switch (HtmlTreeBuilderState.24.a[paramToken.a.ordinal()])
      {
      case 5:
      default:
        return a(paramToken, paramHtmlTreeBuilder);
      case 1:
        paramHtmlTreeBuilder.a(paramToken.i());
        return true;
      case 2:
        paramHtmlTreeBuilder.b(this);
        return true;
      case 3:
        Token.StartTag localStartTag = paramToken.e();
        String str = localStartTag.o();
        if (str.equals("html"))
          return paramHtmlTreeBuilder.a(paramToken, g);
        if (str.equals("col"))
        {
          paramHtmlTreeBuilder.b(localStartTag);
          return true;
        }
        return a(paramToken, paramHtmlTreeBuilder);
      case 4:
        if (paramToken.g().o().equals("colgroup"))
        {
          if (paramHtmlTreeBuilder.v().a().equals("html"))
          {
            paramHtmlTreeBuilder.b(this);
            return false;
          }
          paramHtmlTreeBuilder.h();
          paramHtmlTreeBuilder.a(i);
          return true;
        }
        return a(paramToken, paramHtmlTreeBuilder);
      case 6:
      }
    }
    while (paramHtmlTreeBuilder.v().a().equals("html"));
    return a(paramToken, paramHtmlTreeBuilder);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.HtmlTreeBuilderState.12
 * JD-Core Version:    0.6.2
 */