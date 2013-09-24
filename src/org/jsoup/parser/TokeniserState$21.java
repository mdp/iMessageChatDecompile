package org.jsoup.parser;

 enum TokeniserState$21
{
  TokeniserState$21()
  {
    super(str, 20, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    if (paramCharacterReader.b('-'))
    {
      paramTokeniser.a('-');
      paramTokeniser.b(x);
      return;
    }
    paramTokeniser.a(f);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.21
 * JD-Core Version:    0.6.2
 */