package org.jsoup.parser;

 enum TokeniserState$23
{
  TokeniserState$23()
  {
    super(str, 22, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    if (paramCharacterReader.b())
    {
      paramTokeniser.d(this);
      paramTokeniser.a(a);
      return;
    }
    char c = paramCharacterReader.d();
    switch (c)
    {
    default:
      paramTokeniser.a(c);
      paramTokeniser.a(v);
      return;
    case '-':
      paramTokeniser.a(c);
      paramTokeniser.a(x);
      return;
    case '<':
      paramTokeniser.a(y);
      return;
    case '\000':
    }
    paramTokeniser.c(this);
    paramTokeniser.a(65533);
    paramTokeniser.a(v);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.23
 * JD-Core Version:    0.6.2
 */