package org.jsoup.parser;

 enum TokeniserState$11
{
  TokeniserState$11()
  {
    super(str, 10, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    if (paramCharacterReader.b('/'))
    {
      paramTokeniser.h();
      paramTokeniser.b(l);
      return;
    }
    if ((paramCharacterReader.m()) && (!paramCharacterReader.d("</" + paramTokeniser.j())))
    {
      paramTokeniser.b = new Token.EndTag(paramTokeniser.j());
      paramTokeniser.c();
      paramCharacterReader.e();
      paramTokeniser.a(a);
      return;
    }
    paramTokeniser.a("<");
    paramTokeniser.a(c);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.11
 * JD-Core Version:    0.6.2
 */