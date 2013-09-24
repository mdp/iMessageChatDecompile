package org.jsoup.parser;

class Token$EndTag extends Token.Tag
{
  Token$EndTag()
  {
    this.a = Token.TokenType.c;
  }

  Token$EndTag(String paramString)
  {
    this();
    this.b = paramString;
  }

  public String toString()
  {
    return "</" + o() + ">";
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.Token.EndTag
 * JD-Core Version:    0.6.2
 */