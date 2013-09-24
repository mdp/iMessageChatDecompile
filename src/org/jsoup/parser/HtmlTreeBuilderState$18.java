package org.jsoup.parser;

 enum HtmlTreeBuilderState$18
{
  HtmlTreeBuilderState$18()
  {
    super(str, 17, (byte)0);
  }

  final boolean a(Token paramToken, HtmlTreeBuilder paramHtmlTreeBuilder)
  {
    if (HtmlTreeBuilderState.a(paramToken))
      return paramHtmlTreeBuilder.a(paramToken, g);
    if (paramToken.h())
      paramHtmlTreeBuilder.a(paramToken.i());
    do
      while (true)
      {
        return true;
        if (paramToken.b())
        {
          paramHtmlTreeBuilder.b(this);
          return false;
        }
        if ((paramToken.d()) && (paramToken.e().o().equals("html")))
          return paramHtmlTreeBuilder.a(paramToken, g);
        if ((!paramToken.f()) || (!paramToken.g().o().equals("html")))
          break;
        if (paramHtmlTreeBuilder.g())
        {
          paramHtmlTreeBuilder.b(this);
          return false;
        }
        paramHtmlTreeBuilder.a(u);
      }
    while (paramToken.l());
    paramHtmlTreeBuilder.b(this);
    paramHtmlTreeBuilder.a(g);
    return paramHtmlTreeBuilder.a(paramToken);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.HtmlTreeBuilderState.18
 * JD-Core Version:    0.6.2
 */