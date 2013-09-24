package org.jsoup.parser;

 enum TokeniserState$60
{
  TokeniserState$60()
  {
    super(str, 59, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    switch (paramCharacterReader.d())
    {
    default:
      paramTokeniser.c(this);
      paramTokeniser.c.e = true;
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
    case '"':
      paramTokeniser.c(this);
      paramTokeniser.a(ak);
      return;
    case '\'':
      paramTokeniser.c(this);
      paramTokeniser.a(al);
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
 * Qualified Name:     org.jsoup.parser.TokeniserState.60
 * JD-Core Version:    0.6.2
 */