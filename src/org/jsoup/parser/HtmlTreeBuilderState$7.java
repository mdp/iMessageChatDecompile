package org.jsoup.parser;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.jsoup.helper.DescendableLinkedList;
import org.jsoup.helper.StringUtil;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Document.QuirksMode;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;

 enum HtmlTreeBuilderState$7
{
  HtmlTreeBuilderState$7()
  {
    super(str, 6, (byte)0);
  }

  private boolean b(Token paramToken, HtmlTreeBuilder paramHtmlTreeBuilder)
  {
    String str = paramToken.g().o();
    Iterator localIterator = paramHtmlTreeBuilder.i().c();
    Element localElement;
    do
      if (localIterator.hasNext())
      {
        localElement = (Element)localIterator.next();
        if (localElement.a().equals(str))
        {
          paramHtmlTreeBuilder.j(str);
          if (!str.equals(paramHtmlTreeBuilder.v().a()))
            paramHtmlTreeBuilder.b(this);
          paramHtmlTreeBuilder.c(str);
        }
      }
      else
      {
        return true;
      }
    while (!HtmlTreeBuilder.h(localElement));
    paramHtmlTreeBuilder.b(this);
    return false;
  }

  final boolean a(Token paramToken, HtmlTreeBuilder paramHtmlTreeBuilder)
  {
    switch (HtmlTreeBuilderState.24.a[paramToken.a.ordinal()])
    {
    default:
    case 5:
    case 1:
    case 2:
    case 3:
    case 4:
    }
    label1119: String str1;
    while (true)
    {
      return true;
      Token.Character localCharacter = paramToken.k();
      if (localCharacter.m().equals(HtmlTreeBuilderState.a()))
      {
        paramHtmlTreeBuilder.b(this);
        return false;
      }
      if (HtmlTreeBuilderState.a(localCharacter))
      {
        paramHtmlTreeBuilder.s();
        paramHtmlTreeBuilder.a(localCharacter);
      }
      else
      {
        paramHtmlTreeBuilder.s();
        paramHtmlTreeBuilder.a(localCharacter);
        paramHtmlTreeBuilder.a(false);
        continue;
        paramHtmlTreeBuilder.a(paramToken.i());
        continue;
        paramHtmlTreeBuilder.b(this);
        return false;
        Token.StartTag localStartTag = paramToken.e();
        String str2 = localStartTag.o();
        if (str2.equals("html"))
        {
          paramHtmlTreeBuilder.b(this);
          Element localElement10 = (Element)paramHtmlTreeBuilder.i().getFirst();
          Iterator localIterator3 = localStartTag.q().iterator();
          while (localIterator3.hasNext())
          {
            Attribute localAttribute3 = (Attribute)localIterator3.next();
            if (!localElement10.d(localAttribute3.a()))
              localElement10.v().a(localAttribute3);
          }
        }
        if (StringUtil.a(str2, new String[] { "base", "basefont", "bgsound", "command", "link", "meta", "noframes", "script", "style", "title" }))
          return paramHtmlTreeBuilder.a(paramToken, d);
        if (str2.equals("body"))
        {
          paramHtmlTreeBuilder.b(this);
          DescendableLinkedList localDescendableLinkedList5 = paramHtmlTreeBuilder.i();
          if ((localDescendableLinkedList5.size() == 1) || ((localDescendableLinkedList5.size() > 2) && (!((Element)localDescendableLinkedList5.get(1)).a().equals("body"))))
            return false;
          paramHtmlTreeBuilder.a(false);
          Element localElement9 = (Element)localDescendableLinkedList5.get(1);
          Iterator localIterator2 = localStartTag.q().iterator();
          while (localIterator2.hasNext())
          {
            Attribute localAttribute2 = (Attribute)localIterator2.next();
            if (!localElement9.d(localAttribute2.a()))
              localElement9.v().a(localAttribute2);
          }
        }
        if (str2.equals("frameset"))
        {
          paramHtmlTreeBuilder.b(this);
          DescendableLinkedList localDescendableLinkedList4 = paramHtmlTreeBuilder.i();
          if ((localDescendableLinkedList4.size() == 1) || ((localDescendableLinkedList4.size() > 2) && (!((Element)localDescendableLinkedList4.get(1)).a().equals("body"))))
            return false;
          if (!paramHtmlTreeBuilder.d())
            return false;
          Element localElement8 = (Element)localDescendableLinkedList4.get(1);
          if (localElement8.k() != null)
            localElement8.z();
          while (localDescendableLinkedList4.size() > 1)
            localDescendableLinkedList4.removeLast();
          paramHtmlTreeBuilder.a(localStartTag);
          paramHtmlTreeBuilder.a(s);
        }
        else if (StringUtil.a(str2, new String[] { "address", "article", "aside", "blockquote", "center", "details", "dir", "div", "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "menu", "nav", "ol", "p", "section", "summary", "ul" }))
        {
          if (paramHtmlTreeBuilder.g("p"))
            paramHtmlTreeBuilder.a(new Token.EndTag("p"));
          paramHtmlTreeBuilder.a(localStartTag);
        }
        else if (StringUtil.a(str2, new String[] { "h1", "h2", "h3", "h4", "h5", "h6" }))
        {
          if (paramHtmlTreeBuilder.g("p"))
            paramHtmlTreeBuilder.a(new Token.EndTag("p"));
          if (StringUtil.a(paramHtmlTreeBuilder.v().a(), new String[] { "h1", "h2", "h3", "h4", "h5", "h6" }))
          {
            paramHtmlTreeBuilder.b(this);
            paramHtmlTreeBuilder.h();
          }
          paramHtmlTreeBuilder.a(localStartTag);
        }
        else if (StringUtil.a(str2, new String[] { "pre", "listing" }))
        {
          if (paramHtmlTreeBuilder.g("p"))
            paramHtmlTreeBuilder.a(new Token.EndTag("p"));
          paramHtmlTreeBuilder.a(localStartTag);
          paramHtmlTreeBuilder.a(false);
        }
        else if (str2.equals("form"))
        {
          if (paramHtmlTreeBuilder.o() != null)
          {
            paramHtmlTreeBuilder.b(this);
            return false;
          }
          if (paramHtmlTreeBuilder.g("p"))
            paramHtmlTreeBuilder.a(new Token.EndTag("p"));
          paramHtmlTreeBuilder.g(paramHtmlTreeBuilder.a(localStartTag));
        }
        else
        {
          if (str2.equals("li"))
          {
            paramHtmlTreeBuilder.a(false);
            DescendableLinkedList localDescendableLinkedList3 = paramHtmlTreeBuilder.i();
            label1157: for (int i5 = -1 + localDescendableLinkedList3.size(); ; i5--)
            {
              Element localElement7;
              if (i5 > 0)
              {
                localElement7 = (Element)localDescendableLinkedList3.get(i5);
                if (!localElement7.a().equals("li"))
                  break label1119;
                paramHtmlTreeBuilder.a(new Token.EndTag("li"));
              }
              do
              {
                if (paramHtmlTreeBuilder.g("p"))
                  paramHtmlTreeBuilder.a(new Token.EndTag("p"));
                paramHtmlTreeBuilder.a(localStartTag);
                break;
                if (!HtmlTreeBuilder.h(localElement7))
                  break label1157;
              }
              while (!StringUtil.a(localElement7.a(), new String[] { "address", "div", "p" }));
            }
          }
          if (StringUtil.a(str2, new String[] { "dd", "dt" }))
          {
            paramHtmlTreeBuilder.a(false);
            DescendableLinkedList localDescendableLinkedList2 = paramHtmlTreeBuilder.i();
            label1301: label1339: for (int i4 = -1 + localDescendableLinkedList2.size(); ; i4--)
            {
              Element localElement6;
              if (i4 > 0)
              {
                localElement6 = (Element)localDescendableLinkedList2.get(i4);
                if (!StringUtil.a(localElement6.a(), new String[] { "dd", "dt" }))
                  break label1301;
                paramHtmlTreeBuilder.a(new Token.EndTag(localElement6.a()));
              }
              do
              {
                if (paramHtmlTreeBuilder.g("p"))
                  paramHtmlTreeBuilder.a(new Token.EndTag("p"));
                paramHtmlTreeBuilder.a(localStartTag);
                break;
                if (!HtmlTreeBuilder.h(localElement6))
                  break label1339;
              }
              while (!StringUtil.a(localElement6.a(), new String[] { "address", "div", "p" }));
            }
          }
          if (str2.equals("plaintext"))
          {
            if (paramHtmlTreeBuilder.g("p"))
              paramHtmlTreeBuilder.a(new Token.EndTag("p"));
            paramHtmlTreeBuilder.a(localStartTag);
            paramHtmlTreeBuilder.c.a(TokeniserState.g);
          }
          else if (str2.equals("button"))
          {
            if (paramHtmlTreeBuilder.g("button"))
            {
              paramHtmlTreeBuilder.b(this);
              paramHtmlTreeBuilder.a(new Token.EndTag("button"));
              paramHtmlTreeBuilder.a(localStartTag);
            }
            else
            {
              paramHtmlTreeBuilder.s();
              paramHtmlTreeBuilder.a(localStartTag);
              paramHtmlTreeBuilder.a(false);
            }
          }
          else if (str2.equals("a"))
          {
            if (paramHtmlTreeBuilder.k("a") != null)
            {
              paramHtmlTreeBuilder.b(this);
              paramHtmlTreeBuilder.a(new Token.EndTag("a"));
              Element localElement5 = paramHtmlTreeBuilder.b("a");
              if (localElement5 != null)
              {
                paramHtmlTreeBuilder.j(localElement5);
                paramHtmlTreeBuilder.d(localElement5);
              }
            }
            paramHtmlTreeBuilder.s();
            paramHtmlTreeBuilder.i(paramHtmlTreeBuilder.a(localStartTag));
          }
          else if (StringUtil.a(str2, new String[] { "b", "big", "code", "em", "font", "i", "s", "small", "strike", "strong", "tt", "u" }))
          {
            paramHtmlTreeBuilder.s();
            paramHtmlTreeBuilder.i(paramHtmlTreeBuilder.a(localStartTag));
          }
          else if (str2.equals("nobr"))
          {
            paramHtmlTreeBuilder.s();
            if (paramHtmlTreeBuilder.e("nobr"))
            {
              paramHtmlTreeBuilder.b(this);
              paramHtmlTreeBuilder.a(new Token.EndTag("nobr"));
              paramHtmlTreeBuilder.s();
            }
            paramHtmlTreeBuilder.i(paramHtmlTreeBuilder.a(localStartTag));
          }
          else if (StringUtil.a(str2, new String[] { "applet", "marquee", "object" }))
          {
            paramHtmlTreeBuilder.s();
            paramHtmlTreeBuilder.a(localStartTag);
            paramHtmlTreeBuilder.u();
            paramHtmlTreeBuilder.a(false);
          }
          else if (str2.equals("table"))
          {
            if ((paramHtmlTreeBuilder.e().d() != Document.QuirksMode.b) && (paramHtmlTreeBuilder.g("p")))
              paramHtmlTreeBuilder.a(new Token.EndTag("p"));
            paramHtmlTreeBuilder.a(localStartTag);
            paramHtmlTreeBuilder.a(false);
            paramHtmlTreeBuilder.a(i);
          }
          else if (StringUtil.a(str2, new String[] { "area", "br", "embed", "img", "keygen", "wbr" }))
          {
            paramHtmlTreeBuilder.s();
            paramHtmlTreeBuilder.b(localStartTag);
            paramHtmlTreeBuilder.a(false);
          }
          else if (str2.equals("input"))
          {
            paramHtmlTreeBuilder.s();
            if (!paramHtmlTreeBuilder.b(localStartTag).c("type").equalsIgnoreCase("hidden"))
              paramHtmlTreeBuilder.a(false);
          }
          else if (StringUtil.a(str2, new String[] { "param", "source", "track" }))
          {
            paramHtmlTreeBuilder.b(localStartTag);
          }
          else if (str2.equals("hr"))
          {
            if (paramHtmlTreeBuilder.g("p"))
              paramHtmlTreeBuilder.a(new Token.EndTag("p"));
            paramHtmlTreeBuilder.b(localStartTag);
            paramHtmlTreeBuilder.a(false);
          }
          else
          {
            if (str2.equals("image"))
            {
              localStartTag.a("img");
              return paramHtmlTreeBuilder.a(localStartTag);
            }
            if (str2.equals("isindex"))
            {
              paramHtmlTreeBuilder.b(this);
              if (paramHtmlTreeBuilder.o() != null)
                return false;
              paramHtmlTreeBuilder.c.b();
              paramHtmlTreeBuilder.a(new Token.StartTag("form"));
              if (localStartTag.d.b("action"))
                paramHtmlTreeBuilder.o().a("action", localStartTag.d.a("action"));
              paramHtmlTreeBuilder.a(new Token.StartTag("hr"));
              paramHtmlTreeBuilder.a(new Token.StartTag("label"));
              if (localStartTag.d.b("prompt"));
              Attributes localAttributes;
              for (String str3 = localStartTag.d.a("prompt"); ; str3 = "This is a searchable index. Enter search keywords: ")
              {
                paramHtmlTreeBuilder.a(new Token.Character(str3));
                localAttributes = new Attributes();
                Iterator localIterator1 = localStartTag.d.iterator();
                while (localIterator1.hasNext())
                {
                  Attribute localAttribute1 = (Attribute)localIterator1.next();
                  if (!StringUtil.a(localAttribute1.a(), new String[] { "name", "action", "prompt" }))
                    localAttributes.a(localAttribute1);
                }
              }
              localAttributes.a("name", "isindex");
              paramHtmlTreeBuilder.a(new Token.StartTag("input", localAttributes));
              paramHtmlTreeBuilder.a(new Token.EndTag("label"));
              paramHtmlTreeBuilder.a(new Token.StartTag("hr"));
              paramHtmlTreeBuilder.a(new Token.EndTag("form"));
            }
            else if (str2.equals("textarea"))
            {
              paramHtmlTreeBuilder.a(localStartTag);
              paramHtmlTreeBuilder.c.a(TokeniserState.c);
              paramHtmlTreeBuilder.b();
              paramHtmlTreeBuilder.a(false);
              paramHtmlTreeBuilder.a(h);
            }
            else if (str2.equals("xmp"))
            {
              if (paramHtmlTreeBuilder.g("p"))
                paramHtmlTreeBuilder.a(new Token.EndTag("p"));
              paramHtmlTreeBuilder.s();
              paramHtmlTreeBuilder.a(false);
              HtmlTreeBuilderState.a(localStartTag, paramHtmlTreeBuilder);
            }
            else if (str2.equals("iframe"))
            {
              paramHtmlTreeBuilder.a(false);
              HtmlTreeBuilderState.a(localStartTag, paramHtmlTreeBuilder);
            }
            else if (str2.equals("noembed"))
            {
              HtmlTreeBuilderState.a(localStartTag, paramHtmlTreeBuilder);
            }
            else if (str2.equals("select"))
            {
              paramHtmlTreeBuilder.s();
              paramHtmlTreeBuilder.a(localStartTag);
              paramHtmlTreeBuilder.a(false);
              HtmlTreeBuilderState localHtmlTreeBuilderState = paramHtmlTreeBuilder.a();
              if ((localHtmlTreeBuilderState.equals(i)) || (localHtmlTreeBuilderState.equals(k)) || (localHtmlTreeBuilderState.equals(m)) || (localHtmlTreeBuilderState.equals(n)) || (localHtmlTreeBuilderState.equals(o)))
                paramHtmlTreeBuilder.a(q);
              else
                paramHtmlTreeBuilder.a(p);
            }
            else if (StringUtil.a("optgroup", new String[] { "option" }))
            {
              if (paramHtmlTreeBuilder.v().a().equals("option"))
                paramHtmlTreeBuilder.a(new Token.EndTag("option"));
              paramHtmlTreeBuilder.s();
              paramHtmlTreeBuilder.a(localStartTag);
            }
            else if (StringUtil.a("rp", new String[] { "rt" }))
            {
              if (paramHtmlTreeBuilder.e("ruby"))
              {
                paramHtmlTreeBuilder.r();
                if (!paramHtmlTreeBuilder.v().a().equals("ruby"))
                {
                  paramHtmlTreeBuilder.b(this);
                  paramHtmlTreeBuilder.d("ruby");
                }
                paramHtmlTreeBuilder.a(localStartTag);
              }
            }
            else if (str2.equals("math"))
            {
              paramHtmlTreeBuilder.s();
              paramHtmlTreeBuilder.a(localStartTag);
              paramHtmlTreeBuilder.c.b();
            }
            else if (str2.equals("svg"))
            {
              paramHtmlTreeBuilder.s();
              paramHtmlTreeBuilder.a(localStartTag);
              paramHtmlTreeBuilder.c.b();
            }
            else
            {
              if (StringUtil.a(str2, new String[] { "caption", "col", "colgroup", "frame", "head", "tbody", "td", "tfoot", "th", "thead", "tr" }))
              {
                paramHtmlTreeBuilder.b(this);
                return false;
              }
              paramHtmlTreeBuilder.s();
              paramHtmlTreeBuilder.a(localStartTag);
              continue;
              Token.EndTag localEndTag = paramToken.g();
              str1 = localEndTag.o();
              if (str1.equals("body"))
              {
                if (!paramHtmlTreeBuilder.e("body"))
                {
                  paramHtmlTreeBuilder.b(this);
                  return false;
                }
                paramHtmlTreeBuilder.a(r);
              }
              else if (str1.equals("html"))
              {
                if (paramHtmlTreeBuilder.a(new Token.EndTag("body")))
                  return paramHtmlTreeBuilder.a(localEndTag);
              }
              else if (StringUtil.a(str1, new String[] { "address", "article", "aside", "blockquote", "button", "center", "details", "dir", "div", "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "listing", "menu", "nav", "ol", "pre", "section", "summary", "ul" }))
              {
                if (!paramHtmlTreeBuilder.e(str1))
                {
                  paramHtmlTreeBuilder.b(this);
                  return false;
                }
                paramHtmlTreeBuilder.r();
                if (!paramHtmlTreeBuilder.v().a().equals(str1))
                  paramHtmlTreeBuilder.b(this);
                paramHtmlTreeBuilder.c(str1);
              }
              else if (str1.equals("form"))
              {
                Element localElement4 = paramHtmlTreeBuilder.o();
                paramHtmlTreeBuilder.g(null);
                if ((localElement4 == null) || (!paramHtmlTreeBuilder.e(str1)))
                {
                  paramHtmlTreeBuilder.b(this);
                  return false;
                }
                paramHtmlTreeBuilder.r();
                if (!paramHtmlTreeBuilder.v().a().equals(str1))
                  paramHtmlTreeBuilder.b(this);
                paramHtmlTreeBuilder.d(localElement4);
              }
              else if (str1.equals("p"))
              {
                if (!paramHtmlTreeBuilder.g(str1))
                {
                  paramHtmlTreeBuilder.b(this);
                  paramHtmlTreeBuilder.a(new Token.StartTag(str1));
                  return paramHtmlTreeBuilder.a(localEndTag);
                }
                paramHtmlTreeBuilder.j(str1);
                if (!paramHtmlTreeBuilder.v().a().equals(str1))
                  paramHtmlTreeBuilder.b(this);
                paramHtmlTreeBuilder.c(str1);
              }
              else if (str1.equals("li"))
              {
                if (!paramHtmlTreeBuilder.f(str1))
                {
                  paramHtmlTreeBuilder.b(this);
                  return false;
                }
                paramHtmlTreeBuilder.j(str1);
                if (!paramHtmlTreeBuilder.v().a().equals(str1))
                  paramHtmlTreeBuilder.b(this);
                paramHtmlTreeBuilder.c(str1);
              }
              else if (StringUtil.a(str1, new String[] { "dd", "dt" }))
              {
                if (!paramHtmlTreeBuilder.e(str1))
                {
                  paramHtmlTreeBuilder.b(this);
                  return false;
                }
                paramHtmlTreeBuilder.j(str1);
                if (!paramHtmlTreeBuilder.v().a().equals(str1))
                  paramHtmlTreeBuilder.b(this);
                paramHtmlTreeBuilder.c(str1);
              }
              else
              {
                if (!StringUtil.a(str1, new String[] { "h1", "h2", "h3", "h4", "h5", "h6" }))
                  break;
                if (!paramHtmlTreeBuilder.b(new String[] { "h1", "h2", "h3", "h4", "h5", "h6" }))
                {
                  paramHtmlTreeBuilder.b(this);
                  return false;
                }
                paramHtmlTreeBuilder.j(str1);
                if (!paramHtmlTreeBuilder.v().a().equals(str1))
                  paramHtmlTreeBuilder.b(this);
                paramHtmlTreeBuilder.a(new String[] { "h1", "h2", "h3", "h4", "h5", "h6" });
              }
            }
          }
        }
      }
    }
    if (str1.equals("sarcasm"))
      return b(paramToken, paramHtmlTreeBuilder);
    int i;
    label3831: Element localElement1;
    Object localObject1;
    int j;
    int k;
    label3928: Object localObject2;
    Element localElement3;
    Object localObject6;
    int i3;
    if (StringUtil.a(str1, new String[] { "a", "b", "big", "code", "em", "font", "i", "nobr", "s", "small", "strike", "strong", "tt", "u" }))
    {
      i = 0;
      if (i < 8)
      {
        localElement1 = paramHtmlTreeBuilder.k(str1);
        if (localElement1 == null)
          return b(paramToken, paramHtmlTreeBuilder);
        if (!paramHtmlTreeBuilder.c(localElement1))
        {
          paramHtmlTreeBuilder.b(this);
          paramHtmlTreeBuilder.j(localElement1);
          return true;
        }
        if (!paramHtmlTreeBuilder.e(localElement1.a()))
        {
          paramHtmlTreeBuilder.b(this);
          return false;
        }
        if (paramHtmlTreeBuilder.v() != localElement1)
          paramHtmlTreeBuilder.b(this);
        localObject1 = null;
        j = 0;
        DescendableLinkedList localDescendableLinkedList1 = paramHtmlTreeBuilder.i();
        k = 0;
        int m = localDescendableLinkedList1.size();
        localObject2 = null;
        if (k < m)
        {
          localObject2 = null;
          if (k < 64)
          {
            localElement3 = (Element)localDescendableLinkedList1.get(k);
            if (localElement3 == localElement1)
            {
              localObject6 = (Element)localDescendableLinkedList1.get(k - 1);
              i3 = 1;
            }
          }
        }
      }
    }
    while (true)
    {
      k++;
      localObject1 = localObject6;
      j = i3;
      break label3928;
      if ((j != 0) && (HtmlTreeBuilder.h(localElement3)))
      {
        localObject2 = localElement3;
        if (localObject2 == null)
        {
          paramHtmlTreeBuilder.c(localElement1.a());
          paramHtmlTreeBuilder.j(localElement1);
          return true;
        }
        Object localObject3 = localObject2;
        int n = 0;
        Object localObject4 = localObject2;
        if (n < 3)
        {
          if (paramHtmlTreeBuilder.c((Element)localObject3))
            localObject3 = paramHtmlTreeBuilder.e((Element)localObject3);
          Object localObject5;
          if (!paramHtmlTreeBuilder.k((Element)localObject3))
          {
            paramHtmlTreeBuilder.d((Element)localObject3);
            localObject5 = localObject3;
          }
          while (true)
          {
            n++;
            localObject3 = localObject5;
            break;
            if (localObject3 == localElement1)
              break label4180;
            localObject5 = new Element(Tag.a(((Element)localObject3).a()), paramHtmlTreeBuilder.f());
            paramHtmlTreeBuilder.c((Element)localObject3, (Element)localObject5);
            paramHtmlTreeBuilder.b((Element)localObject3, (Element)localObject5);
            if (localObject4.k() != null)
              localObject4.z();
            ((Element)localObject5).a(localObject4);
            localObject4 = localObject5;
          }
        }
        label4180: if (StringUtil.a(localObject1.a(), new String[] { "table", "tbody", "tfoot", "thead", "tr" }))
        {
          if (localObject4.k() != null)
            localObject4.z();
          paramHtmlTreeBuilder.a(localObject4);
        }
        Element localElement2;
        while (true)
        {
          localElement2 = new Element(Tag.a(str1), paramHtmlTreeBuilder.f());
          Node[] arrayOfNode = (Node[])localObject2.x().toArray(new Node[localObject2.y()]);
          int i1 = arrayOfNode.length;
          for (int i2 = 0; i2 < i1; i2++)
            localElement2.a(arrayOfNode[i2]);
          if (localObject4.k() != null)
            localObject4.z();
          localObject1.a(localObject4);
        }
        localObject2.a(localElement2);
        paramHtmlTreeBuilder.j(localElement1);
        paramHtmlTreeBuilder.d(localElement1);
        paramHtmlTreeBuilder.a(localObject2, localElement2);
        i++;
        break label3831;
        break;
        if (StringUtil.a(str1, new String[] { "applet", "marquee", "object" }))
        {
          if (paramHtmlTreeBuilder.e("name"))
            break;
          if (!paramHtmlTreeBuilder.e(str1))
          {
            paramHtmlTreeBuilder.b(this);
            return false;
          }
          paramHtmlTreeBuilder.r();
          if (!paramHtmlTreeBuilder.v().a().equals(str1))
            paramHtmlTreeBuilder.b(this);
          paramHtmlTreeBuilder.c(str1);
          paramHtmlTreeBuilder.t();
          break;
        }
        if (str1.equals("br"))
        {
          paramHtmlTreeBuilder.b(this);
          paramHtmlTreeBuilder.a(new Token.StartTag("br"));
          return false;
        }
        return b(paramToken, paramHtmlTreeBuilder);
      }
      i3 = j;
      localObject6 = localObject1;
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.HtmlTreeBuilderState.7
 * JD-Core Version:    0.6.2
 */