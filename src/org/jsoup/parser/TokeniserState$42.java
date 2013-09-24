package org.jsoup.parser;

 enum TokeniserState$42
{
  TokeniserState$42()
  {
    super(str, 41, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    switch (paramCharacterReader.d())
    {
    default:
      paramTokeniser.c(this);
      paramTokeniser.a(H);
      return;
    case '>':
      paramTokeniser.b.c = true;
      paramTokeniser.c();
      paramTokeniser.a(a);
      return;
    case '￿':
    }
    paramTokeniser.d(this);
    paramTokeniser.a(a);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.42
 * JD-Core Version:    0.6.2
 */