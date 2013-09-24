package org.jsoup.parser;

 enum TokeniserState$22
{
  TokeniserState$22()
  {
    super(str, 21, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    if (paramCharacterReader.b())
    {
      paramTokeniser.d(this);
      paramTokeniser.a(a);
      return;
    }
    switch (paramCharacterReader.c())
    {
    default:
      paramTokeniser.a(paramCharacterReader.a(new char[] { 45, 60, 0 }));
      return;
    case '-':
      paramTokeniser.a('-');
      paramTokeniser.b(w);
      return;
    case '<':
      paramTokeniser.b(y);
      return;
    case '\000':
    }
    paramTokeniser.c(this);
    paramCharacterReader.f();
    paramTokeniser.a(65533);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.22
 * JD-Core Version:    0.6.2
 */