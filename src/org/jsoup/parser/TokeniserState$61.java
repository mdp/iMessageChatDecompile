package org.jsoup.parser;

 enum TokeniserState$61
{
  TokeniserState$61()
  {
    super(str, 60, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    switch (paramCharacterReader.d())
    {
    default:
      paramTokeniser.c(this);
      paramTokeniser.c.e = true;
      paramTokeniser.g();
      return;
    case '\t':
    case '\n':
    case '\f':
    case '\r':
    case ' ':
      paramTokeniser.a(aj);
      return;
    case '>':
      paramTokeniser.c(this);
      paramTokeniser.c.e = true;
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
 * Qualified Name:     org.jsoup.parser.TokeniserState.61
 * JD-Core Version:    0.6.2
 */