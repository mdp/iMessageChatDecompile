package org.jsoup.nodes;

public class XmlDeclaration extends Node
{
  private final boolean f;

  public XmlDeclaration(String paramString1, String paramString2, boolean paramBoolean)
  {
    super(paramString2);
    this.c.a("declaration", paramString1);
    this.f = paramBoolean;
  }

  public final String a()
  {
    return "#declaration";
  }

  final void a(StringBuilder paramStringBuilder, int paramInt, Document.OutputSettings paramOutputSettings)
  {
    StringBuilder localStringBuilder = paramStringBuilder.append("<");
    if (this.f);
    for (String str = "!"; ; str = "?")
    {
      localStringBuilder.append(str).append(this.c.a("declaration")).append(">");
      return;
    }
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
 * Qualified Name:     org.jsoup.nodes.XmlDeclaration
 * JD-Core Version:    0.6.2
 */