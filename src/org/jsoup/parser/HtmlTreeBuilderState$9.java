package org.jsoup.parser;

import org.jsoup.helper.StringUtil;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Element;

 enum HtmlTreeBuilderState$9
{
  HtmlTreeBuilderState$9()
  {
    super(str, 8, (byte)0);
  }

  private boolean b(Token paramToken, HtmlTreeBuilder paramHtmlTreeBuilder)
  {
    paramHtmlTreeBuilder.b(this);
    if (StringUtil.a(paramHtmlTreeBuilder.v().a(), new String[] { "table", "tbody", "tfoot", "thead", "tr" }))
    {
      paramHtmlTreeBuilder.b(true);
      boolean bool = paramHtmlTreeBuilder.a(paramToken, g);
      paramHtmlTreeBuilder.b(false);
      return bool;
    }
    return paramHtmlTreeBuilder.a(paramToken, g);
  }

  final boolean a(Token paramToken, HtmlTreeBuilder paramHtmlTreeBuilder)
  {
    boolean bool = true;
    if (paramToken.j())
    {
      paramHtmlTreeBuilder.p();
      paramHtmlTreeBuilder.b();
      paramHtmlTreeBuilder.a(j);
      bool = paramHtmlTreeBuilder.a(paramToken);
    }
    label612: 
    do
    {
      return bool;
      if (paramToken.h())
      {
        paramHtmlTreeBuilder.a(paramToken.i());
        return bool;
      }
      if (paramToken.b())
      {
        paramHtmlTreeBuilder.b(this);
        return false;
      }
      Token.StartTag localStartTag;
      String str2;
      if (paramToken.d())
      {
        localStartTag = paramToken.e();
        str2 = localStartTag.o();
        if (str2.equals("caption"))
        {
          paramHtmlTreeBuilder.j();
          paramHtmlTreeBuilder.u();
          paramHtmlTreeBuilder.a(localStartTag);
          paramHtmlTreeBuilder.a(k);
        }
      }
      do
      {
        String str1;
        while (true)
        {
          return b(paramToken, paramHtmlTreeBuilder);
          if (str2.equals("colgroup"))
          {
            paramHtmlTreeBuilder.j();
            paramHtmlTreeBuilder.a(localStartTag);
            paramHtmlTreeBuilder.a(l);
          }
          else
          {
            if (str2.equals("col"))
            {
              paramHtmlTreeBuilder.a(new Token.StartTag("colgroup"));
              return paramHtmlTreeBuilder.a(paramToken);
            }
            String[] arrayOfString2 = new String[3];
            arrayOfString2[0] = "tbody";
            arrayOfString2[bool] = "tfoot";
            arrayOfString2[2] = "thead";
            if (StringUtil.a(str2, arrayOfString2))
            {
              paramHtmlTreeBuilder.j();
              paramHtmlTreeBuilder.a(localStartTag);
              paramHtmlTreeBuilder.a(m);
            }
            else
            {
              String[] arrayOfString3 = new String[3];
              arrayOfString3[0] = "td";
              arrayOfString3[bool] = "th";
              arrayOfString3[2] = "tr";
              if (StringUtil.a(str2, arrayOfString3))
              {
                paramHtmlTreeBuilder.a(new Token.StartTag("tbody"));
                return paramHtmlTreeBuilder.a(paramToken);
              }
              if (str2.equals("table"))
              {
                paramHtmlTreeBuilder.b(this);
                if (paramHtmlTreeBuilder.a(new Token.EndTag("table")))
                  return paramHtmlTreeBuilder.a(paramToken);
              }
              else
              {
                String[] arrayOfString4 = new String[2];
                arrayOfString4[0] = "style";
                arrayOfString4[bool] = "script";
                if (StringUtil.a(str2, arrayOfString4))
                  return paramHtmlTreeBuilder.a(paramToken, d);
                if (str2.equals("input"))
                {
                  if (!localStartTag.d.a("type").equalsIgnoreCase("hidden"))
                    return b(paramToken, paramHtmlTreeBuilder);
                  paramHtmlTreeBuilder.b(localStartTag);
                }
                else if (str2.equals("form"))
                {
                  paramHtmlTreeBuilder.b(this);
                  if (paramHtmlTreeBuilder.o() != null)
                    return false;
                  paramHtmlTreeBuilder.g(paramHtmlTreeBuilder.b(localStartTag));
                }
                else
                {
                  return b(paramToken, paramHtmlTreeBuilder);
                  if (!paramToken.f())
                    break label612;
                  str1 = paramToken.g().o();
                  if (!str1.equals("table"))
                    break;
                  if (!paramHtmlTreeBuilder.h(str1))
                  {
                    paramHtmlTreeBuilder.b(this);
                    return false;
                  }
                  paramHtmlTreeBuilder.c("table");
                  paramHtmlTreeBuilder.m();
                }
              }
            }
          }
        }
        String[] arrayOfString1 = new String[11];
        arrayOfString1[0] = "body";
        arrayOfString1[bool] = "caption";
        arrayOfString1[2] = "col";
        arrayOfString1[3] = "colgroup";
        arrayOfString1[4] = "html";
        arrayOfString1[5] = "tbody";
        arrayOfString1[6] = "td";
        arrayOfString1[7] = "tfoot";
        arrayOfString1[8] = "th";
        arrayOfString1[9] = "thead";
        arrayOfString1[10] = "tr";
        if (StringUtil.a(str1, arrayOfString1))
        {
          paramHtmlTreeBuilder.b(this);
          return false;
        }
        return b(paramToken, paramHtmlTreeBuilder);
      }
      while (!paramToken.l());
    }
    while (!paramHtmlTreeBuilder.v().a().equals("html"));
    paramHtmlTreeBuilder.b(this);
    return bool;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.HtmlTreeBuilderState.9
 * JD-Core Version:    0.6.2
 */