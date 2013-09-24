package org.jsoup.parser;

class Token$Character extends Token
{
  private final String b;

  Token$Character(String paramString)
  {
    super((byte)0);
    this.a = Token.TokenType.e;
    this.b = paramString;
  }

  final String m()
  {
    return this.b;
  }

  public String toString()
  {
    return this.b;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.Token.Character
 * JD-Core Version:    0.6.2
 */