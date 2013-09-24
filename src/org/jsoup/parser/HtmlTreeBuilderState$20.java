package org.jsoup.parser;

 enum HtmlTreeBuilderState$20
{
  HtmlTreeBuilderState$20()
  {
    super(str, 19, (byte)0);
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
          if ((paramToken.d()) && (paramToken.e().o().equals("html")))
            return paramHtmlTreeBuilder.a(paramToken, g);
          if ((!paramToken.f()) || (!paramToken.g().o().equals("html")))
            break;
          paramHtmlTreeBuilder.a(v);
        }
      }
      if ((paramToken.d()) && (paramToken.e().o().equals("noframes")))
        return paramHtmlTreeBuilder.a(paramToken, d);
    }
    while (paramToken.l());
    paramHtmlTreeBuilder.b(this);
    return false;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.HtmlTreeBuilderState.20
 * JD-Core Version:    0.6.2
 */