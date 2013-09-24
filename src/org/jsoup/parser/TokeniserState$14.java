package org.jsoup.parser;

 enum TokeniserState$14
{
  TokeniserState$14()
  {
    super(str, 13, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    if (paramCharacterReader.b('/'))
    {
      paramTokeniser.h();
      paramTokeniser.b(o);
      return;
    }
    paramTokeniser.a('<');
    paramTokeniser.a(e);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.14
 * JD-Core Version:    0.6.2
 */