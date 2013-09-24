package org.jsoup.nodes;

import org.jsoup.parser.Tag;

public class Document extends Element
{
  private Document.OutputSettings f = new Document.OutputSettings();
  private Document.QuirksMode g = Document.QuirksMode.a;

  public Document(String paramString)
  {
    super(Tag.a("#root"), paramString);
  }

  private Document B()
  {
    Document localDocument = (Document)super.e();
    localDocument.f = this.f.f();
    return localDocument;
  }

  public final String a()
  {
    return "#document";
  }

  public final Document a(Document.QuirksMode paramQuirksMode)
  {
    this.g = paramQuirksMode;
    return this;
  }

  public final String b_()
  {
    return super.t();
  }

  public final Document.OutputSettings c()
  {
    return this.f;
  }

  public final Document.QuirksMode d()
  {
    return this.g;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.nodes.Document
 * JD-Core Version:    0.6.2
 */