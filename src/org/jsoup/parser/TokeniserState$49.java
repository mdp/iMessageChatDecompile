package org.jsoup.parser;

 enum TokeniserState$49
{
  TokeniserState$49()
  {
    super(str, 48, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    char c = paramCharacterReader.d();
    switch (c)
    {
    default:
      paramTokeniser.c(this);
      paramTokeniser.d.b.append("--").append(c);
      paramTokeniser.a(U);
      return;
    case '>':
      paramTokeniser.e();
      paramTokeniser.a(a);
      return;
    case '\000':
      paramTokeniser.c(this);
      paramTokeniser.d.b.append("--�");
      paramTokeniser.a(U);
      return;
    case '!':
      paramTokeniser.c(this);
      paramTokeniser.a(X);
      return;
    case '-':
      paramTokeniser.c(this);
      paramTokeniser.d.b.append('-');
      return;
    case '￿':
    }
    paramTokeniser.d(this);
    paramTokeniser.e();
    paramTokeniser.a(a);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.49
 * JD-Core Version:    0.6.2
 */