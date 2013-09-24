package org.jsoup.parser;

import org.jsoup.helper.Validate;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;

abstract class Token$Tag extends Token
{
  protected String b;
  boolean c = false;
  Attributes d;
  private String e;
  private StringBuilder f;

  Token$Tag()
  {
    super((byte)0);
  }

  private final void r()
  {
    if (this.f == null)
      this.f = new StringBuilder();
  }

  final Tag a(String paramString)
  {
    this.b = paramString;
    return this;
  }

  final void a(char paramChar)
  {
    b(String.valueOf(paramChar));
  }

  final void a(char[] paramArrayOfChar)
  {
    r();
    this.f.append(paramArrayOfChar);
  }

  final void b(char paramChar)
  {
    c(String.valueOf(paramChar));
  }

  final void b(String paramString)
  {
    if (this.b == null);
    while (true)
    {
      this.b = paramString;
      return;
      paramString = this.b.concat(paramString);
    }
  }

  final void c(char paramChar)
  {
    r();
    this.f.append(paramChar);
  }

  final void c(String paramString)
  {
    if (this.e == null);
    while (true)
    {
      this.e = paramString;
      return;
      paramString = this.e.concat(paramString);
    }
  }

  final void d(String paramString)
  {
    r();
    this.f.append(paramString);
  }

  final void m()
  {
    if (this.d == null)
      this.d = new Attributes();
    if (this.e != null)
      if (this.f != null)
        break label83;
    label83: for (Attribute localAttribute = new Attribute(this.e, ""); ; localAttribute = new Attribute(this.e, this.f.toString()))
    {
      this.d.a(localAttribute);
      this.e = null;
      if (this.f != null)
        this.f.delete(0, this.f.length());
      return;
    }
  }

  final void n()
  {
    if (this.e != null)
      m();
  }

  final String o()
  {
    if (this.b.length() == 0);
    for (boolean bool = true; ; bool = false)
    {
      Validate.b(bool);
      return this.b;
    }
  }

  final boolean p()
  {
    return this.c;
  }

  final Attributes q()
  {
    return this.d;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.Token.Tag
 * JD-Core Version:    0.6.2
 */