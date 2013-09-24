package org.jsoup.parser;

 enum HtmlTreeBuilderState$22
{
  HtmlTreeBuilderState$22()
  {
    super(str, 21, (byte)0);
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
    if ((paramToken.d()) && (paramToken.e().o().equals("noframes")))
      return paramHtmlTreeBuilder.a(paramToken, d);
    paramHtmlTreeBuilder.b(this);
    return false;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.HtmlTreeBuilderState.22
 * JD-Core Version:    0.6.2
 */