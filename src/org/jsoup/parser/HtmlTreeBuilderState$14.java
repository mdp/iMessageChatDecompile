package org.jsoup.parser;

import org.jsoup.helper.StringUtil;

 enum HtmlTreeBuilderState$14
{
  HtmlTreeBuilderState$14()
  {
    super(str, 13, (byte)0);
  }

  private static boolean a(Token paramToken, TreeBuilder paramTreeBuilder)
  {
    if (paramTreeBuilder.a(new Token.EndTag("tr")))
      return paramTreeBuilder.a(paramToken);
    return false;
  }

  private static boolean b(Token paramToken, HtmlTreeBuilder paramHtmlTreeBuilder)
  {
    return paramHtmlTreeBuilder.a(paramToken, i);
  }

  final boolean a(Token paramToken, HtmlTreeBuilder paramHtmlTreeBuilder)
  {
    String str2;
    if (paramToken.d())
    {
      Token.StartTag localStartTag = paramToken.e();
      str2 = localStartTag.o();
      if (StringUtil.a(str2, new String[] { "th", "td" }))
      {
        paramHtmlTreeBuilder.l();
        paramHtmlTreeBuilder.a(localStartTag);
        paramHtmlTreeBuilder.a(o);
        paramHtmlTreeBuilder.u();
      }
    }
    String str1;
    while (true)
    {
      return true;
      if (StringUtil.a(str2, new String[] { "caption", "col", "colgroup", "tbody", "tfoot", "thead", "tr" }))
        return a(paramToken, paramHtmlTreeBuilder);
      return b(paramToken, paramHtmlTreeBuilder);
      if (!paramToken.f())
        break label322;
      str1 = paramToken.g().o();
      if (!str1.equals("tr"))
        break;
      if (!paramHtmlTreeBuilder.h(str1))
      {
        paramHtmlTreeBuilder.b(this);
        return false;
      }
      paramHtmlTreeBuilder.l();
      paramHtmlTreeBuilder.h();
      paramHtmlTreeBuilder.a(m);
    }
    if (str1.equals("table"))
      return a(paramToken, paramHtmlTreeBuilder);
    if (StringUtil.a(str1, new String[] { "tbody", "tfoot", "thead" }))
    {
      if (!paramHtmlTreeBuilder.h(str1))
      {
        paramHtmlTreeBuilder.b(this);
        return false;
      }
      paramHtmlTreeBuilder.a(new Token.EndTag("tr"));
      return paramHtmlTreeBuilder.a(paramToken);
    }
    if (StringUtil.a(str1, new String[] { "body", "caption", "col", "colgroup", "html", "td", "th" }))
    {
      paramHtmlTreeBuilder.b(this);
      return false;
    }
    return b(paramToken, paramHtmlTreeBuilder);
    label322: return b(paramToken, paramHtmlTreeBuilder);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.HtmlTreeBuilderState.14
 * JD-Core Version:    0.6.2
 */