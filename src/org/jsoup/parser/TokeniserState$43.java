package org.jsoup.parser;

 enum TokeniserState$43
{
  TokeniserState$43()
  {
    super(str, 42, (byte)0);
  }

  final void a(Tokeniser paramTokeniser, CharacterReader paramCharacterReader)
  {
    paramCharacterReader.e();
    Token.Comment localComment = new Token.Comment();
    localComment.c = true;
    localComment.b.append(paramCharacterReader.a('>'));
    paramTokeniser.a(localComment);
    paramTokeniser.b(a);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.TokeniserState.43
 * JD-Core Version:    0.6.2
 */