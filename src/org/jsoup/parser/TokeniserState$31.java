package org.jsoup.parser;

 enum TokeniserState$31
{
  TokeniserState$31()
  {
    super(str, 30, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    char c = paramCharacterReader.d();
    switch (c)
    {
    default:
      paramTokeniser.a(c);
      paramTokeniser.a(C);
      return;
    case '-':
      paramTokeniser.a(c);
      return;
    case '<':
      paramTokeniser.a(c);
      paramTokeniser.a(F);
      return;
    case '>':
      paramTokeniser.a(c);
      paramTokeniser.a(f);
      return;
    case '\000':
      paramTokeniser.c(this);
      paramTokeniser.a(65533);
      paramTokeniser.a(C);
      return;
    case '￿':
    }
    paramTokeniser.d(this);
    paramTokeniser.a(a);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.31
 * JD-Core Version:    0.6.2
 */