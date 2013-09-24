package org.jsoup.parser;

import org.jsoup.helper.StringUtil;
import org.jsoup.nodes.Element;

 enum HtmlTreeBuilderState$16
{
  HtmlTreeBuilderState$16()
  {
    super(str, 15, (byte)0);
  }

  final boolean a(Token paramToken, HtmlTreeBuilder paramHtmlTreeBuilder)
  {
    switch (HtmlTreeBuilderState.24.a[paramToken.a.ordinal()])
    {
    default:
      paramHtmlTreeBuilder.b(this);
      return false;
    case 5:
      Token.Character localCharacter = paramToken.k();
      if (localCharacter.m().equals(HtmlTreeBuilderState.a()))
      {
        paramHtmlTreeBuilder.b(this);
        return false;
      }
      paramHtmlTreeBuilder.a(localCharacter);
    case 1:
    case 2:
    case 3:
    case 4:
    case 6:
    }
    while (true)
    {
      return true;
      paramHtmlTreeBuilder.a(paramToken.i());
      continue;
      paramHtmlTreeBuilder.b(this);
      return false;
      Token.StartTag localStartTag = paramToken.e();
      String str2 = localStartTag.o();
      if (str2.equals("html"))
        return paramHtmlTreeBuilder.a(localStartTag, g);
      if (str2.equals("option"))
      {
        paramHtmlTreeBuilder.a(new Token.EndTag("option"));
        paramHtmlTreeBuilder.a(localStartTag);
      }
      else
      {
        if (str2.equals("optgroup"))
        {
          if (paramHtmlTreeBuilder.v().a().equals("option"))
            paramHtmlTreeBuilder.a(new Token.EndTag("option"));
          while (true)
          {
            paramHtmlTreeBuilder.a(localStartTag);
            break;
            if (paramHtmlTreeBuilder.v().a().equals("optgroup"))
              paramHtmlTreeBuilder.a(new Token.EndTag("optgroup"));
          }
        }
        if (str2.equals("select"))
        {
          paramHtmlTreeBuilder.b(this);
          return paramHtmlTreeBuilder.a(new Token.EndTag("select"));
        }
        if (StringUtil.a(str2, new String[] { "input", "keygen", "textarea" }))
        {
          paramHtmlTreeBuilder.b(this);
          if (!paramHtmlTreeBuilder.i("select"))
            break;
          paramHtmlTreeBuilder.a(new Token.EndTag("select"));
          return paramHtmlTreeBuilder.a(localStartTag);
        }
        if (str2.equals("script"))
          return paramHtmlTreeBuilder.a(paramToken, d);
        paramHtmlTreeBuilder.b(this);
        return false;
        String str1 = paramToken.g().o();
        if (str1.equals("optgroup"))
        {
          if ((paramHtmlTreeBuilder.v().a().equals("option")) && (paramHtmlTreeBuilder.e(paramHtmlTreeBuilder.v()) != null) && (paramHtmlTreeBuilder.e(paramHtmlTreeBuilder.v()).a().equals("optgroup")))
            paramHtmlTreeBuilder.a(new Token.EndTag("option"));
          if (paramHtmlTreeBuilder.v().a().equals("optgroup"))
            paramHtmlTreeBuilder.h();
          else
            paramHtmlTreeBuilder.b(this);
        }
        else if (str1.equals("option"))
        {
          if (paramHtmlTreeBuilder.v().a().equals("option"))
            paramHtmlTreeBuilder.h();
          else
            paramHtmlTreeBuilder.b(this);
        }
        else if (str1.equals("select"))
        {
          if (!paramHtmlTreeBuilder.i(str1))
          {
            paramHtmlTreeBuilder.b(this);
            return false;
          }
          paramHtmlTreeBuilder.c(str1);
          paramHtmlTreeBuilder.m();
        }
        else
        {
          paramHtmlTreeBuilder.b(this);
          return false;
          if (!paramHtmlTreeBuilder.v().a().equals("html"))
            paramHtmlTreeBuilder.b(this);
        }
      }
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.HtmlTreeBuilderState.16
 * JD-Core Version:    0.6.2
 */