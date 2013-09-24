package org.jsoup.parser;

abstract class Token
{
  Token.TokenType a;

  final String a()
  {
    return getClass().getSimpleName();
  }

  final boolean b()
  {
    return this.a == Token.TokenType.a;
  }

  final Token.Doctype c()
  {
    return (Token.Doctype)this;
  }

  final boolean d()
  {
    return this.a == Token.TokenType.b;
  }

  final Token.StartTag e()
  {
    return (Token.StartTag)this;
  }

  final boolean f()
  {
    return this.a == Token.TokenType.c;
  }

  final Token.EndTag g()
  {
    return (Token.EndTag)this;
  }

  final boolean h()
  {
    return this.a == Token.TokenType.d;
  }

  final Token.Comment i()
  {
    return (Token.Comment)this;
  }

  final boolean j()
  {
    return this.a == Token.TokenType.e;
  }

  final Token.Character k()
  {
    return (Token.Character)this;
  }

  final boolean l()
  {
    return this.a == Token.TokenType.f;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.Token
 * JD-Core Version:    0.6.2
 */