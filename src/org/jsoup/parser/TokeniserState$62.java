package org.jsoup.parser;

 enum TokeniserState$62
{
  TokeniserState$62()
  {
    super(str, 61, (byte)0);
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
    case '"':
      paramTokeniser.a(ak);
      return;
    case '\'':
      paramTokeniser.a(al);
      return;
    case '>':
      paramTokeniser.c(this);
      paramTokeniser.c.e = true;
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
 * Qualified Name:     org.jsoup.parser.TokeniserState.62
 * JD-Core Version:    0.6.2
 */