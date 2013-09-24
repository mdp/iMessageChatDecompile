package org.jsoup.parser;

 enum TokeniserState$48
{
  TokeniserState$48()
  {
    super(str, 47, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    char c = paramCharacterReader.d();
    switch (c)
    {
    default:
      paramTokeniser.d.b.append('-').append(c);
      paramTokeniser.a(U);
      return;
    case '-':
      paramTokeniser.a(W);
      return;
    case '\000':
      paramTokeniser.c(this);
      paramTokeniser.d.b.append('-').append(65533);
      paramTokeniser.a(U);
      return;
    case '￿':
    }
    paramTokeniser.d(this);
    paramTokeniser.e();
    paramTokeniser.a(a);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.48
 * JD-Core Version:    0.6.2
 */