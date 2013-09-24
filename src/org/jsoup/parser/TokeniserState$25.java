package org.jsoup.parser;

 enum TokeniserState$25
{
  TokeniserState$25()
  {
    super(str, 24, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    if (paramCharacterReader.m())
    {
      paramTokeniser.h();
      paramTokeniser.a.append(Character.toLowerCase(paramCharacterReader.c()));
      paramTokeniser.a("<" + paramCharacterReader.c());
      paramTokeniser.b(B);
      return;
    }
    if (paramCharacterReader.b('/'))
    {
      paramTokeniser.h();
      paramTokeniser.b(z);
      return;
    }
    paramTokeniser.a('<');
    paramTokeniser.a(v);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.25
 * JD-Core Version:    0.6.2
 */