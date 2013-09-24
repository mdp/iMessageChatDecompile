package org.jsoup.parser;

 enum TokeniserState$6
{
  TokeniserState$6()
  {
    super(str, 5, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    switch (paramCharacterReader.c())
    {
    default:
      paramTokeniser.a(paramCharacterReader.a(new char[] { 60, 0 }));
      return;
    case '<':
      paramTokeniser.b(q);
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
 * Qualified Name:     org.jsoup.parser.TokeniserState.6
 * JD-Core Version:    0.6.2
 */