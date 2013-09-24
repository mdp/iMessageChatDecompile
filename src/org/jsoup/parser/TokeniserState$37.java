package org.jsoup.parser;

 enum TokeniserState$37
{
  TokeniserState$37()
  {
    super(str, 36, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    char c = paramCharacterReader.d();
    switch (c)
    {
    default:
      paramCharacterReader.e();
      paramTokeniser.a(N);
    case '\t':
    case '\n':
    case '\f':
    case '\r':
    case ' ':
      return;
    case '"':
      paramTokeniser.a(L);
      return;
    case '&':
      paramCharacterReader.e();
      paramTokeniser.a(N);
      return;
    case '\'':
      paramTokeniser.a(M);
      return;
    case '\000':
      paramTokeniser.c(this);
      paramTokeniser.b.c(65533);
      paramTokeniser.a(N);
      return;
    case '￿':
      paramTokeniser.d(this);
      paramTokeniser.a(a);
      return;
    case '>':
      paramTokeniser.c(this);
      paramTokeniser.c();
      paramTokeniser.a(a);
      return;
    case '<':
    case '=':
    case '`':
    }
    paramTokeniser.c(this);
    paramTokeniser.b.c(c);
    paramTokeniser.a(N);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.37
 * JD-Core Version:    0.6.2
 */