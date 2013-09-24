package org.jsoup.parser;

import org.jsoup.helper.StringUtil;

 enum HtmlTreeBuilderState$17
{
  HtmlTreeBuilderState$17()
  {
    super(str, 16, (byte)0);
  }

  final boolean a(Token paramToken, HtmlTreeBuilder paramHtmlTreeBuilder)
  {
    boolean bool2;
    if (paramToken.d())
      if (StringUtil.a(paramToken.e().o(), new String[] { "caption", "table", "tbody", "tfoot", "thead", "tr", "td", "th" }))
      {
        paramHtmlTreeBuilder.b(this);
        paramHtmlTreeBuilder.a(new Token.EndTag("select"));
        bool2 = paramHtmlTreeBuilder.a(paramToken);
      }
    boolean bool1;
    do
    {
      return bool2;
      if (!paramToken.f())
        break;
      if (!StringUtil.a(paramToken.g().o(), new String[] { "caption", "table", "tbody", "tfoot", "thead", "tr", "td", "th" }))
        break;
      paramHtmlTreeBuilder.b(this);
      bool1 = paramHtmlTreeBuilder.h(paramToken.g().o());
      bool2 = false;
    }
    while (!bool1);
    paramHtmlTreeBuilder.a(new Token.EndTag("select"));
    return paramHtmlTreeBuilder.a(paramToken);
    return paramHtmlTreeBuilder.a(paramToken, p);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.HtmlTreeBuilderState.17
 * JD-Core Version:    0.6.2
 */