package org.jsoup.parser;

import org.jsoup.nodes.Document;

public class Parser
{
  private TreeBuilder a;
  private int b = 0;

  private Parser(TreeBuilder paramTreeBuilder)
  {
    this.a = paramTreeBuilder;
  }

  public static Document a(String paramString1, String paramString2)
  {
    return new HtmlTreeBuilder().a(paramString1, paramString2, ParseErrorList.b());
  }

  public static Parser a()
  {
    return new Parser(new HtmlTreeBuilder());
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.parser.Parser
 * JD-Core Version:    0.6.2
 */