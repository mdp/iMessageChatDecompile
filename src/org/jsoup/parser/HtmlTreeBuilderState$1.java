package org.jsoup.parser;

import org.jsoup.nodes.Document;
import org.jsoup.nodes.Document.QuirksMode;
import org.jsoup.nodes.DocumentType;

 enum HtmlTreeBuilderState$1
{
  HtmlTreeBuilderState$1()
  {
    super(str, 0, (byte)0);
  }

  final boolean a(Token paramToken, HtmlTreeBuilder paramHtmlTreeBuilder)
  {
    if (HtmlTreeBuilderState.a(paramToken))
      return true;
    if (paramToken.h())
    {
      paramHtmlTreeBuilder.a(paramToken.i());
      return true;
    }
    if (paramToken.b())
    {
      Token.Doctype localDoctype = paramToken.c();
      DocumentType localDocumentType = new DocumentType(localDoctype.m(), localDoctype.n(), localDoctype.o(), paramHtmlTreeBuilder.f());
      paramHtmlTreeBuilder.e().a(localDocumentType);
      if (localDoctype.p())
        paramHtmlTreeBuilder.e().a(Document.QuirksMode.b);
      paramHtmlTreeBuilder.a(b);
      return true;
    }
    paramHtmlTreeBuilder.a(b);
    return paramHtmlTreeBuilder.a(paramToken);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.HtmlTreeBuilderState.1
 * JD-Core Version:    0.6.2
 */