package org.jsoup.parser;

 enum TokeniserState$47
{
  TokeniserState$47()
  {
    super(str, 46, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    switch (paramCharacterReader.c())
    {
    default:
      paramTokeniser.d.b.append(paramCharacterReader.a(new char[] { 45, 0 }));
      return;
    case '-':
      paramTokeniser.b(V);
      return;
    case '\000':
      paramTokeniser.c(this);
      paramCharacterReader.f();
      paramTokeniser.d.b.append(65533);
      return;
    case '￿':
    }
    paramTokeniser.d(this);
    paramTokeniser.e();
    paramTokeniser.a(a);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.47
 * JD-Core Version:    0.6.2
 */