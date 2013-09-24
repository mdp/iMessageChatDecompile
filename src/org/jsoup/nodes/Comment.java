package org.jsoup.nodes;

public class Comment extends Node
{
  public Comment(String paramString1, String paramString2)
  {
    super(paramString2);
    this.c.a("comment", paramString1);
  }

  public final String a()
  {
    return "#comment";
  }

  final void a(StringBuilder paramStringBuilder, int paramInt, Document.OutputSettings paramOutputSettings)
  {
    if (paramOutputSettings.c())
      c(paramStringBuilder, paramInt, paramOutputSettings);
    paramStringBuilder.append("<!--").append(b()).append("-->");
  }

  public final String b()
  {
    return this.c.a("comment");
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
 * Qualified Name:     org.jsoup.nodes.Comment
 * JD-Core Version:    0.6.2
 */