package org.jsoup.parser;

 enum TokeniserState$19
{
  TokeniserState$19()
  {
    super(str, 18, (byte)0);
  }

  private static void a(Tokeniser paramTokeniser)
  {
    paramTokeniser.a("</" + paramTokeniser.a.toString());
    paramTokeniser.a(f);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    if (paramCharacterReader.m())
    {
      String str = paramCharacterReader.i();
      paramTokeniser.b.b(str.toLowerCase());
      paramTokeniser.a.append(str);
      return;
    }
    if ((paramTokeniser.i()) && (!paramCharacterReader.b()))
    {
      char c = paramCharacterReader.d();
      switch (c)
      {
      default:
        paramTokeniser.a.append(c);
        a(paramTokeniser);
        return;
      case '\t':
      case '\n':
      case '\f':
      case '\r':
      case ' ':
        paramTokeniser.a(H);
        return;
      case '/':
        paramTokeniser.a(P);
        return;
      case '>':
      }
      paramTokeniser.c();
      paramTokeniser.a(a);
      return;
    }
    a(paramTokeniser);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.19
 * JD-Core Version:    0.6.2
 */