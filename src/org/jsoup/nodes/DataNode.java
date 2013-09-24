package org.jsoup.nodes;

public class DataNode extends Node
{
  public DataNode(String paramString1, String paramString2)
  {
    super(paramString2);
    this.c.a("data", paramString1);
  }

  public final String a()
  {
    return "#data";
  }

  final void a(StringBuilder paramStringBuilder, int paramInt, Document.OutputSettings paramOutputSettings)
  {
    paramStringBuilder.append(this.c.a("data"));
  }

  final void b(StringBuilder paramStringBuilder, int paramInt, Document.OutputSettings paramOutputSettings)
  {
  }

  public String toString()
  {
    return b_();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.nodes.DataNode
 * JD-Core Version:    0.6.2
 */