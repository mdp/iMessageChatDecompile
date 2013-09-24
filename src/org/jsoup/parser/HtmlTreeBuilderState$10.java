package org.jsoup.parser;

import java.util.Iterator;
import java.util.List;
import org.jsoup.helper.StringUtil;
import org.jsoup.nodes.Element;

 enum HtmlTreeBuilderState$10
{
  HtmlTreeBuilderState$10()
  {
    super(str, 9, (byte)0);
  }

  final boolean a(Token paramToken, HtmlTreeBuilder paramHtmlTreeBuilder)
  {
    Iterator localIterator;
    switch (HtmlTreeBuilderState.24.a[paramToken.a.ordinal()])
    {
    default:
      if (paramHtmlTreeBuilder.q().size() > 0)
        localIterator = paramHtmlTreeBuilder.q().iterator();
      break;
    case 5:
      while (localIterator.hasNext())
      {
        Token.Character localCharacter2 = (Token.Character)localIterator.next();
        if (!HtmlTreeBuilderState.a(localCharacter2))
        {
          paramHtmlTreeBuilder.b(this);
          if (StringUtil.a(paramHtmlTreeBuilder.v().a(), new String[] { "table", "tbody", "tfoot", "thead", "tr" }))
          {
            paramHtmlTreeBuilder.b(true);
            paramHtmlTreeBuilder.a(localCharacter2, g);
            paramHtmlTreeBuilder.b(false);
            continue;
            Token.Character localCharacter1 = paramToken.k();
            if (localCharacter1.m().equals(HtmlTreeBuilderState.a()))
            {
              paramHtmlTreeBuilder.b(this);
              return false;
            }
            paramHtmlTreeBuilder.q().add(localCharacter1);
            return true;
          }
          else
          {
            paramHtmlTreeBuilder.a(localCharacter2, g);
          }
        }
        else
        {
          paramHtmlTreeBuilder.a(localCharacter2);
        }
      }
      paramHtmlTreeBuilder.p();
    }
    paramHtmlTreeBuilder.a(paramHtmlTreeBuilder.c());
    return paramHtmlTreeBuilder.a(paramToken);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.HtmlTreeBuilderState.10
 * JD-Core Version:    0.6.2
 */