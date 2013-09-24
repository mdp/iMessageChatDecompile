package org.jsoup.parser;

 enum TokeniserState$34
{
  TokeniserState$34()
  {
    super(str, 33, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    char c = paramCharacterReader.d();
    switch (c)
    {
    default:
    case '\t':
    case '\n':
    case '\f':
    case '\r':
    case ' ':
    case '/':
    case '>':
    case '\000':
      while (true)
      {
        paramTokeniser.b.m();
        paramCharacterReader.e();
        paramTokeniser.a(I);
        return;
        paramTokeniser.a(P);
        return;
        paramTokeniser.c();
        paramTokeniser.a(a);
        return;
        paramTokeniser.c(this);
      }
    case '￿':
      paramTokeniser.d(this);
      paramTokeniser.a(a);
      return;
    case '"':
    case '\'':
    case '<':
    case '=':
    }
    paramTokeniser.c(this);
    paramTokeniser.b.m();
    paramTokeniser.b.b(c);
    paramTokeniser.a(I);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.34
 * JD-Core Version:    0.6.2
 */