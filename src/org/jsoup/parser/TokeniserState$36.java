package org.jsoup.parser;

 enum TokeniserState$36
{
  TokeniserState$36()
  {
    super(str, 35, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    char c = paramCharacterReader.d();
    switch (c)
    {
    default:
      paramTokeniser.b.m();
      paramCharacterReader.e();
      paramTokeniser.a(I);
    case '\t':
    case '\n':
    case '\f':
    case '\r':
    case ' ':
      return;
    case '/':
      paramTokeniser.a(P);
      return;
    case '=':
      paramTokeniser.a(K);
      return;
    case '>':
      paramTokeniser.c();
      paramTokeniser.a(a);
      return;
    case '\000':
      paramTokeniser.c(this);
      paramTokeniser.b.b(65533);
      paramTokeniser.a(I);
      return;
    case '￿':
      paramTokeniser.d(this);
      paramTokeniser.a(a);
      return;
    case '"':
    case '\'':
    case '<':
    }
    paramTokeniser.c(this);
    paramTokeniser.b.m();
    paramTokeniser.b.b(c);
    paramTokeniser.a(I);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.36
 * JD-Core Version:    0.6.2
 */