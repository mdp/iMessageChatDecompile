package org.jsoup.parser;

 enum TokeniserState$66
{
  TokeniserState$66()
  {
    super(str, 65, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    switch (paramCharacterReader.d())
    {
    default:
      return;
    case '>':
      paramTokeniser.g();
      paramTokeniser.a(a);
      return;
    case '￿':
    }
    paramTokeniser.g();
    paramTokeniser.a(a);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.66
 * JD-Core Version:    0.6.2
 */