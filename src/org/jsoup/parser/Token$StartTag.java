package org.jsoup.parser;

import org.jsoup.nodes.Attributes;

class Token$StartTag extends Token.Tag
{
  Token$StartTag()
  {
    this.d = new Attributes();
    this.a = Token.TokenType.b;
  }

  Token$StartTag(String paramString)
  {
    this();
    this.b = paramString;
  }

  Token$StartTag(String paramString, Attributes paramAttributes)
  {
    this();
    this.b = paramString;
    this.d = paramAttributes;
  }

  public String toString()
  {
    if ((this.d != null) && (this.d.a() > 0))
      return "<" + o() + " " + this.d.toString() + ">";
    return "<" + o() + ">";
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.Token.StartTag
 * JD-Core Version:    0.6.2
 */