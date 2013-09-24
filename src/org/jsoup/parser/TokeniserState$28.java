package org.jsoup.parser;

 enum TokeniserState$28
{
  TokeniserState$28()
  {
    super(str, 27, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    if (paramCharacterReader.m())
    {
      String str = paramCharacterReader.i();
      paramTokeniser.a.append(str.toLowerCase());
      paramTokeniser.a(str);
      return;
    }
    char c = paramCharacterReader.d();
    switch (c)
    {
    default:
      paramCharacterReader.e();
      paramTokeniser.a(v);
      return;
    case '\t':
    case '\n':
    case '\f':
    case '\r':
    case ' ':
    case '/':
    case '>':
    }
    if (paramTokeniser.a.toString().equals("script"))
      paramTokeniser.a(C);
    while (true)
    {
      paramTokeniser.a(c);
      return;
      paramTokeniser.a(v);
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.28
 * JD-Core Version:    0.6.2
 */