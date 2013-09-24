package org.jsoup.parser;

import org.jsoup.helper.StringUtil;
import org.jsoup.nodes.Element;

 enum HtmlTreeBuilderState$13
{
  HtmlTreeBuilderState$13()
  {
    super(str, 12, (byte)0);
  }

  private boolean b(Token paramToken, HtmlTreeBuilder paramHtmlTreeBuilder)
  {
    if ((!paramHtmlTreeBuilder.h("tbody")) && (!paramHtmlTreeBuilder.h("thead")) && (!paramHtmlTreeBuilder.e("tfoot")))
    {
      paramHtmlTreeBuilder.b(this);
      return false;
    }
    paramHtmlTreeBuilder.k();
    paramHtmlTreeBuilder.a(new Token.EndTag(paramHtmlTreeBuilder.v().a()));
    return paramHtmlTreeBuilder.a(paramToken);
  }

  private static boolean c(Token paramToken, HtmlTreeBuilder paramHtmlTreeBuilder)
  {
    return paramHtmlTreeBuilder.a(paramToken, i);
  }

  final boolean a(Token paramToken, HtmlTreeBuilder paramHtmlTreeBuilder)
  {
    Token.StartTag localStartTag;
    String str2;
    switch (HtmlTreeBuilderState.24.a[paramToken.a.ordinal()])
    {
    default:
      return c(paramToken, paramHtmlTreeBuilder);
    case 3:
      localStartTag = paramToken.e();
      str2 = localStartTag.o();
      if (str2.equals("tr"))
      {
        paramHtmlTreeBuilder.k();
        paramHtmlTreeBuilder.a(localStartTag);
        paramHtmlTreeBuilder.a(n);
      }
      break;
    case 4:
    }
    String str1;
    while (true)
    {
      return true;
      if (StringUtil.a(str2, new String[] { "th", "td" }))
      {
        paramHtmlTreeBuilder.b(this);
        paramHtmlTreeBuilder.a(new Token.StartTag("tr"));
        return paramHtmlTreeBuilder.a(localStartTag);
      }
      if (StringUtil.a(str2, new String[] { "caption", "col", "colgroup", "tbody", "tfoot", "thead" }))
        return b(paramToken, paramHtmlTreeBuilder);
      return c(paramToken, paramHtmlTreeBuilder);
      str1 = paramToken.g().o();
      if (!StringUtil.a(str1, new String[] { "tbody", "tfoot", "thead" }))
        break;
      if (!paramHtmlTreeBuilder.h(str1))
      {
        paramHtmlTreeBuilder.b(this);
        return false;
      }
      paramHtmlTreeBuilder.k();
      paramHtmlTreeBuilder.h();
      paramHtmlTreeBuilder.a(i);
    }
    if (str1.equals("table"))
      return b(paramToken, paramHtmlTreeBuilder);
    if (StringUtil.a(str1, new String[] { "body", "caption", "col", "colgroup", "html", "td", "th", "tr" }))
    {
      paramHtmlTreeBuilder.b(this);
      return false;
    }
    return c(paramToken, paramHtmlTreeBuilder);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.HtmlTreeBuilderState.13
 * JD-Core Version:    0.6.2
 */