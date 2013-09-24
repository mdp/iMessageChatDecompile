package org.jsoup.parser;

import org.jsoup.helper.StringUtil;

 enum HtmlTreeBuilderState$5
{
  HtmlTreeBuilderState$5()
  {
    super(str, 4, (byte)0);
  }

  private boolean b(Token paramToken, HtmlTreeBuilder paramHtmlTreeBuilder)
  {
    paramHtmlTreeBuilder.b(this);
    paramHtmlTreeBuilder.a(new Token.EndTag("noscript"));
    return paramHtmlTreeBuilder.a(paramToken);
  }

  final boolean a(Token paramToken, HtmlTreeBuilder paramHtmlTreeBuilder)
  {
    if (paramToken.b())
      paramHtmlTreeBuilder.b(this);
    while (true)
    {
      return true;
      if ((paramToken.d()) && (paramToken.e().o().equals("html")))
        return paramHtmlTreeBuilder.a(paramToken, g);
      if ((!paramToken.f()) || (!paramToken.g().o().equals("noscript")))
        break;
      paramHtmlTreeBuilder.h();
      paramHtmlTreeBuilder.a(d);
    }
    if ((!HtmlTreeBuilderState.a(paramToken)) && (!paramToken.h()))
    {
      if (paramToken.d())
        if (!StringUtil.a(paramToken.e().o(), new String[] { "basefont", "bgsound", "link", "meta", "noframes", "style" }));
    }
    else
      return paramHtmlTreeBuilder.a(paramToken, d);
    if ((paramToken.f()) && (paramToken.g().o().equals("br")))
      return b(paramToken, paramHtmlTreeBuilder);
    if (paramToken.d())
    {
      if (StringUtil.a(paramToken.e().o(), new String[] { "head", "noscript" }));
    }
    else
      if (!paramToken.f())
        break label237;
    paramHtmlTreeBuilder.b(this);
    return false;
    label237: return b(paramToken, paramHtmlTreeBuilder);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.HtmlTreeBuilderState.5
 * JD-Core Version:    0.6.2
 */