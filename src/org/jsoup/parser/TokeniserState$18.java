package org.jsoup.parser;

 enum TokeniserState$18
{
  TokeniserState$18()
  {
    super(str, 17, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    if (paramCharacterReader.m())
    {
      paramTokeniser.a(false);
      paramTokeniser.a(s);
      return;
    }
    paramTokeniser.a("</");
    paramTokeniser.a(f);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.18
 * JD-Core Version:    0.6.2
 */