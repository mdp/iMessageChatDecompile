package org.jsoup.parser;

import org.jsoup.helper.StringUtil;

 enum HtmlTreeBuilderState$2
{
  HtmlTreeBuilderState$2()
  {
    super(str, 1, (byte)0);
  }

  private static boolean b(Token paramToken, HtmlTreeBuilder paramHtmlTreeBuilder)
  {
    paramHtmlTreeBuilder.a("html");
    paramHtmlTreeBuilder.a(c);
    return paramHtmlTreeBuilder.a(paramToken);
  }

  final boolean a(Token paramToken, HtmlTreeBuilder paramHtmlTreeBuilder)
  {
    if (paramToken.b())
    {
      paramHtmlTreeBuilder.b(this);
      return false;
    }
    if (paramToken.h())
      paramHtmlTreeBuilder.a(paramToken.i());
    while (true)
    {
      return true;
      if (HtmlTreeBuilderState.a(paramToken))
        return true;
      if ((!paramToken.d()) || (!paramToken.e().o().equals("html")))
        break;
      paramHtmlTreeBuilder.a(paramToken.e());
      paramHtmlTreeBuilder.a(c);
    }
    if (paramToken.f())
      if (StringUtil.a(paramToken.g().o(), new String[] { "head", "body", "html", "br" }))
        return b(paramToken, paramHtmlTreeBuilder);
    if (paramToken.f())
    {
      paramHtmlTreeBuilder.b(this);
      return false;
    }
    return b(paramToken, paramHtmlTreeBuilder);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.HtmlTreeBuilderState.2
 * JD-Core Version:    0.6.2
 */