package org.jsoup.parser;

 enum TokeniserState$7
{
  TokeniserState$7()
  {
    super(str, 6, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    switch (paramCharacterReader.c())
    {
    default:
      paramTokeniser.a(paramCharacterReader.a('\000'));
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
 * Qualified Name:     org.jsoup.parser.TokeniserState.7
 * JD-Core Version:    0.6.2
 */