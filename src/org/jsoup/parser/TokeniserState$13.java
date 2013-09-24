package org.jsoup.parser;

 enum TokeniserState$13
{
  TokeniserState$13()
  {
    super(str, 12, (byte)0);
  }

  private static void b(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    paramTokeniser.a("</" + paramTokeniser.a.toString());
    paramCharacterReader.e();
    paramTokeniser.a(c);
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
    switch (paramCharacterReader.d())
    {
    default:
      b(paramTokeniser, paramCharacterReader);
      return;
    case '\t':
    case '\n':
    case '\f':
    case '\r':
    case ' ':
      if (paramTokeniser.i())
      {
        paramTokeniser.a(H);
        return;
      }
      b(paramTokeniser, paramCharacterReader);
      return;
    case '/':
      if (paramTokeniser.i())
      {
        paramTokeniser.a(P);
        return;
      }
      b(paramTokeniser, paramCharacterReader);
      return;
    case '>':
    }
    if (paramTokeniser.i())
    {
      paramTokeniser.c();
      paramTokeniser.a(a);
      return;
    }
    b(paramTokeniser, paramCharacterReader);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.13
 * JD-Core Version:    0.6.2
 */