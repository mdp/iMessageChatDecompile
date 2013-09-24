package org.jsoup.parser;

import org.jsoup.helper.DescendableLinkedList;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

abstract class TreeBuilder
{
  CharacterReader b;
  Tokeniser c;
  protected Document d;
  protected DescendableLinkedList e;
  protected String f;
  protected Token g;
  protected ParseErrorList h;

  Document a(String paramString1, String paramString2, ParseErrorList paramParseErrorList)
  {
    b(paramString1, paramString2, paramParseErrorList);
    Token localToken;
    do
    {
      localToken = this.c.a();
      a(localToken);
    }
    while (localToken.a != Token.TokenType.f);
    return this.d;
  }

  protected abstract boolean a(Token paramToken);

  protected void b(String paramString1, String paramString2, ParseErrorList paramParseErrorList)
  {
    Validate.a(paramString1, "String input must not be null");
    Validate.a(paramString2, "BaseURI must not be null");
    this.d = new Document(paramString2);
    this.b = new CharacterReader(paramString1);
    this.h = paramParseErrorList;
    this.c = new Tokeniser(this.b, paramParseErrorList);
    this.e = new DescendableLinkedList();
    this.f = paramString2;
  }

  protected final Element v()
  {
    return (Element)this.e.getLast();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TreeBuilder
 * JD-Core Version:    0.6.2
 */