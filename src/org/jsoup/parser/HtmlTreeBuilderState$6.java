package org.jsoup.parser;

import org.jsoup.helper.StringUtil;
import org.jsoup.nodes.Element;

 enum HtmlTreeBuilderState$6
{
  HtmlTreeBuilderState$6()
  {
    super(str, 5, (byte)0);
  }

  private static boolean b(Token paramToken, HtmlTreeBuilder paramHtmlTreeBuilder)
  {
    paramHtmlTreeBuilder.a(new Token.StartTag("body"));
    paramHtmlTreeBuilder.a(true);
    return paramHtmlTreeBuilder.a(paramToken);
  }

  final boolean a(Token paramToken, HtmlTreeBuilder paramHtmlTreeBuilder)
  {
    if (HtmlTreeBuilderState.a(paramToken))
      paramHtmlTreeBuilder.a(paramToken.k());
    while (true)
    {
      return true;
      if (paramToken.h())
      {
        paramHtmlTreeBuilder.a(paramToken.i());
      }
      else if (paramToken.b())
      {
        paramHtmlTreeBuilder.b(this);
      }
      else if (paramToken.d())
      {
        Token.StartTag localStartTag = paramToken.e();
        String str = localStartTag.o();
        if (str.equals("html"))
          return paramHtmlTreeBuilder.a(paramToken, g);
        if (str.equals("body"))
        {
          paramHtmlTreeBuilder.a(localStartTag);
          paramHtmlTreeBuilder.a(false);
          paramHtmlTreeBuilder.a(g);
        }
        else if (str.equals("frameset"))
        {
          paramHtmlTreeBuilder.a(localStartTag);
          paramHtmlTreeBuilder.a(s);
        }
        else if (StringUtil.a(str, new String[] { "base", "basefont", "bgsound", "link", "meta", "noframes", "script", "style", "title" }))
        {
          paramHtmlTreeBuilder.b(this);
          Element localElement = paramHtmlTreeBuilder.n();
          paramHtmlTreeBuilder.b(localElement);
          paramHtmlTreeBuilder.a(paramToken, d);
          paramHtmlTreeBuilder.d(localElement);
        }
        else
        {
          if (str.equals("head"))
          {
            paramHtmlTreeBuilder.b(this);
            return false;
          }
          b(paramToken, paramHtmlTreeBuilder);
        }
      }
      else if (paramToken.f())
      {
        if (StringUtil.a(paramToken.g().o(), new String[] { "body", "html" }))
        {
          b(paramToken, paramHtmlTreeBuilder);
        }
        else
        {
          paramHtmlTreeBuilder.b(this);
          return false;
        }
      }
      else
      {
        b(paramToken, paramHtmlTreeBuilder);
      }
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.HtmlTreeBuilderState.6
 * JD-Core Version:    0.6.2
 */