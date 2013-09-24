package org.jsoup.parser;

import java.util.Iterator;
import org.jsoup.helper.DescendableLinkedList;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.DocumentType;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.nodes.XmlDeclaration;

public class XmlTreeBuilder extends TreeBuilder
{
  private void a(Node paramNode)
  {
    v().a(paramNode);
  }

  protected final boolean a(Token paramToken)
  {
    switch (XmlTreeBuilder.1.a[paramToken.a.ordinal()])
    {
    default:
      Validate.b("Unexpected token type: " + paramToken.a);
    case 6:
    case 1:
    case 2:
      Object localObject2;
      do
      {
        Tag localTag;
        Element localElement2;
        do
        {
          return true;
          Token.StartTag localStartTag = paramToken.e();
          localTag = Tag.a(localStartTag.o());
          localElement2 = new Element(localTag, this.f, localStartTag.d);
          a(localElement2);
          if (!localStartTag.p())
            break;
          this.c.b();
        }
        while (localTag.e());
        localTag.g();
        return true;
        this.e.add(localElement2);
        return true;
        String str2 = paramToken.g().o();
        Iterator localIterator1 = this.e.c();
        Element localElement1;
        do
        {
          boolean bool = localIterator1.hasNext();
          localObject2 = null;
          if (!bool)
            break;
          localElement1 = (Element)localIterator1.next();
        }
        while (!localElement1.a().equals(str2));
        localObject2 = localElement1;
      }
      while (localObject2 == null);
      Iterator localIterator2 = this.e.c();
      while (localIterator2.hasNext())
      {
        if ((Element)localIterator2.next() == localObject2)
        {
          localIterator2.remove();
          return true;
        }
        localIterator2.remove();
      }
    case 3:
      Token.Comment localComment = paramToken.i();
      Object localObject1 = new Comment(localComment.m(), this.f);
      if (localComment.c)
      {
        String str1 = ((Comment)localObject1).b();
        if ((str1.length() > 1) && ((str1.startsWith("!")) || (str1.startsWith("?"))))
          localObject1 = new XmlDeclaration(str1.substring(1), ((Comment)localObject1).w(), str1.startsWith("!"));
      }
      a((Node)localObject1);
      return true;
    case 4:
      a(new TextNode(paramToken.k().m(), this.f));
      return true;
    case 5:
    }
    Token.Doctype localDoctype = paramToken.c();
    a(new DocumentType(localDoctype.m(), localDoctype.n(), localDoctype.o(), this.f));
    return true;
  }

  protected final void b(String paramString1, String paramString2, ParseErrorList paramParseErrorList)
  {
    super.b(paramString1, paramString2, paramParseErrorList);
    this.e.add(this.d);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.XmlTreeBuilder
 * JD-Core Version:    0.6.2
 */