package org.jsoup.nodes;

import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;

public class DocumentType extends Node
{
  public DocumentType(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    super(paramString4);
    Validate.a(paramString1);
    b("name", paramString1);
    b("publicId", paramString2);
    b("systemId", paramString3);
  }

  public final String a()
  {
    return "#doctype";
  }

  final void a(StringBuilder paramStringBuilder, int paramInt, Document.OutputSettings paramOutputSettings)
  {
    paramStringBuilder.append("<!DOCTYPE ").append(c("name"));
    if (!StringUtil.a(c("publicId")))
      paramStringBuilder.append(" PUBLIC \"").append(c("publicId")).append("\"");
    if (!StringUtil.a(c("systemId")))
      paramStringBuilder.append(" \"").append(c("systemId")).append("\"");
    paramStringBuilder.append('>');
  }

  final void b(StringBuilder paramStringBuilder, int paramInt, Document.OutputSettings paramOutputSettings)
  {
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.nodes.DocumentType
 * JD-Core Version:    0.6.2
 */