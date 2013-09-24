package org.jsoup.parser;

 enum TokeniserState$29
{
  TokeniserState$29()
  {
    super(str, 28, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    char c = paramCharacterReader.c();
    switch (c)
    {
    default:
      paramTokeniser.a(paramCharacterReader.a(new char[] { 45, 60, 0 }));
      return;
    case '-':
      paramTokeniser.a(c);
      paramTokeniser.b(D);
      return;
    case '<':
      paramTokeniser.a(c);
      paramTokeniser.b(F);
      return;
    case '\000':
      paramTokeniser.c(this);
      paramCharacterReader.f();
      paramTokeniser.a(65533);
      return;
    case '￿':
    }
    paramTokeniser.d(this);
    paramTokeniser.a(a);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.29
 * JD-Core Version:    0.6.2
 */