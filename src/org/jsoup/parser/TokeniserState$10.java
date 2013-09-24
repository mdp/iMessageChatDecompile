package org.jsoup.parser;

 enum TokeniserState$10
{
  TokeniserState$10()
  {
    super(str, 9, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    String str = paramCharacterReader.a(new char[] { 9, 10, 13, 12, 32, 47, 62, 0 }).toLowerCase();
    paramTokeniser.b.b(str);
    switch (paramCharacterReader.d())
    {
    default:
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
    case '\000':
      paramTokeniser.b.b(TokeniserState.a());
      return;
    case '￿':
    }
    paramTokeniser.d(this);
    paramTokeniser.a(a);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.10
 * JD-Core Version:    0.6.2
 */