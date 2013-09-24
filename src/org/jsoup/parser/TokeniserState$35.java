package org.jsoup.parser;

 enum TokeniserState$35
{
  TokeniserState$35()
  {
    super(str, 34, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    String str = paramCharacterReader.a(new char[] { 9, 10, 13, 12, 32, 47, 61, 62, 0, 34, 39, 60 });
    paramTokeniser.b.c(str.toLowerCase());
    char c = paramCharacterReader.d();
    switch (c)
    {
    default:
      return;
    case '\t':
    case '\n':
    case '\f':
    case '\r':
    case ' ':
      paramTokeniser.a(J);
      return;
    case '/':
      paramTokeniser.a(P);
      return;
    case '=':
      paramTokeniser.a(K);
      return;
    case '>':
      paramTokeniser.c();
      paramTokeniser.a(a);
      return;
    case '\000':
      paramTokeniser.c(this);
      paramTokeniser.b.b(65533);
      return;
    case '￿':
      paramTokeniser.d(this);
      paramTokeniser.a(a);
      return;
    case '"':
    case '\'':
    case '<':
    }
    paramTokeniser.c(this);
    paramTokeniser.b.b(c);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.35
 * JD-Core Version:    0.6.2
 */