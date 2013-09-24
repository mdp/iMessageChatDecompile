package org.jsoup.parser;

 enum TokeniserState$17
{
  TokeniserState$17()
  {
    super(str, 16, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    switch (paramCharacterReader.d())
    {
    default:
      paramTokeniser.a("<");
      paramCharacterReader.e();
      paramTokeniser.a(f);
      return;
    case '/':
      paramTokeniser.h();
      paramTokeniser.a(r);
      return;
    case '!':
    }
    paramTokeniser.a("<!");
    paramTokeniser.a(t);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.17
 * JD-Core Version:    0.6.2
 */