package org.jsoup.examples;

import org.jsoup.helper.StringUtil;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.select.NodeVisitor;

class HtmlToPlainText$FormattingVisitor
  implements NodeVisitor
{
  private int a;
  private StringBuilder b;

  private void a(String paramString)
  {
    if (paramString.startsWith("\n"))
      this.a = 0;
    if (paramString.equals(" "))
      if (this.b.length() != 0)
      {
        if (!StringUtil.a(this.b.substring(-1 + this.b.length()), new String[] { " ", "\n" }));
      }
      else
        return;
    if (paramString.length() + this.a > 80)
    {
      String[] arrayOfString = paramString.split("\\s+");
      int i = 0;
      label94: String str;
      int j;
      if (i < arrayOfString.length)
      {
        str = arrayOfString[i];
        if (i != -1 + arrayOfString.length)
          break label191;
        j = 1;
        label119: if (j == 0)
          str = str + " ";
        if (str.length() + this.a <= 80)
          break label197;
        this.b.append("\n").append(str);
      }
      for (this.a = str.length(); ; this.a += str.length())
      {
        i++;
        break label94;
        break;
        label191: j = 0;
        break label119;
        label197: this.b.append(str);
      }
    }
    this.b.append(paramString);
    this.a += paramString.length();
  }

  public final void a(Node paramNode, int paramInt)
  {
    String str = paramNode.a();
    if ((paramNode instanceof TextNode))
      a(((TextNode)paramNode).c());
    while (!str.equals("li"))
      return;
    a("\n * ");
  }

  public final void b(Node paramNode, int paramInt)
  {
    String str = paramNode.a();
    if (str.equals("br"))
      a("\n");
    do
    {
      return;
      if (StringUtil.a(str, new String[] { "p", "h1", "h2", "h3", "h4", "h5" }))
      {
        a("\n\n");
        return;
      }
    }
    while (!str.equals("a"));
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = paramNode.f("href");
    a(String.format(" <%s>", arrayOfObject));
  }

  public String toString()
  {
    return this.b.toString();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.examples.HtmlToPlainText.FormattingVisitor
 * JD-Core Version:    0.6.2
 */