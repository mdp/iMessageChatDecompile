package org.jsoup.nodes;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.jsoup.helper.StringUtil;
import org.jsoup.parser.Tag;

public class TextNode extends Node
{
  String f;

  public TextNode(String paramString1, String paramString2)
  {
    this.d = paramString2;
    this.f = paramString1;
  }

  static String a(String paramString)
  {
    return StringUtil.b(paramString);
  }

  static String b(String paramString)
  {
    return paramString.replaceFirst("^\\s+", "");
  }

  static boolean b(StringBuilder paramStringBuilder)
  {
    return (paramStringBuilder.length() != 0) && (paramStringBuilder.charAt(-1 + paramStringBuilder.length()) == ' ');
  }

  private void e()
  {
    if (this.c == null)
    {
      this.c = new Attributes();
      this.c.a("text", this.f);
    }
  }

  public final String a()
  {
    return "#text";
  }

  final void a(StringBuilder paramStringBuilder, int paramInt, Document.OutputSettings paramOutputSettings)
  {
    String str = Entities.a(d(), paramOutputSettings);
    if ((paramOutputSettings.c()) && ((u() instanceof Element)) && (!Element.c((Element)u())))
      str = StringUtil.b(str);
    if (paramOutputSettings.c())
      if ((this.e != 0) || (!(this.a instanceof Element)) || (!((Element)this.a).h().c()) || (StringUtil.a(d())))
      {
        if (!paramOutputSettings.d())
          break label142;
        if (this.a != null)
          break label150;
      }
    label142: label150: ArrayList localArrayList;
    for (Object localObject = Collections.emptyList(); ; localObject = localArrayList)
    {
      if ((((List)localObject).size() > 0) && (!StringUtil.a(d())))
        c(paramStringBuilder, paramInt, paramOutputSettings);
      paramStringBuilder.append(str);
      return;
      List localList = this.a.b;
      localArrayList = new ArrayList(-1 + localList.size());
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        Node localNode = (Node)localIterator.next();
        if (localNode != this)
          localArrayList.add(localNode);
      }
    }
  }

  public final Node b(String paramString1, String paramString2)
  {
    e();
    return super.b(paramString1, paramString2);
  }

  final void b(StringBuilder paramStringBuilder, int paramInt, Document.OutputSettings paramOutputSettings)
  {
  }

  public final String c()
  {
    return StringUtil.b(d());
  }

  public final String c(String paramString)
  {
    e();
    return super.c(paramString);
  }

  public final String d()
  {
    if (this.c == null)
      return this.f;
    return this.c.a("text");
  }

  public final boolean d(String paramString)
  {
    e();
    return super.d(paramString);
  }

  public final String f(String paramString)
  {
    e();
    return super.f(paramString);
  }

  public String toString()
  {
    return b_();
  }

  public final Attributes v()
  {
    e();
    return super.v();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.nodes.TextNode
 * JD-Core Version:    0.6.2
 */