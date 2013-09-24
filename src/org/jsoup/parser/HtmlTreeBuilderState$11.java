package org.jsoup.parser;

import org.jsoup.helper.StringUtil;
import org.jsoup.nodes.Element;

 enum HtmlTreeBuilderState$11
{
  HtmlTreeBuilderState$11()
  {
    super(str, 10, (byte)0);
  }

  final boolean a(Token paramToken, HtmlTreeBuilder paramHtmlTreeBuilder)
  {
    if ((paramToken.f()) && (paramToken.g().o().equals("caption")))
    {
      if (!paramHtmlTreeBuilder.h(paramToken.g().o()))
      {
        paramHtmlTreeBuilder.b(this);
        return false;
      }
      paramHtmlTreeBuilder.r();
      if (!paramHtmlTreeBuilder.v().a().equals("caption"))
        paramHtmlTreeBuilder.b(this);
      paramHtmlTreeBuilder.c("caption");
      paramHtmlTreeBuilder.t();
      paramHtmlTreeBuilder.a(i);
    }
    do
    {
      return true;
      if (paramToken.d())
      {
        if (StringUtil.a(paramToken.e().o(), new String[] { "caption", "col", "colgroup", "tbody", "td", "tfoot", "th", "thead", "tr" }));
      }
      else
        if ((!paramToken.f()) || (!paramToken.g().o().equals("table")))
          break;
      paramHtmlTreeBuilder.b(this);
    }
    while (!paramHtmlTreeBuilder.a(new Token.EndTag("caption")));
    return paramHtmlTreeBuilder.a(paramToken);
    if (paramToken.f())
      if (StringUtil.a(paramToken.g().o(), new String[] { "body", "col", "colgroup", "html", "tbody", "td", "tfoot", "th", "thead", "tr" }))
      {
        paramHtmlTreeBuilder.b(this);
        return false;
      }
    return paramHtmlTreeBuilder.a(paramToken, g);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.HtmlTreeBuilderState.11
 * JD-Core Version:    0.6.2
 */