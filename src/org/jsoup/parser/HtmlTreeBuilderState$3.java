package org.jsoup.parser;

import org.jsoup.helper.StringUtil;

 enum HtmlTreeBuilderState$3
{
  HtmlTreeBuilderState$3()
  {
    super(str, 2, (byte)0);
  }

  final boolean a(Token paramToken, HtmlTreeBuilder paramHtmlTreeBuilder)
  {
    if (HtmlTreeBuilderState.a(paramToken))
      return true;
    if (paramToken.h())
    {
      paramHtmlTreeBuilder.a(paramToken.i());
      return true;
    }
    if (paramToken.b())
    {
      paramHtmlTreeBuilder.b(this);
      return false;
    }
    if ((paramToken.d()) && (paramToken.e().o().equals("html")))
      return g.a(paramToken, paramHtmlTreeBuilder);
    if ((paramToken.d()) && (paramToken.e().o().equals("head")))
    {
      paramHtmlTreeBuilder.f(paramHtmlTreeBuilder.a(paramToken.e()));
      paramHtmlTreeBuilder.a(d);
      return true;
    }
    if (paramToken.f())
      if (StringUtil.a(paramToken.g().o(), new String[] { "head", "body", "html", "br" }))
      {
        paramHtmlTreeBuilder.a(new Token.StartTag("head"));
        return paramHtmlTreeBuilder.a(paramToken);
      }
    if (paramToken.f())
    {
      paramHtmlTreeBuilder.b(this);
      return false;
    }
    paramHtmlTreeBuilder.a(new Token.StartTag("head"));
    return paramHtmlTreeBuilder.a(paramToken);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.HtmlTreeBuilderState.3
 * JD-Core Version:    0.6.2
 */