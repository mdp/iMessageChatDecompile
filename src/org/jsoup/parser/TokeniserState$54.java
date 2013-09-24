package org.jsoup.parser;

 enum TokeniserState$54
{
  TokeniserState$54()
  {
    super(str, 53, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    if (paramCharacterReader.b())
    {
      paramTokeniser.d(this);
      paramTokeniser.c.e = true;
      paramTokeniser.g();
      paramTokeniser.a(a);
      return;
    }
    if (paramCharacterReader.b(new char[] { 9, 10, 13, 12, 32 }))
    {
      paramCharacterReader.f();
      return;
    }
    if (paramCharacterReader.b('>'))
    {
      paramTokeniser.g();
      paramTokeniser.b(a);
      return;
    }
    if (paramCharacterReader.c("PUBLIC"))
    {
      paramTokeniser.a(ac);
      return;
    }
    if (paramCharacterReader.c("SYSTEM"))
    {
      paramTokeniser.a(ai);
      return;
    }
    paramTokeniser.c(this);
    paramTokeniser.c.e = true;
    paramTokeniser.b(an);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.54
 * JD-Core Version:    0.6.2
 */