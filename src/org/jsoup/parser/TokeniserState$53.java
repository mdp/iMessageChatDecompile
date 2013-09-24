package org.jsoup.parser;

 enum TokeniserState$53
{
  TokeniserState$53()
  {
    super(str, 52, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    if (paramCharacterReader.m())
    {
      String str = paramCharacterReader.i();
      paramTokeniser.c.b.append(str.toLowerCase());
      return;
    }
    char c = paramCharacterReader.d();
    switch (c)
    {
    default:
      paramTokeniser.c.b.append(c);
      return;
    case '>':
      paramTokeniser.g();
      paramTokeniser.a(a);
      return;
    case '\t':
    case '\n':
    case '\f':
    case '\r':
    case ' ':
      paramTokeniser.a(ab);
      return;
    case '\000':
      paramTokeniser.c(this);
      paramTokeniser.c.b.append(65533);
      return;
    case '￿':
    }
    paramTokeniser.d(this);
    paramTokeniser.c.e = true;
    paramTokeniser.g();
    paramTokeniser.a(a);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.53
 * JD-Core Version:    0.6.2
 */