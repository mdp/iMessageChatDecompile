package org.jsoup.nodes;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.jsoup.helper.Validate;
import org.jsoup.parser.Tag;
import org.jsoup.select.Collector;
import org.jsoup.select.Elements;
import org.jsoup.select.Evaluator.AllElements;
import org.jsoup.select.Evaluator.Tag;
import org.jsoup.select.NodeTraversor;

public class Element extends Node
{
  private Tag f;
  private Set g;

  public Element(Tag paramTag, String paramString)
  {
    this(paramTag, paramString, new Attributes());
  }

  public Element(Tag paramTag, String paramString, Attributes paramAttributes)
  {
    super(paramString, paramAttributes);
    Validate.a(paramTag);
    this.f = paramTag;
  }

  private static Integer a(Element paramElement, List paramList)
  {
    Validate.a(paramElement);
    Validate.a(paramList);
    for (int i = 0; i < paramList.size(); i++)
      if (((Element)paramList.get(i)).equals(paramElement))
        return Integer.valueOf(i);
    return null;
  }

  private void b(StringBuilder paramStringBuilder)
  {
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
    {
      Node localNode = (Node)localIterator.next();
      if ((localNode instanceof TextNode))
        b(paramStringBuilder, (TextNode)localNode);
      else if (((localNode instanceof Element)) && (((Element)localNode).f.a().equals("br")) && (!TextNode.b(paramStringBuilder)))
        paramStringBuilder.append(" ");
    }
  }

  private static void b(StringBuilder paramStringBuilder, TextNode paramTextNode)
  {
    String str = paramTextNode.d();
    if (!c(paramTextNode.u()))
    {
      str = TextNode.a(str);
      if (TextNode.b(paramStringBuilder))
        str = TextNode.b(str);
    }
    paramStringBuilder.append(str);
  }

  private void c(StringBuilder paramStringBuilder)
  {
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
      ((Node)localIterator.next()).a(paramStringBuilder);
  }

  static boolean c(Node paramNode)
  {
    if ((paramNode != null) && ((paramNode instanceof Element)))
    {
      Element localElement = (Element)paramNode;
      return (localElement.f.f()) || (((Element)localElement.a != null) && (((Element)localElement.a).f.f()));
    }
    return false;
  }

  public String a()
  {
    return this.f.a();
  }

  public final Element a(String paramString1, String paramString2)
  {
    super.b(paramString1, paramString2);
    return this;
  }

  public final Element a(Node paramNode)
  {
    Validate.a(paramNode);
    a(new Node[] { paramNode });
    return this;
  }

  public final Elements a(String paramString)
  {
    Validate.a(paramString);
    return Collector.a(new Evaluator.Tag(paramString.toLowerCase().trim()), this);
  }

  final void a(StringBuilder paramStringBuilder, int paramInt, Document.OutputSettings paramOutputSettings)
  {
    if ((paramStringBuilder.length() > 0) && (paramOutputSettings.c()) && ((this.f.c()) || (((Element)this.a != null) && (((Element)this.a).f.c())) || (paramOutputSettings.d())))
      c(paramStringBuilder, paramInt, paramOutputSettings);
    paramStringBuilder.append("<").append(this.f.a());
    this.c.a(paramStringBuilder, paramOutputSettings);
    if ((this.b.isEmpty()) && (this.f.d()))
    {
      paramStringBuilder.append(" />");
      return;
    }
    paramStringBuilder.append(">");
  }

  public final Element b(Node paramNode)
  {
    return (Element)super.d(paramNode);
  }

  final void b(StringBuilder paramStringBuilder, int paramInt, Document.OutputSettings paramOutputSettings)
  {
    if ((!this.b.isEmpty()) || (!this.f.d()))
    {
      if ((paramOutputSettings.c()) && (!this.b.isEmpty()) && ((this.f.c()) || ((paramOutputSettings.d()) && ((this.b.size() > 1) || ((this.b.size() == 1) && (!(this.b.get(0) instanceof TextNode)))))))
        c(paramStringBuilder, paramInt, paramOutputSettings);
      paramStringBuilder.append("</").append(this.f.a()).append(">");
    }
  }

  public final boolean b(String paramString)
  {
    if (this.g == null)
      this.g = new LinkedHashSet(Arrays.asList(c("class").split("\\s+")));
    Iterator localIterator = this.g.iterator();
    while (localIterator.hasNext())
      if (paramString.equalsIgnoreCase((String)localIterator.next()))
        return true;
    return false;
  }

  public Element e()
  {
    Element localElement = (Element)super.f();
    localElement.g = null;
    return localElement;
  }

  public boolean equals(Object paramObject)
  {
    return this == paramObject;
  }

  public final String g()
  {
    return this.f.a();
  }

  public final Tag h()
  {
    return this.f;
  }

  public int hashCode()
  {
    int i = 31 * super.hashCode();
    if (this.f != null);
    for (int j = this.f.hashCode(); ; j = 0)
      return j + i;
  }

  public final boolean i()
  {
    return this.f.b();
  }

  public final String j()
  {
    String str = c("id");
    if (str == null)
      str = "";
    return str;
  }

  public final Element k()
  {
    return (Element)this.a;
  }

  public final Element l()
  {
    return m().a(0);
  }

  public final Elements m()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
    {
      Node localNode = (Node)localIterator.next();
      if ((localNode instanceof Element))
        localArrayList.add((Element)localNode);
    }
    return new Elements(localArrayList);
  }

  public final Elements n()
  {
    if (this.a == null)
      return new Elements(0);
    Elements localElements1 = ((Element)this.a).m();
    Elements localElements2 = new Elements(-1 + localElements1.size());
    Iterator localIterator = localElements1.iterator();
    while (localIterator.hasNext())
    {
      Element localElement = (Element)localIterator.next();
      if (localElement != this)
        localElements2.a(localElement);
    }
    return localElements2;
  }

  public final Element o()
  {
    if (this.a == null)
      return null;
    Elements localElements = ((Element)this.a).m();
    Integer localInteger = a(this, localElements);
    Validate.a(localInteger);
    if (localInteger.intValue() > 0)
      return (Element)localElements.get(-1 + localInteger.intValue());
    return null;
  }

  public final Integer p()
  {
    if ((Element)this.a == null)
      return Integer.valueOf(0);
    return a(this, ((Element)this.a).m());
  }

  public final Elements q()
  {
    return Collector.a(new Evaluator.AllElements(), this);
  }

  public final String r()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    new NodeTraversor(new Element.1(this, localStringBuilder)).a(this);
    return localStringBuilder.toString().trim();
  }

  public final String s()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    b(localStringBuilder);
    return localStringBuilder.toString().trim();
  }

  public final String t()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    c(localStringBuilder);
    return localStringBuilder.toString().trim();
  }

  public String toString()
  {
    return b_();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.nodes.Element
 * JD-Core Version:    0.6.2
 */