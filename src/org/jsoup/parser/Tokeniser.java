package org.jsoup.parser;

import org.jsoup.helper.Validate;
import org.jsoup.nodes.Entities;

class Tokeniser
{
  StringBuilder a;
  Token.Tag b;
  Token.Doctype c;
  Token.Comment d;
  private CharacterReader e;
  private ParseErrorList f;
  private TokeniserState g = TokeniserState.a;
  private Token h;
  private boolean i = false;
  private StringBuilder j = new StringBuilder();
  private Token.StartTag k;
  private boolean l = true;

  Tokeniser(CharacterReader paramCharacterReader, ParseErrorList paramParseErrorList)
  {
    this.e = paramCharacterReader;
    this.f = paramParseErrorList;
  }

  private void b(String paramString)
  {
    if (this.f.a())
      this.f.add(new ParseError(this.e.a(), "Invalid character reference: %s", new Object[] { paramString }));
  }

  private void c(String paramString)
  {
    if (this.f.a())
      this.f.add(new ParseError(this.e.a(), paramString));
  }

  final Token.Tag a(boolean paramBoolean)
  {
    if (paramBoolean);
    for (Object localObject = new Token.StartTag(); ; localObject = new Token.EndTag())
    {
      this.b = ((Token.Tag)localObject);
      return this.b;
    }
  }

  final Token a()
  {
    if (!this.l)
    {
      c("Self closing flag not acknowledged");
      this.l = true;
    }
    while (!this.i)
      this.g.a(this, this.e);
    if (this.j.length() > 0)
    {
      String str = this.j.toString();
      this.j.delete(0, this.j.length());
      return new Token.Character(str);
    }
    this.i = false;
    return this.h;
  }

  final void a(char paramChar)
  {
    this.j.append(paramChar);
  }

  final void a(String paramString)
  {
    this.j.append(paramString);
  }

  final void a(Token paramToken)
  {
    Validate.a(this.i, "There is an unread token pending!");
    this.h = paramToken;
    this.i = true;
    if (paramToken.a == Token.TokenType.b)
    {
      localStartTag = (Token.StartTag)paramToken;
      this.k = localStartTag;
      if (localStartTag.c)
        this.l = false;
    }
    while ((paramToken.a != Token.TokenType.c) || (((Token.EndTag)paramToken).d == null))
    {
      Token.StartTag localStartTag;
      return;
    }
    c("Attributes incorrectly present on end tag");
  }

  final void a(TokeniserState paramTokeniserState)
  {
    this.g = paramTokeniserState;
  }

  final void a(char[] paramArrayOfChar)
  {
    this.j.append(paramArrayOfChar);
  }

  final char[] a(Character paramCharacter, boolean paramBoolean)
  {
    if (this.e.b())
      return null;
    if ((paramCharacter != null) && (paramCharacter.charValue() == this.e.c()))
      return null;
    if (this.e.b(new char[] { 9, 10, 13, 12, 32, 60, 38 }))
      return null;
    this.e.g();
    if (this.e.b("#"))
    {
      boolean bool2 = this.e.c("X");
      if (bool2);
      for (String str2 = this.e.k(); str2.length() == 0; str2 = this.e.l())
      {
        b("numeric reference with no numerals");
        this.e.h();
        return null;
      }
      if (!this.e.b(";"))
        b("missing semicolon");
      int n;
      if (bool2)
        n = 16;
      int i1;
      try
      {
        while (true)
        {
          int i2 = Integer.valueOf(str2, n).intValue();
          i1 = i2;
          if ((i1 != -1) && ((i1 < 55296) || (i1 > 57343)) && (i1 <= 1114111))
            break;
          b("character outside of valid range");
          return new char[] { 65533 };
          n = 10;
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        while (true)
          i1 = -1;
      }
      return Character.toChars(i1);
    }
    String str1 = this.e.j();
    boolean bool1 = this.e.b(';');
    if ((Entities.b(str1)) || ((Entities.a(str1)) && (bool1)));
    for (int m = 1; m == 0; m = 0)
    {
      this.e.h();
      if (bool1)
        b(String.format("invalid named referenece '%s'", new Object[] { str1 }));
      return null;
    }
    if (paramBoolean)
      if ((!this.e.m()) && (!this.e.n()))
      {
        if (!this.e.b(new char[] { 61, 45, 95 }));
      }
      else
      {
        this.e.h();
        return null;
      }
    if (!this.e.b(";"))
      b("missing semicolon");
    char[] arrayOfChar = new char[1];
    arrayOfChar[0] = Entities.c(str1).charValue();
    return arrayOfChar;
  }

  final void b()
  {
    this.l = true;
  }

  final void b(TokeniserState paramTokeniserState)
  {
    this.e.f();
    this.g = paramTokeniserState;
  }

  final void c()
  {
    this.b.n();
    a(this.b);
  }

  final void c(TokeniserState paramTokeniserState)
  {
    if (this.f.a())
    {
      ParseErrorList localParseErrorList = this.f;
      int m = this.e.a();
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Character.valueOf(this.e.c());
      arrayOfObject[1] = paramTokeniserState;
      localParseErrorList.add(new ParseError(m, "Unexpected character '%s' in input state [%s]", arrayOfObject));
    }
  }

  final void d()
  {
    this.d = new Token.Comment();
  }

  final void d(TokeniserState paramTokeniserState)
  {
    if (this.f.a())
      this.f.add(new ParseError(this.e.a(), "Unexpectedly reached end of file (EOF) in input state [%s]", new Object[] { paramTokeniserState }));
  }

  final void e()
  {
    a(this.d);
  }

  final void f()
  {
    this.c = new Token.Doctype();
  }

  final void g()
  {
    a(this.c);
  }

  final void h()
  {
    this.a = new StringBuilder();
  }

  final boolean i()
  {
    if (this.k == null)
      return false;
    return this.b.b.equals(this.k.b);
  }

  final String j()
  {
    return this.k.b;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.Tokeniser
 * JD-Core Version:    0.6.2
 */