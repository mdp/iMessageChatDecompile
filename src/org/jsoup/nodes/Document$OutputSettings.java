package org.jsoup.nodes;

import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;

public class Document$OutputSettings
  implements Cloneable
{
  private Entities.EscapeMode a = Entities.EscapeMode.b;
  private Charset b = Charset.forName("UTF-8");
  private CharsetEncoder c = this.b.newEncoder();
  private boolean d = true;
  private boolean e = false;
  private int f = 1;

  public final Entities.EscapeMode a()
  {
    return this.a;
  }

  final CharsetEncoder b()
  {
    return this.c;
  }

  public final boolean c()
  {
    return this.d;
  }

  public final boolean d()
  {
    return this.e;
  }

  public final int e()
  {
    return this.f;
  }

  public final OutputSettings f()
  {
    try
    {
      OutputSettings localOutputSettings = (OutputSettings)super.clone();
      Charset localCharset = Charset.forName(this.b.name());
      localOutputSettings.b = localCharset;
      localOutputSettings.c = localCharset.newEncoder();
      localOutputSettings.a = Entities.EscapeMode.valueOf(this.a.name());
      return localOutputSettings;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new RuntimeException(localCloneNotSupportedException);
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.nodes.Document.OutputSettings
 * JD-Core Version:    0.6.2
 */