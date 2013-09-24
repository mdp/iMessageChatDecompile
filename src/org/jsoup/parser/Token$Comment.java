package org.jsoup.parser;

class Token$Comment extends Token
{
  final StringBuilder b = new StringBuilder();
  boolean c = false;

  Token$Comment()
  {
    super((byte)0);
    this.a = Token.TokenType.d;
  }

  final String m()
  {
    return this.b.toString();
  }

  public String toString()
  {
    return "<!--" + this.b.toString() + "-->";
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.Token.Comment
 * JD-Core Version:    0.6.2
 */