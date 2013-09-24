package org.jsoup.parser;

 enum TokeniserState$45
{
  TokeniserState$45()
  {
    super(str, 44, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    char c = paramCharacterReader.d();
    switch (c)
    {
    default:
      paramTokeniser.d.b.append(c);
      paramTokeniser.a(U);
      return;
    case '-':
      paramTokeniser.a(T);
      return;
    case '\000':
      paramTokeniser.c(this);
      paramTokeniser.d.b.append(65533);
      paramTokeniser.a(U);
      return;
    case '>':
      paramTokeniser.c(this);
      paramTokeniser.e();
      paramTokeniser.a(a);
      return;
    case '￿':
    }
    paramTokeniser.d(this);
    paramTokeniser.e();
    paramTokeniser.a(a);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.45
 * JD-Core Version:    0.6.2
 */