package org.jsoup.parser;

import org.jsoup.helper.StringUtil;
import org.jsoup.nodes.Element;

 enum HtmlTreeBuilderState$4
{
  HtmlTreeBuilderState$4()
  {
    super(str, 3, (byte)0);
  }

  private static boolean a(Token paramToken, TreeBuilder paramTreeBuilder)
  {
    paramTreeBuilder.a(new Token.EndTag("head"));
    return paramTreeBuilder.a(paramToken);
  }

  final boolean a(Token paramToken, HtmlTreeBuilder paramHtmlTreeBuilder)
  {
    if (HtmlTreeBuilderState.a(paramToken))
      paramHtmlTreeBuilder.a(paramToken.k());
    Token.StartTag localStartTag;
    String str2;
    Element localElement;
    do
    {
      return true;
      switch (HtmlTreeBuilderState.24.a[paramToken.a.ordinal()])
      {
      default:
        return a(paramToken, paramHtmlTreeBuilder);
      case 1:
        paramHtmlTreeBuilder.a(paramToken.i());
        return true;
      case 2:
        paramHtmlTreeBuilder.b(this);
        return false;
      case 3:
        localStartTag = paramToken.e();
        str2 = localStartTag.o();
        if (str2.equals("html"))
          return g.a(paramToken, paramHtmlTreeBuilder);
        if (!StringUtil.a(str2, new String[] { "base", "basefont", "bgsound", "command", "link" }))
          break label188;
        localElement = paramHtmlTreeBuilder.b(localStartTag);
      case 4:
      }
    }
    while ((!str2.equals("base")) || (!localElement.d("href")));
    paramHtmlTreeBuilder.a(localElement);
    return true;
    label188: if (str2.equals("meta"))
    {
      paramHtmlTreeBuilder.b(localStartTag);
      return true;
    }
    if (str2.equals("title"))
    {
      paramHtmlTreeBuilder.a(localStartTag);
      paramHtmlTreeBuilder.c.a(TokeniserState.c);
      paramHtmlTreeBuilder.b();
      paramHtmlTreeBuilder.a(HtmlTreeBuilderState.h);
      return true;
    }
    if (StringUtil.a(str2, new String[] { "noframes", "style" }))
    {
      HtmlTreeBuilderState.a(localStartTag, paramHtmlTreeBuilder);
      return true;
    }
    if (str2.equals("noscript"))
    {
      paramHtmlTreeBuilder.a(localStartTag);
      paramHtmlTreeBuilder.a(e);
      return true;
    }
    if (str2.equals("script"))
    {
      paramHtmlTreeBuilder.a(localStartTag);
      paramHtmlTreeBuilder.c.a(TokeniserState.f);
      paramHtmlTreeBuilder.b();
      paramHtmlTreeBuilder.a(h);
      return true;
    }
    if (str2.equals("head"))
    {
      paramHtmlTreeBuilder.b(this);
      return false;
    }
    return a(paramToken, paramHtmlTreeBuilder);
    String str1 = paramToken.g().o();
    if (str1.equals("head"))
    {
      paramHtmlTreeBuilder.h();
      paramHtmlTreeBuilder.a(f);
      return true;
    }
    if (StringUtil.a(str1, new String[] { "body", "html", "br" }))
      return a(paramToken, paramHtmlTreeBuilder);
    paramHtmlTreeBuilder.b(this);
    return false;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.HtmlTreeBuilderState.4
 * JD-Core Version:    0.6.2
 */