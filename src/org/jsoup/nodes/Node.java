package org.jsoup.nodes;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;
import org.jsoup.select.NodeTraversor;

public abstract class Node
  implements Cloneable
{
  Node a;
  List b;
  Attributes c;
  String d;
  int e;

  protected Node()
  {
    this.b = Collections.emptyList();
    this.c = null;
  }

  protected Node(String paramString)
  {
    this(paramString, new Attributes());
  }

  protected Node(String paramString, Attributes paramAttributes)
  {
    Validate.a(paramString);
    Validate.a(paramAttributes);
    this.b = new ArrayList(4);
    this.d = paramString.trim();
    this.c = paramAttributes;
  }

  private void a(Node paramNode)
  {
    if (paramNode.a == this);
    for (boolean bool = true; ; bool = false)
    {
      Validate.a(bool);
      int i = paramNode.e;
      this.b.remove(i);
      d();
      paramNode.a = null;
      return;
    }
  }

  private void b(Node paramNode)
  {
    if (paramNode.a != null)
      paramNode.a.a(paramNode);
    if (paramNode.a != null)
      paramNode.a.a(paramNode);
    paramNode.a = this;
  }

  private Document c()
  {
    for (Node localNode = this; ; localNode = localNode.a)
    {
      if ((localNode instanceof Document))
        return (Document)localNode;
      if (localNode.a == null)
        return null;
    }
  }

  private Node c(Node paramNode)
  {
    Node localNode1;
    while (true)
    {
      try
      {
        localNode1 = (Node)super.clone();
        localNode1.a = paramNode;
        if (paramNode == null)
        {
          i = 0;
          localNode1.e = i;
          if (this.c == null)
            break label147;
          localAttributes = this.c.c();
          localNode1.c = localAttributes;
          localNode1.d = this.d;
          localNode1.b = new ArrayList(this.b.size());
          Iterator localIterator = this.b.iterator();
          if (!localIterator.hasNext())
            break;
          Node localNode2 = (Node)localIterator.next();
          localNode1.b.add(localNode2.c(localNode1));
          continue;
        }
      }
      catch (CloneNotSupportedException localCloneNotSupportedException)
      {
        throw new RuntimeException(localCloneNotSupportedException);
      }
      int i = this.e;
      continue;
      label147: Attributes localAttributes = null;
    }
    return localNode1;
  }

  protected static void c(StringBuilder paramStringBuilder, int paramInt, Document.OutputSettings paramOutputSettings)
  {
    paramStringBuilder.append("\n").append(StringUtil.a(paramInt * paramOutputSettings.e()));
  }

  private void d()
  {
    for (int i = 0; i < this.b.size(); i++)
      ((Node)this.b.get(i)).e = i;
  }

  public final Node A()
  {
    if (this.a == null);
    List localList;
    Integer localInteger;
    do
    {
      return null;
      localList = this.a.b;
      localInteger = Integer.valueOf(this.e);
      Validate.a(localInteger);
    }
    while (localList.size() <= 1 + localInteger.intValue());
    return (Node)localList.get(1 + localInteger.intValue());
  }

  public abstract String a();

  public final Node a(int paramInt)
  {
    return (Node)this.b.get(paramInt);
  }

  protected final void a(StringBuilder paramStringBuilder)
  {
    if (c() != null);
    for (Document.OutputSettings localOutputSettings = c().c(); ; localOutputSettings = new Document("").c())
    {
      new NodeTraversor(new Node.OuterHtmlVisitor(paramStringBuilder, localOutputSettings)).a(this);
      return;
    }
  }

  abstract void a(StringBuilder paramStringBuilder, int paramInt, Document.OutputSettings paramOutputSettings);

  protected final void a(Node[] paramArrayOfNode)
  {
    int i = paramArrayOfNode.length;
    for (int j = 0; j < i; j++)
    {
      Node localNode = paramArrayOfNode[j];
      b(localNode);
      this.b.add(localNode);
      localNode.e = (-1 + this.b.size());
    }
  }

  public Node b(String paramString1, String paramString2)
  {
    this.c.a(paramString1, paramString2);
    return this;
  }

  abstract void b(StringBuilder paramStringBuilder, int paramInt, Document.OutputSettings paramOutputSettings);

  public String b_()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    a(localStringBuilder);
    return localStringBuilder.toString();
  }

  public String c(String paramString)
  {
    Validate.a(paramString);
    if (this.c.b(paramString))
      return this.c.a(paramString);
    if (paramString.toLowerCase().startsWith("abs:"))
      return f(paramString.substring(4));
    return "";
  }

  public Node d(Node paramNode)
  {
    Validate.a(paramNode);
    Validate.a(this.a);
    Node localNode1 = this.a;
    int i = this.e;
    Node[] arrayOfNode = { paramNode };
    Validate.a(arrayOfNode);
    for (int j = -1 + arrayOfNode.length; j >= 0; j--)
    {
      Node localNode2 = arrayOfNode[j];
      localNode1.b(localNode2);
      localNode1.b.add(i, localNode2);
    }
    localNode1.d();
    return this;
  }

  public boolean d(String paramString)
  {
    Validate.a(paramString);
    if (paramString.toLowerCase().startsWith("abs:"))
    {
      String str = paramString.substring(4);
      if ((this.c.b(str)) && (!f(str).equals("")))
        return true;
    }
    return this.c.b(paramString);
  }

  public final void e(String paramString)
  {
    Validate.a(paramString);
    Node.1 local1 = new Node.1(this, paramString);
    Validate.a(local1);
    new NodeTraversor(local1).a(this);
  }

  public boolean equals(Object paramObject)
  {
    return this == paramObject;
  }

  // ERROR //
  public String f(String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 222	org/jsoup/helper/Validate:a	(Ljava/lang/String;)V
    //   4: aload_0
    //   5: aload_1
    //   6: invokevirtual 224	org/jsoup/nodes/Node:c	(Ljava/lang/String;)Ljava/lang/String;
    //   9: astore_2
    //   10: aload_0
    //   11: aload_1
    //   12: invokevirtual 226	org/jsoup/nodes/Node:d	(Ljava/lang/String;)Z
    //   15: ifne +6 -> 21
    //   18: ldc 166
    //   20: areturn
    //   21: new 228	java/net/URL
    //   24: dup
    //   25: aload_0
    //   26: getfield 55	org/jsoup/nodes/Node:d	Ljava/lang/String;
    //   29: invokespecial 229	java/net/URL:<init>	(Ljava/lang/String;)V
    //   32: astore_3
    //   33: aload_2
    //   34: ldc 231
    //   36: invokevirtual 196	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   39: ifeq +25 -> 64
    //   42: new 119	java/lang/StringBuilder
    //   45: dup
    //   46: invokespecial 232	java/lang/StringBuilder:<init>	()V
    //   49: aload_3
    //   50: invokevirtual 235	java/net/URL:getPath	()Ljava/lang/String;
    //   53: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: aload_2
    //   57: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: invokevirtual 182	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   63: astore_2
    //   64: new 228	java/net/URL
    //   67: dup
    //   68: aload_3
    //   69: aload_2
    //   70: invokespecial 238	java/net/URL:<init>	(Ljava/net/URL;Ljava/lang/String;)V
    //   73: invokevirtual 241	java/net/URL:toExternalForm	()Ljava/lang/String;
    //   76: areturn
    //   77: astore 5
    //   79: new 228	java/net/URL
    //   82: dup
    //   83: aload_2
    //   84: invokespecial 229	java/net/URL:<init>	(Ljava/lang/String;)V
    //   87: invokevirtual 241	java/net/URL:toExternalForm	()Ljava/lang/String;
    //   90: astore 6
    //   92: aload 6
    //   94: areturn
    //   95: astore 4
    //   97: ldc 166
    //   99: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   21	33	77	java/net/MalformedURLException
    //   33	64	95	java/net/MalformedURLException
    //   64	77	95	java/net/MalformedURLException
    //   79	92	95	java/net/MalformedURLException
  }

  public Node f()
  {
    return c(null);
  }

  public int hashCode()
  {
    if (this.a != null);
    for (int i = this.a.hashCode(); ; i = 0)
    {
      int j = i * 31;
      Attributes localAttributes = this.c;
      int k = 0;
      if (localAttributes != null)
        k = this.c.hashCode();
      return j + k;
    }
  }

  public String toString()
  {
    return b_();
  }

  public Node u()
  {
    return this.a;
  }

  public Attributes v()
  {
    return this.c;
  }

  public final String w()
  {
    return this.d;
  }

  public final List x()
  {
    return Collections.unmodifiableList(this.b);
  }

  public final int y()
  {
    return this.b.size();
  }

  public final void z()
  {
    Validate.a(this.a);
    this.a.a(this);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.nodes.Node
 * JD-Core Version:    0.6.2
 */