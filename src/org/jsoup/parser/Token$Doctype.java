package org.jsoup.parser;

class Token$Doctype extends Token
{
  final StringBuilder b = new StringBuilder();
  final StringBuilder c = new StringBuilder();
  final StringBuilder d = new StringBuilder();
  boolean e = false;

  Token$Doctype()
  {
    super((byte)0);
    this.a = Token.TokenType.a;
  }

  final String m()
  {
    return this.b.toString();
  }

  final String n()
  {
    return this.c.toString();
  }

  public final String o()
  {
    return this.d.toString();
  }

  public final boolean p()
  {
    return this.e;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.Token.Doctype
 * JD-Core Version:    0.6.2
 */