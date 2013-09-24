package org.jsoup.parser;

 enum HtmlTreeBuilderState$8
{
  HtmlTreeBuilderState$8()
  {
    super(str, 7, (byte)0);
  }

  final boolean a(Token paramToken, HtmlTreeBuilder paramHtmlTreeBuilder)
  {
    if (paramToken.j())
      paramHtmlTreeBuilder.a(paramToken.k());
    while (true)
    {
      return true;
      if (paramToken.l())
      {
        paramHtmlTreeBuilder.b(this);
        paramHtmlTreeBuilder.h();
        paramHtmlTreeBuilder.a(paramHtmlTreeBuilder.c());
        return paramHtmlTreeBuilder.a(paramToken);
      }
      if (paramToken.f())
      {
        paramHtmlTreeBuilder.h();
        paramHtmlTreeBuilder.a(paramHtmlTreeBuilder.c());
      }
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.HtmlTreeBuilderState.8
 * JD-Core Version:    0.6.2
 */