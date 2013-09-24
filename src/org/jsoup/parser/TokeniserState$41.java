package org.jsoup.parser;

 enum TokeniserState$41
{
  TokeniserState$41()
  {
    super(str, 40, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    switch (paramCharacterReader.d())
    {
    default:
      paramTokeniser.c(this);
      paramCharacterReader.e();
      paramTokeniser.a(H);
      return;
    case '\t':
    case '\n':
    case '\f':
    case '\r':
    case ' ':
      paramTokeniser.a(H);
      return;
    case '/':
      paramTokeniser.a(P);
      return;
    case '>':
      paramTokeniser.c();
      paramTokeniser.a(a);
      return;
    case '￿':
    }
    paramTokeniser.d(this);
    paramTokeniser.a(a);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.41
 * JD-Core Version:    0.6.2
 */