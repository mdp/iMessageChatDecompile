package org.jsoup.parser;

 enum TokeniserState$52
{
  TokeniserState$52()
  {
    super(str, 51, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    if (paramCharacterReader.m())
    {
      paramTokeniser.f();
      paramTokeniser.a(aa);
      return;
    }
    char c = paramCharacterReader.d();
    switch (c)
    {
    case '\t':
    case '\n':
    case '\f':
    case '\r':
    case ' ':
    default:
      paramTokeniser.f();
      paramTokeniser.c.b.append(c);
      paramTokeniser.a(aa);
      return;
    case '\000':
      paramTokeniser.c(this);
      paramTokeniser.c.b.append(65533);
      paramTokeniser.a(aa);
      return;
    case '￿':
    }
    paramTokeniser.d(this);
    paramTokeniser.f();
    paramTokeniser.c.e = true;
    paramTokeniser.g();
    paramTokeniser.a(a);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.52
 * JD-Core Version:    0.6.2
 */