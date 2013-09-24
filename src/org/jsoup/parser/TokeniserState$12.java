package org.jsoup.parser;

 enum TokeniserState$12
{
  TokeniserState$12()
  {
    super(str, 11, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    if (paramCharacterReader.m())
    {
      paramTokeniser.a(false);
      paramTokeniser.b.a(Character.toLowerCase(paramCharacterReader.c()));
      paramTokeniser.a.append(Character.toLowerCase(paramCharacterReader.c()));
      paramTokeniser.b(m);
      return;
    }
    paramTokeniser.a("</");
    paramTokeniser.a(c);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.12
 * JD-Core Version:    0.6.2
 */