package org.jsoup.parser;

 enum TokeniserState$65
{
  TokeniserState$65()
  {
    super(str, 64, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    switch (paramCharacterReader.d())
    {
    default:
      paramTokeniser.c(this);
      paramTokeniser.a(an);
    case '\t':
    case '\n':
    case '\f':
    case '\r':
    case ' ':
      return;
    case '>':
      paramTokeniser.g();
      paramTokeniser.a(a);
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
 * Qualified Name:     org.jsoup.parser.TokeniserState.65
 * JD-Core Version:    0.6.2
 */