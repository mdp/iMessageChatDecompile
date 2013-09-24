package org.jsoup.parser;

 enum TokeniserState$55
{
  TokeniserState$55()
  {
    super(str, 54, (byte)0);
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
      paramTokeniser.a(ad);
      return;
    case '"':
      paramTokeniser.c(this);
      paramTokeniser.a(ae);
      return;
    case '\'':
      paramTokeniser.c(this);
      paramTokeniser.a(af);
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
 * Qualified Name:     org.jsoup.parser.TokeniserState.55
 * JD-Core Version:    0.6.2
 */