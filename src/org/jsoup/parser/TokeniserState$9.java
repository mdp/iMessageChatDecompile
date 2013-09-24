package org.jsoup.parser;

 enum TokeniserState$9
{
  TokeniserState$9()
  {
    super(str, 8, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    if (paramCharacterReader.b())
    {
      paramTokeniser.d(this);
      paramTokeniser.a("</");
      paramTokeniser.a(a);
      return;
    }
    if (paramCharacterReader.m())
    {
      paramTokeniser.a(false);
      paramTokeniser.a(j);
      return;
    }
    if (paramCharacterReader.b('>'))
    {
      paramTokeniser.c(this);
      paramTokeniser.b(a);
      return;
    }
    paramTokeniser.c(this);
    paramTokeniser.b(Q);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.9
 * JD-Core Version:    0.6.2
 */