package org.jsoup.parser;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.jsoup.helper.DescendableLinkedList;
import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.DataNode;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;

class HtmlTreeBuilder extends TreeBuilder
{
  private HtmlTreeBuilderState i;
  private HtmlTreeBuilderState j;
  private boolean k = false;
  private Element l;
  private Element m;
  private Element n;
  private DescendableLinkedList o = new DescendableLinkedList();
  private List p = new ArrayList();
  private boolean q = true;
  private boolean r = false;
  private boolean s = false;

  static
  {
    if (!HtmlTreeBuilder.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      a = bool;
      return;
    }
  }

  private static void a(LinkedList paramLinkedList, Element paramElement1, Element paramElement2)
  {
    int i1 = paramLinkedList.lastIndexOf(paramElement1);
    if (i1 != -1);
    for (boolean bool = true; ; bool = false)
    {
      Validate.a(bool);
      paramLinkedList.remove(i1);
      paramLinkedList.add(i1, paramElement2);
      return;
    }
  }

  private boolean a(String paramString, String[] paramArrayOfString)
  {
    return a(paramString, new String[] { "applet", "caption", "html", "table", "td", "th", "marquee", "object" }, paramArrayOfString);
  }

  private boolean a(String paramString, String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    return a(new String[] { paramString }, paramArrayOfString1, paramArrayOfString2);
  }

  private static boolean a(DescendableLinkedList paramDescendableLinkedList, Element paramElement)
  {
    Iterator localIterator = paramDescendableLinkedList.c();
    while (localIterator.hasNext())
      if ((Element)localIterator.next() == paramElement)
        return true;
    return false;
  }

  private boolean a(String[] paramArrayOfString1, String[] paramArrayOfString2, String[] paramArrayOfString3)
  {
    Iterator localIterator = this.e.c();
    while (localIterator.hasNext())
    {
      String str = ((Element)localIterator.next()).a();
      if (StringUtil.a(str, paramArrayOfString1))
        return true;
      if (StringUtil.a(str, paramArrayOfString2))
        return false;
      if ((paramArrayOfString3 != null) && (StringUtil.a(str, paramArrayOfString3)))
        return false;
    }
    Validate.b("Should not be reachable");
    return false;
  }

  private void b(Node paramNode)
  {
    if (this.e.size() == 0)
    {
      this.d.a(paramNode);
      return;
    }
    if (this.r)
    {
      a(paramNode);
      return;
    }
    v().a(paramNode);
  }

  private void c(String[] paramArrayOfString)
  {
    Iterator localIterator = this.e.c();
    while (localIterator.hasNext())
    {
      Element localElement = (Element)localIterator.next();
      if ((StringUtil.a(localElement.a(), paramArrayOfString)) || (localElement.a().equals("html")))
        break;
      localIterator.remove();
    }
  }

  static boolean h(Element paramElement)
  {
    return StringUtil.a(paramElement.a(), new String[] { "address", "applet", "area", "article", "aside", "base", "basefont", "bgsound", "blockquote", "body", "br", "button", "caption", "center", "col", "colgroup", "command", "dd", "details", "dir", "div", "dl", "dt", "embed", "fieldset", "figcaption", "figure", "footer", "form", "frame", "frameset", "h1", "h2", "h3", "h4", "h5", "h6", "head", "header", "hgroup", "hr", "html", "iframe", "img", "input", "isindex", "li", "link", "listing", "marquee", "menu", "meta", "nav", "noembed", "noframes", "noscript", "object", "ol", "p", "param", "plaintext", "pre", "script", "section", "select", "style", "summary", "table", "tbody", "td", "textarea", "tfoot", "th", "thead", "title", "tr", "ul", "wbr", "xmp" });
  }

  private void l(Element paramElement)
  {
    b(paramElement);
    this.e.add(paramElement);
  }

  final Document a(String paramString1, String paramString2, ParseErrorList paramParseErrorList)
  {
    this.i = HtmlTreeBuilderState.a;
    return super.a(paramString1, paramString2, paramParseErrorList);
  }

  final Element a(String paramString)
  {
    Element localElement = new Element(Tag.a(paramString), this.f);
    l(localElement);
    return localElement;
  }

  final Element a(Token.StartTag paramStartTag)
  {
    if (paramStartTag.p())
    {
      Element localElement2 = b(paramStartTag);
      this.e.add(localElement2);
      this.c.a(new Token.EndTag(localElement2.g()));
      return localElement2;
    }
    Element localElement1 = new Element(Tag.a(paramStartTag.o()), this.f, paramStartTag.d);
    l(localElement1);
    return localElement1;
  }

  final HtmlTreeBuilderState a()
  {
    return this.i;
  }

  final void a(Element paramElement)
  {
    if (this.k);
    String str;
    do
    {
      return;
      str = paramElement.f("href");
    }
    while (str.length() == 0);
    this.f = str;
    this.k = true;
    this.d.e(str);
  }

  final void a(Element paramElement1, Element paramElement2)
  {
    int i1 = this.e.lastIndexOf(paramElement1);
    if (i1 != -1);
    for (boolean bool = true; ; bool = false)
    {
      Validate.a(bool);
      this.e.add(i1 + 1, paramElement2);
      return;
    }
  }

  final void a(Node paramNode)
  {
    Element localElement1 = b("table");
    int i1;
    Element localElement2;
    if (localElement1 != null)
      if (localElement1.k() != null)
      {
        localElement1.k();
        i1 = 1;
        localElement2 = null;
      }
    while (i1 != 0)
    {
      Validate.a(localElement1);
      localElement1.b(paramNode);
      return;
      localElement2 = e(localElement1);
      i1 = 0;
      continue;
      localElement2 = (Element)this.e.get(0);
      i1 = 0;
    }
    localElement2.a(paramNode);
  }

  final void a(HtmlTreeBuilderState paramHtmlTreeBuilderState)
  {
    this.i = paramHtmlTreeBuilderState;
  }

  final void a(Token.Character paramCharacter)
  {
    if (StringUtil.a(v().g(), new String[] { "script", "style" }));
    for (Object localObject = new DataNode(paramCharacter.m(), this.f); ; localObject = new TextNode(paramCharacter.m(), this.f))
    {
      v().a((Node)localObject);
      return;
    }
  }

  final void a(Token.Comment paramComment)
  {
    b(new Comment(paramComment.m(), this.f));
  }

  final void a(boolean paramBoolean)
  {
    this.q = paramBoolean;
  }

  final void a(String[] paramArrayOfString)
  {
    Iterator localIterator = this.e.c();
    while (true)
    {
      if (localIterator.hasNext())
      {
        if (StringUtil.a(((Element)localIterator.next()).a(), paramArrayOfString))
          localIterator.remove();
      }
      else
        return;
      localIterator.remove();
    }
  }

  protected final boolean a(Token paramToken)
  {
    this.g = paramToken;
    return this.i.a(paramToken, this);
  }

  final boolean a(Token paramToken, HtmlTreeBuilderState paramHtmlTreeBuilderState)
  {
    this.g = paramToken;
    return paramHtmlTreeBuilderState.a(paramToken, this);
  }

  final Element b(String paramString)
  {
    Iterator localIterator = this.e.c();
    while (localIterator.hasNext())
    {
      Element localElement = (Element)localIterator.next();
      if (localElement.a().equals(paramString))
        return localElement;
    }
    return null;
  }

  final Element b(Token.StartTag paramStartTag)
  {
    Tag localTag = Tag.a(paramStartTag.o());
    Element localElement = new Element(localTag, this.f, paramStartTag.d);
    b(localElement);
    if (paramStartTag.p())
    {
      if (!localTag.e())
        break label60;
      if (localTag.d())
        this.c.b();
    }
    return localElement;
    label60: localTag.g();
    this.c.b();
    return localElement;
  }

  final void b()
  {
    this.j = this.i;
  }

  final void b(Element paramElement)
  {
    this.e.add(paramElement);
  }

  final void b(Element paramElement1, Element paramElement2)
  {
    a(this.e, paramElement1, paramElement2);
  }

  final void b(HtmlTreeBuilderState paramHtmlTreeBuilderState)
  {
    if (this.h.a())
    {
      ParseErrorList localParseErrorList = this.h;
      int i1 = this.b.a();
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = this.g.a();
      arrayOfObject[1] = paramHtmlTreeBuilderState;
      localParseErrorList.add(new ParseError(i1, "Unexpected token [%s] when in state [%s]", arrayOfObject));
    }
  }

  final void b(boolean paramBoolean)
  {
    this.r = paramBoolean;
  }

  final boolean b(String[] paramArrayOfString)
  {
    return a(paramArrayOfString, new String[] { "applet", "caption", "html", "table", "td", "th", "marquee", "object" }, null);
  }

  final HtmlTreeBuilderState c()
  {
    return this.j;
  }

  final void c(String paramString)
  {
    Iterator localIterator = this.e.c();
    while (true)
    {
      if (localIterator.hasNext())
      {
        if (((Element)localIterator.next()).a().equals(paramString))
          localIterator.remove();
      }
      else
        return;
      localIterator.remove();
    }
  }

  final void c(Element paramElement1, Element paramElement2)
  {
    a(this.o, paramElement1, paramElement2);
  }

  final boolean c(Element paramElement)
  {
    return a(this.e, paramElement);
  }

  final void d(String paramString)
  {
    Iterator localIterator = this.e.c();
    while ((localIterator.hasNext()) && (!((Element)localIterator.next()).a().equals(paramString)))
      localIterator.remove();
  }

  final boolean d()
  {
    return this.q;
  }

  final boolean d(Element paramElement)
  {
    Iterator localIterator = this.e.c();
    while (localIterator.hasNext())
      if ((Element)localIterator.next() == paramElement)
      {
        localIterator.remove();
        return true;
      }
    return false;
  }

  final Document e()
  {
    return this.d;
  }

  final Element e(Element paramElement)
  {
    if ((!a) && (!c(paramElement)))
      throw new AssertionError();
    Iterator localIterator = this.e.c();
    while (localIterator.hasNext())
      if ((Element)localIterator.next() == paramElement)
        return (Element)localIterator.next();
    return null;
  }

  final boolean e(String paramString)
  {
    return a(paramString, null);
  }

  final String f()
  {
    return this.f;
  }

  final void f(Element paramElement)
  {
    this.l = paramElement;
  }

  final boolean f(String paramString)
  {
    return a(paramString, new String[] { "ol", "ul" });
  }

  final void g(Element paramElement)
  {
    this.m = paramElement;
  }

  final boolean g()
  {
    return this.s;
  }

  final boolean g(String paramString)
  {
    return a(paramString, new String[] { "button" });
  }

  final Element h()
  {
    if ((((Element)this.e.a()).a().equals("td")) && (!this.i.name().equals("InCell")))
      Validate.a(true, "pop td not in cell");
    if (((Element)this.e.a()).a().equals("html"))
      Validate.a(true, "popping html!");
    return (Element)this.e.b();
  }

  final boolean h(String paramString)
  {
    return a(paramString, new String[] { "html", "table" }, null);
  }

  final DescendableLinkedList i()
  {
    return this.e;
  }

  final void i(Element paramElement)
  {
    Iterator localIterator = this.o.c();
    int i1 = 0;
    int i2;
    if (localIterator.hasNext())
    {
      Element localElement = (Element)localIterator.next();
      if (localElement != null)
      {
        if ((!paramElement.a().equals(localElement.a())) || (!paramElement.v().equals(localElement.v())))
          break label100;
        i2 = 1;
        label68: if (i2 == 0)
          break label112;
      }
    }
    label100: label112: for (int i3 = i1 + 1; ; i3 = i1)
    {
      if (i3 == 3)
      {
        localIterator.remove();
        this.o.add(paramElement);
        return;
        i2 = 0;
        break label68;
      }
      i1 = i3;
      break;
    }
  }

  final boolean i(String paramString)
  {
    Iterator localIterator = this.e.c();
    while (localIterator.hasNext())
    {
      String str = ((Element)localIterator.next()).a();
      if (str.equals(paramString))
        return true;
      if (!StringUtil.a(str, new String[] { "optgroup", "option" }))
        return false;
    }
    Validate.b("Should not be reachable");
    return false;
  }

  final void j()
  {
    c(new String[] { "table" });
  }

  final void j(String paramString)
  {
    while ((paramString != null) && (!v().a().equals(paramString)))
    {
      if (!StringUtil.a(v().a(), new String[] { "dd", "dt", "li", "option", "optgroup", "p", "rp", "rt" }))
        break;
      h();
    }
  }

  final void j(Element paramElement)
  {
    Iterator localIterator = this.o.c();
    while (localIterator.hasNext())
      if ((Element)localIterator.next() == paramElement)
        localIterator.remove();
  }

  final Element k(String paramString)
  {
    Iterator localIterator = this.o.c();
    while (localIterator.hasNext())
    {
      Element localElement = (Element)localIterator.next();
      if (localElement != null)
        if (localElement.a().equals(paramString))
          return localElement;
    }
    return null;
  }

  final void k()
  {
    c(new String[] { "tbody", "tfoot", "thead" });
  }

  final boolean k(Element paramElement)
  {
    return a(this.o, paramElement);
  }

  final void l()
  {
    c(new String[] { "tr" });
  }

  final void m()
  {
    Iterator localIterator = this.e.c();
    int i1 = 0;
    Element localElement1;
    Element localElement3;
    int i2;
    if (localIterator.hasNext())
    {
      localElement1 = (Element)localIterator.next();
      if (localIterator.hasNext())
        break label315;
      localElement3 = this.n;
      i2 = 1;
    }
    for (Element localElement2 = localElement3; ; localElement2 = localElement1)
    {
      String str = localElement2.a();
      if ("select".equals(str))
      {
        this.i = HtmlTreeBuilderState.p;
        return;
      }
      if (("td".equals(str)) || (("td".equals(str)) && (i2 == 0)))
      {
        this.i = HtmlTreeBuilderState.o;
        return;
      }
      if ("tr".equals(str))
      {
        this.i = HtmlTreeBuilderState.n;
        return;
      }
      if (("tbody".equals(str)) || ("thead".equals(str)) || ("tfoot".equals(str)))
      {
        this.i = HtmlTreeBuilderState.m;
        return;
      }
      if ("caption".equals(str))
      {
        this.i = HtmlTreeBuilderState.k;
        return;
      }
      if ("colgroup".equals(str))
      {
        this.i = HtmlTreeBuilderState.l;
        return;
      }
      if ("table".equals(str))
      {
        this.i = HtmlTreeBuilderState.i;
        return;
      }
      if ("head".equals(str))
      {
        this.i = HtmlTreeBuilderState.g;
        return;
      }
      if ("body".equals(str))
      {
        this.i = HtmlTreeBuilderState.g;
        return;
      }
      if ("frameset".equals(str))
      {
        this.i = HtmlTreeBuilderState.s;
        return;
      }
      if ("html".equals(str))
      {
        this.i = HtmlTreeBuilderState.c;
        return;
      }
      if (i2 != 0)
      {
        this.i = HtmlTreeBuilderState.g;
        return;
      }
      i1 = i2;
      break;
      label315: i2 = i1;
    }
  }

  final Element n()
  {
    return this.l;
  }

  final Element o()
  {
    return this.m;
  }

  final void p()
  {
    this.p = new ArrayList();
  }

  final List q()
  {
    return this.p;
  }

  final void r()
  {
    j(null);
  }

  final void s()
  {
    int i1 = this.o.size();
    if ((i1 == 0) || (this.o.getLast() == null) || (c((Element)this.o.getLast())))
      return;
    Element localElement1 = (Element)this.o.getLast();
    int i2 = i1 - 1;
    Element localElement2;
    label222: for (Object localObject1 = localElement1; ; localObject1 = localElement2)
    {
      int i4;
      Object localObject2;
      int i5;
      if (i2 == 0)
      {
        i4 = i2;
        localObject2 = localObject1;
        i5 = 1;
      }
      while (true)
      {
        if (i5 == 0)
        {
          DescendableLinkedList localDescendableLinkedList2 = this.o;
          int i6 = i4 + 1;
          localObject2 = (Element)localDescendableLinkedList2.get(i6);
          i4 = i6;
        }
        Validate.a(localObject2);
        Element localElement3 = a(((Element)localObject2).a());
        localElement3.v().a(((Element)localObject2).v());
        this.o.add(i4, localElement3);
        this.o.remove(i4 + 1);
        if (i4 == i1 - 1)
          break;
        i5 = 0;
        continue;
        DescendableLinkedList localDescendableLinkedList1 = this.o;
        i2--;
        localElement2 = (Element)localDescendableLinkedList1.get(i2);
        if ((localElement2 != null) && (!c(localElement2)))
          break label222;
        int i3 = i2;
        localObject2 = localElement2;
        i4 = i3;
        i5 = 0;
      }
    }
  }

  final void t()
  {
    Element localElement;
    do
    {
      if (this.o.isEmpty())
        break;
      localElement = (Element)this.o.a();
      this.o.removeLast();
    }
    while (localElement != null);
  }

  public String toString()
  {
    return "TreeBuilder{currentToken=" + this.g + ", state=" + this.i + ", currentElement=" + v() + '}';
  }

  final void u()
  {
    this.o.add(null);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.HtmlTreeBuilder
 * JD-Core Version:    0.6.2
 */