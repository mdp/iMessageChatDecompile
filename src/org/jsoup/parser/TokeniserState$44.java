package org.jsoup.parser;

 enum TokeniserState$44
{
  TokeniserState$44()
  {
    super(str, 43, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    if (paramCharacterReader.b("--"))
    {
      paramTokeniser.d();
      paramTokeniser.a(S);
      return;
    }
    if (paramCharacterReader.c("DOCTYPE"))
    {
      paramTokeniser.a(Y);
      return;
    }
    if (paramCharacterReader.b("[CDATA["))
    {
      paramTokeniser.a(ao);
      return;
    }
    paramTokeniser.c(this);
    paramTokeniser.b(Q);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.44
 * JD-Core Version:    0.6.2
 */