package org.jsoup.parser;

 enum TokeniserState$8
{
  TokeniserState$8()
  {
    super(str, 7, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    switch (paramCharacterReader.c())
    {
    default:
      if (paramCharacterReader.m())
      {
        paramTokeniser.a(true);
        paramTokeniser.a(j);
        return;
      }
      break;
    case '!':
      paramTokeniser.b(R);
      return;
    case '/':
      paramTokeniser.b(i);
      return;
    case '?':
      paramTokeniser.b(Q);
      return;
    }
    paramTokeniser.c(this);
    paramTokeniser.a('<');
    paramTokeniser.a(a);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.8
 * JD-Core Version:    0.6.2
 */