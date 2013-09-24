package org.jsoup.parser;

import java.util.Locale;
import org.jsoup.helper.Validate;

class CharacterReader
{
  private final char[] a;
  private final int b;
  private int c = 0;
  private int d = 0;

  CharacterReader(String paramString)
  {
    Validate.a(paramString);
    this.a = paramString.toCharArray();
    this.b = this.a.length;
  }

  private int a(CharSequence paramCharSequence)
  {
    int i = paramCharSequence.charAt(0);
    for (int j = this.c; j < this.b; j++)
    {
      if (i != this.a[j])
        do
          j++;
        while ((j < this.b) && (i != this.a[j]));
      if (j < this.b)
      {
        int k = j + 1;
        int m = -1 + (k + paramCharSequence.length());
        for (int n = 1; (k < m) && (paramCharSequence.charAt(n) == this.a[k]); n++)
          k++;
        if (k == m)
          return j - this.c;
      }
    }
    return -1;
  }

  private String o()
  {
    String str = new String(this.a, this.c, this.b - this.c);
    this.c = this.b;
    return str;
  }

  final int a()
  {
    return this.c;
  }

  final String a(char paramChar)
  {
    int i = this.c;
    if (i < this.b)
      if (paramChar != this.a[i]);
    for (int j = i - this.c; ; j = -1)
    {
      if (j == -1)
        break label77;
      String str = new String(this.a, this.c, j);
      this.c = (j + this.c);
      return str;
      i++;
      break;
    }
    label77: return o();
  }

  final String a(String paramString)
  {
    int i = a(paramString);
    if (i != -1)
    {
      String str = new String(this.a, this.c, i);
      this.c = (i + this.c);
      return str;
    }
    return o();
  }

  final String a(char[] paramArrayOfChar)
  {
    int i = this.c;
    while (this.c < this.b)
    {
      for (int j = 0; j < paramArrayOfChar.length; j++)
        if (this.a[this.c] == paramArrayOfChar[j])
          break label58;
      this.c = (1 + this.c);
    }
    label58: if (this.c > i)
      return new String(this.a, i, this.c - i);
    return "";
  }

  final boolean b()
  {
    return this.c >= this.b;
  }

  final boolean b(char paramChar)
  {
    return (!b()) && (this.a[this.c] == paramChar);
  }

  final boolean b(String paramString)
  {
    int i = paramString.length();
    int k;
    if (i > this.b - this.c)
      k = 0;
    while (k != 0)
    {
      this.c += paramString.length();
      return true;
      for (int j = 0; ; j++)
      {
        if (j >= i)
          break label79;
        if (paramString.charAt(j) != this.a[(j + this.c)])
        {
          k = 0;
          break;
        }
      }
      label79: k = 1;
    }
    return false;
  }

  final boolean b(char[] paramArrayOfChar)
  {
    if (b());
    while (true)
    {
      return false;
      int i = this.a[this.c];
      int j = paramArrayOfChar.length;
      for (int k = 0; k < j; k++)
        if (paramArrayOfChar[k] == i)
          return true;
    }
  }

  final char c()
  {
    if (b())
      return 65535;
    return this.a[this.c];
  }

  final boolean c(String paramString)
  {
    int i = paramString.length();
    int k;
    if (i > this.b - this.c)
      k = 0;
    while (k != 0)
    {
      this.c += paramString.length();
      return true;
      for (int j = 0; ; j++)
      {
        if (j >= i)
          break label85;
        if (Character.toUpperCase(paramString.charAt(j)) != Character.toUpperCase(this.a[(j + this.c)]))
        {
          k = 0;
          break;
        }
      }
      label85: k = 1;
    }
    return false;
  }

  final char d()
  {
    if (b());
    int j;
    for (int i = 65535; ; j = this.a[this.c])
    {
      this.c = (1 + this.c);
      return i;
    }
  }

  final boolean d(String paramString)
  {
    String str1 = paramString.toLowerCase(Locale.ENGLISH);
    String str2 = paramString.toUpperCase(Locale.ENGLISH);
    return (a(str1) >= 0) || (a(str2) >= 0);
  }

  final void e()
  {
    this.c = (-1 + this.c);
  }

  final void f()
  {
    this.c = (1 + this.c);
  }

  final void g()
  {
    this.d = this.c;
  }

  final void h()
  {
    this.c = this.d;
  }

  final String i()
  {
    int i = this.c;
    while (this.c < this.b)
    {
      int j = this.a[this.c];
      if (((j < 65) || (j > 90)) && ((j < 97) || (j > 122)))
        break;
      this.c = (1 + this.c);
    }
    return new String(this.a, i, this.c - i);
  }

  final String j()
  {
    int i = this.c;
    while (this.c < this.b)
    {
      int k = this.a[this.c];
      if (((k < 65) || (k > 90)) && ((k < 97) || (k > 122)))
        break;
      this.c = (1 + this.c);
    }
    while (!b())
    {
      int j = this.a[this.c];
      if ((j < 48) || (j > 57))
        break;
      this.c = (1 + this.c);
    }
    return new String(this.a, i, this.c - i);
  }

  final String k()
  {
    int i = this.c;
    while (this.c < this.b)
    {
      int j = this.a[this.c];
      if (((j < 48) || (j > 57)) && ((j < 65) || (j > 70)) && ((j < 97) || (j > 102)))
        break;
      this.c = (1 + this.c);
    }
    return new String(this.a, i, this.c - i);
  }

  final String l()
  {
    int i = this.c;
    while (this.c < this.b)
    {
      int j = this.a[this.c];
      if ((j < 48) || (j > 57))
        break;
      this.c = (1 + this.c);
    }
    return new String(this.a, i, this.c - i);
  }

  final boolean m()
  {
    if (b());
    int i;
    do
    {
      return false;
      i = this.a[this.c];
    }
    while (((i < 65) || (i > 90)) && ((i < 97) || (i > 122)));
    return true;
  }

  final boolean n()
  {
    if (b());
    int i;
    do
    {
      return false;
      i = this.a[this.c];
    }
    while ((i < 48) || (i > 57));
    return true;
  }

  public String toString()
  {
    return new String(this.a, this.c, this.b - this.c);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.CharacterReader
 * JD-Core Version:    0.6.2
 */