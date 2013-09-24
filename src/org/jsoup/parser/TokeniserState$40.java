package org.jsoup.parser;

 enum TokeniserState$40
{
  TokeniserState$40()
  {
    super(str, 39, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    String str = paramCharacterReader.a(new char[] { 9, 10, 13, 12, 32, 38, 62, 0, 34, 39, 60, 61, 96 });
    if (str.length() > 0)
      paramTokeniser.b.d(str);
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
      paramTokeniser.a(H);
      return;
    case '&':
      char[] arrayOfChar = paramTokeniser.a(Character.valueOf('>'), true);
      if (arrayOfChar != null)
      {
        paramTokeniser.b.a(arrayOfChar);
        return;
      }
      paramTokeniser.b.c('&');
      return;
    case '>':
      paramTokeniser.c();
      paramTokeniser.a(a);
      return;
    case '\000':
      paramTokeniser.c(this);
      paramTokeniser.b.c(65533);
      return;
    case '￿':
      paramTokeniser.d(this);
      paramTokeniser.a(a);
      return;
    case '"':
    case '\'':
    case '<':
    case '=':
    case '`':
    }
    paramTokeniser.c(this);
    paramTokeniser.b.c(c);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.40
 * JD-Core Version:    0.6.2
 */