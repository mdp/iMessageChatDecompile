package org.jsoup.parser;

 enum TokeniserState$32
{
  TokeniserState$32()
  {
    super(str, 31, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    if (paramCharacterReader.b('/'))
    {
      paramTokeniser.a('/');
      paramTokeniser.h();
      paramTokeniser.b(G);
      return;
    }
    paramTokeniser.a(C);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.32
 * JD-Core Version:    0.6.2
 */