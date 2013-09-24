package org.jsoup.parser;

 enum TokeniserState$5
{
  TokeniserState$5()
  {
    super(str, 4, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    switch (paramCharacterReader.c())
    {
    default:
      paramTokeniser.a(paramCharacterReader.a(new char[] { 60, 0 }));
      return;
    case '<':
      paramTokeniser.b(n);
      return;
    case '\000':
      paramTokeniser.c(this);
      paramCharacterReader.f();
      paramTokeniser.a(65533);
      return;
    case '￿':
    }
    paramTokeniser.a(new Token.EOF());
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.5
 * JD-Core Version:    0.6.2
 */