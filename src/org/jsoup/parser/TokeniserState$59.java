package org.jsoup.parser;

 enum TokeniserState$59
{
  TokeniserState$59()
  {
    super(str, 58, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    switch (paramCharacterReader.d())
    {
    default:
      paramTokeniser.c(this);
      paramTokeniser.c.e = true;
      paramTokeniser.a(an);
      return;
    case '\t':
    case '\n':
    case '\f':
    case '\r':
    case ' ':
      paramTokeniser.a(ah);
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
 * Qualified Name:     org.jsoup.parser.TokeniserState.59
 * JD-Core Version:    0.6.2
 */