package org.jsoup.parser;

 enum HtmlTreeBuilderState$21
{
  HtmlTreeBuilderState$21()
  {
    super(str, 20, (byte)0);
  }

  final boolean a(Token paramToken, HtmlTreeBuilder paramHtmlTreeBuilder)
  {
    if (paramToken.h())
      paramHtmlTreeBuilder.a(paramToken.i());
    do
    {
      return true;
      if ((paramToken.b()) || (HtmlTreeBuilderState.a(paramToken)) || ((paramToken.d()) && (paramToken.e().o().equals("html"))))
        return paramHtmlTreeBuilder.a(paramToken, g);
    }
    while (paramToken.l());
    paramHtmlTreeBuilder.b(this);
    paramHtmlTreeBuilder.a(g);
    return paramHtmlTreeBuilder.a(paramToken);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.HtmlTreeBuilderState.21
 * JD-Core Version:    0.6.2
 */