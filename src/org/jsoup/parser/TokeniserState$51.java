package org.jsoup.parser;

 enum TokeniserState$51
{
  TokeniserState$51()
  {
    super(str, 50, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    switch (paramCharacterReader.d())
    {
    default:
      paramTokeniser.c(this);
      paramTokeniser.a(Z);
      return;
    case '\t':
    case '\n':
    case '\f':
    case '\r':
    case ' ':
      paramTokeniser.a(Z);
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
 * Qualified Name:     org.jsoup.parser.TokeniserState.51
 * JD-Core Version:    0.6.2
 */