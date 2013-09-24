package org.jsoup.parser;

 enum TokeniserState$50
{
  TokeniserState$50()
  {
    super(str, 49, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    char c = paramCharacterReader.d();
    switch (c)
    {
    default:
      paramTokeniser.d.b.append("--!").append(c);
      paramTokeniser.a(U);
      return;
    case '-':
      paramTokeniser.d.b.append("--!");
      paramTokeniser.a(V);
      return;
    case '>':
      paramTokeniser.e();
      paramTokeniser.a(a);
      return;
    case '\000':
      paramTokeniser.c(this);
      paramTokeniser.d.b.append("--!�");
      paramTokeniser.a(U);
      return;
    case '￿':
    }
    paramTokeniser.d(this);
    paramTokeniser.e();
    paramTokeniser.a(a);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.50
 * JD-Core Version:    0.6.2
 */