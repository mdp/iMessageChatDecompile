package org.jsoup.parser;

 enum TokeniserState$20
{
  TokeniserState$20()
  {
    super(str, 19, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    if (paramCharacterReader.b('-'))
    {
      paramTokeniser.a('-');
      paramTokeniser.b(u);
      return;
    }
    paramTokeniser.a(f);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.20
 * JD-Core Version:    0.6.2
 */