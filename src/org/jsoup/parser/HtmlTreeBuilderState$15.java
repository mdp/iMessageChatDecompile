package org.jsoup.parser;

import org.jsoup.helper.StringUtil;
import org.jsoup.nodes.Element;

 enum HtmlTreeBuilderState$15
{
  HtmlTreeBuilderState$15()
  {
    super(str, 14, (byte)0);
  }

  private static void a(HtmlTreeBuilder paramHtmlTreeBuilder)
  {
    if (paramHtmlTreeBuilder.h("td"))
    {
      paramHtmlTreeBuilder.a(new Token.EndTag("td"));
      return;
    }
    paramHtmlTreeBuilder.a(new Token.EndTag("th"));
  }

  private static boolean b(Token paramToken, HtmlTreeBuilder paramHtmlTreeBuilder)
  {
    return paramHtmlTreeBuilder.a(paramToken, g);
  }

  final boolean a(Token paramToken, HtmlTreeBuilder paramHtmlTreeBuilder)
  {
    if (paramToken.f())
    {
      String str = paramToken.g().o();
      if (StringUtil.a(str, new String[] { "td", "th" }))
      {
        if (!paramHtmlTreeBuilder.h(str))
        {
          paramHtmlTreeBuilder.b(this);
          paramHtmlTreeBuilder.a(n);
          return false;
        }
        paramHtmlTreeBuilder.r();
        if (!paramHtmlTreeBuilder.v().a().equals(str))
          paramHtmlTreeBuilder.b(this);
        paramHtmlTreeBuilder.c(str);
        paramHtmlTreeBuilder.t();
        paramHtmlTreeBuilder.a(n);
        return true;
      }
      if (StringUtil.a(str, new String[] { "body", "caption", "col", "colgroup", "html" }))
      {
        paramHtmlTreeBuilder.b(this);
        return false;
      }
      if (StringUtil.a(str, new String[] { "table", "tbody", "tfoot", "thead", "tr" }))
      {
        if (!paramHtmlTreeBuilder.h(str))
        {
          paramHtmlTreeBuilder.b(this);
          return false;
        }
        a(paramHtmlTreeBuilder);
        return paramHtmlTreeBuilder.a(paramToken);
      }
      return b(paramToken, paramHtmlTreeBuilder);
    }
    if (paramToken.d())
      if (StringUtil.a(paramToken.e().o(), new String[] { "caption", "col", "colgroup", "tbody", "td", "tfoot", "th", "thead", "tr" }))
      {
        if ((!paramHtmlTreeBuilder.h("td")) && (!paramHtmlTreeBuilder.h("th")))
        {
          paramHtmlTreeBuilder.b(this);
          return false;
        }
        a(paramHtmlTreeBuilder);
        return paramHtmlTreeBuilder.a(paramToken);
      }
    return b(paramToken, paramHtmlTreeBuilder);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.HtmlTreeBuilderState.15
 * JD-Core Version:    0.6.2
 */