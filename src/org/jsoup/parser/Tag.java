package org.jsoup.parser;

import java.util.HashMap;
import java.util.Map;
import org.jsoup.helper.Validate;

public class Tag
{
  private static final Map a;
  private static final String[] j;
  private static final String[] k;
  private static final String[] l;
  private static final String[] m;
  private static final String[] n;
  private String b;
  private boolean c = true;
  private boolean d = true;
  private boolean e = true;
  private boolean f = true;
  private boolean g = false;
  private boolean h = false;
  private boolean i = false;

  static
  {
    int i1 = 0;
    a = new HashMap();
    j = new String[] { "html", "head", "body", "frameset", "script", "noscript", "style", "meta", "link", "title", "frame", "noframes", "section", "nav", "aside", "hgroup", "header", "footer", "p", "h1", "h2", "h3", "h4", "h5", "h6", "ul", "ol", "pre", "div", "blockquote", "hr", "address", "figure", "figcaption", "form", "fieldset", "ins", "del", "s", "dl", "dt", "dd", "li", "table", "caption", "thead", "tfoot", "tbody", "colgroup", "col", "tr", "th", "td", "video", "audio", "canvas", "details", "menu", "plaintext" };
    k = new String[] { "object", "base", "font", "tt", "i", "b", "u", "big", "small", "em", "strong", "dfn", "code", "samp", "kbd", "var", "cite", "abbr", "time", "acronym", "mark", "ruby", "rt", "rp", "a", "img", "br", "wbr", "map", "q", "sub", "sup", "bdo", "iframe", "embed", "span", "input", "select", "textarea", "label", "button", "optgroup", "option", "legend", "datalist", "keygen", "output", "progress", "meter", "area", "param", "source", "track", "summary", "command", "device" };
    l = new String[] { "meta", "link", "base", "frame", "img", "br", "wbr", "embed", "hr", "input", "keygen", "col", "command", "device" };
    m = new String[] { "title", "a", "p", "h1", "h2", "h3", "h4", "h5", "h6", "pre", "address", "li", "th", "td", "script", "style", "ins", "del", "s" };
    n = new String[] { "pre", "plaintext", "title", "textarea" };
    String[] arrayOfString1 = j;
    int i2 = arrayOfString1.length;
    for (int i3 = 0; i3 < i2; i3++)
      a(new Tag(arrayOfString1[i3]));
    String[] arrayOfString2 = k;
    int i4 = arrayOfString2.length;
    for (int i5 = 0; i5 < i4; i5++)
    {
      Tag localTag1 = new Tag(arrayOfString2[i5]);
      localTag1.c = false;
      localTag1.e = false;
      localTag1.d = false;
      a(localTag1);
    }
    for (String str3 : l)
    {
      Tag localTag4 = (Tag)a.get(str3);
      Validate.a(localTag4);
      localTag4.e = false;
      localTag4.f = false;
      localTag4.g = true;
    }
    for (String str2 : m)
    {
      Tag localTag3 = (Tag)a.get(str2);
      Validate.a(localTag3);
      localTag3.d = false;
    }
    String[] arrayOfString5 = n;
    int i10 = arrayOfString5.length;
    while (i1 < i10)
    {
      String str1 = arrayOfString5[i1];
      Tag localTag2 = (Tag)a.get(str1);
      Validate.a(localTag2);
      localTag2.i = true;
      i1++;
    }
  }

  private Tag(String paramString)
  {
    this.b = paramString.toLowerCase();
  }

  public static Tag a(String paramString)
  {
    Validate.a(paramString);
    Tag localTag = (Tag)a.get(paramString);
    if (localTag == null)
    {
      String str = paramString.trim().toLowerCase();
      Validate.a(str);
      localTag = (Tag)a.get(str);
      if (localTag == null)
      {
        localTag = new Tag(str);
        localTag.c = false;
        localTag.e = true;
      }
    }
    return localTag;
  }

  private static void a(Tag paramTag)
  {
    a.put(paramTag.b, paramTag);
  }

  public final String a()
  {
    return this.b;
  }

  public final boolean b()
  {
    return this.c;
  }

  public final boolean c()
  {
    return this.d;
  }

  public final boolean d()
  {
    return (this.g) || (this.h);
  }

  public final boolean e()
  {
    return a.containsKey(this.b);
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    Tag localTag;
    do
    {
      return true;
      if (!(paramObject instanceof Tag))
        return false;
      localTag = (Tag)paramObject;
      if (this.e != localTag.e)
        return false;
      if (this.f != localTag.f)
        return false;
      if (this.g != localTag.g)
        return false;
      if (this.d != localTag.d)
        return false;
      if (this.c != localTag.c)
        return false;
      if (this.i != localTag.i)
        return false;
      if (this.h != localTag.h)
        return false;
    }
    while (this.b.equals(localTag.b));
    return false;
  }

  public final boolean f()
  {
    return this.i;
  }

  final Tag g()
  {
    this.h = true;
    return this;
  }

  public int hashCode()
  {
    int i1 = 1;
    int i2 = 31 * this.b.hashCode();
    int i3;
    int i5;
    label40: int i7;
    label60: int i9;
    label80: int i11;
    label100: int i13;
    label120: int i14;
    if (this.c)
    {
      i3 = i1;
      int i4 = 31 * (i3 + i2);
      if (!this.d)
        break label147;
      i5 = i1;
      int i6 = 31 * (i5 + i4);
      if (!this.e)
        break label153;
      i7 = i1;
      int i8 = 31 * (i7 + i6);
      if (!this.f)
        break label159;
      i9 = i1;
      int i10 = 31 * (i9 + i8);
      if (!this.g)
        break label165;
      i11 = i1;
      int i12 = 31 * (i11 + i10);
      if (!this.h)
        break label171;
      i13 = i1;
      i14 = 31 * (i13 + i12);
      if (!this.i)
        break label177;
    }
    while (true)
    {
      return i14 + i1;
      i3 = 0;
      break;
      label147: i5 = 0;
      break label40;
      label153: i7 = 0;
      break label60;
      label159: i9 = 0;
      break label80;
      label165: i11 = 0;
      break label100;
      label171: i13 = 0;
      break label120;
      label177: i1 = 0;
    }
  }

  public String toString()
  {
    return this.b;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.Tag
 * JD-Core Version:    0.6.2
 */