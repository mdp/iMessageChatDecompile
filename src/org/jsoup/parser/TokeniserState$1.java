package org.jsoup.parser;

 enum TokeniserState$1
{
  TokeniserState$1()
  {
    super(str, 0, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    switch (paramCharacterReader.c())
    {
    default:
      paramTokeniser.a(paramCharacterReader.a(new char[] { 38, 60, 0 }));
      return;
    case '&':
      paramTokeniser.b(b);
      return;
    case '<':
      paramTokeniser.b(h);
      return;
    case '\000':
      paramTokeniser.c(this);
      paramTokeniser.a(paramCharacterReader.d());
      return;
    case '￿':
    }
    paramTokeniser.a(new Token.EOF());
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.1
 * JD-Core Version:    0.6.2
 */