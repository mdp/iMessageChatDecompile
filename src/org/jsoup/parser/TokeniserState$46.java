package org.jsoup.parser;

 enum TokeniserState$46
{
  TokeniserState$46()
  {
    super(str, 45, (byte)0);
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
 * Qualified Name:     org.jsoup.parser.TokeniserState.46
 * JD-Core Version:    0.6.2
 */