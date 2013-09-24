package org.jsoup.parser;

 enum TokeniserState$26
{
  TokeniserState$26()
  {
    super(str, 25, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    if (paramCharacterReader.m())
    {
      paramTokeniser.a(false);
      paramTokeniser.b.a(Character.toLowerCase(paramCharacterReader.c()));
      paramTokeniser.a.append(paramCharacterReader.c());
      paramTokeniser.b(A);
      return;
    }
    paramTokeniser.a("</");
    paramTokeniser.a(v);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.26
 * JD-Core Version:    0.6.2
 */