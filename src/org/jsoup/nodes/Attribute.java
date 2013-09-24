package org.jsoup.nodes;

import java.util.Map.Entry;
import org.jsoup.helper.Validate;

public class Attribute
  implements Cloneable, Map.Entry
{
  private String a;
  private String b;

  public Attribute(String paramString1, String paramString2)
  {
    Validate.a(paramString1);
    Validate.a(paramString2);
    this.a = paramString1.trim().toLowerCase();
    this.b = paramString2;
  }

  public final String a()
  {
    return this.a;
  }

  public final String a(String paramString)
  {
    Validate.a(paramString);
    String str = this.b;
    this.b = paramString;
    return str;
  }

  protected final void a(StringBuilder paramStringBuilder, Document.OutputSettings paramOutputSettings)
  {
    paramStringBuilder.append(this.a).append("=\"").append(Entities.a(this.b, paramOutputSettings)).append("\"");
  }

  public final String b()
  {
    return this.b;
  }

  protected final boolean c()
  {
    return (this.a.startsWith("data-")) && (this.a.length() > 5);
  }

  public final Attribute d()
  {
    try
    {
      Attribute localAttribute = (Attribute)super.clone();
      return localAttribute;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new RuntimeException(localCloneNotSupportedException);
    }
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    Attribute localAttribute;
    do
    {
      return true;
      if (!(paramObject instanceof Attribute))
        return false;
      localAttribute = (Attribute)paramObject;
      if (this.a != null)
      {
        if (this.a.equals(localAttribute.a));
      }
      else
        while (localAttribute.a != null)
          return false;
      if (this.b == null)
        break;
    }
    while (this.b.equals(localAttribute.b));
    while (true)
    {
      return false;
      if (localAttribute.b == null)
        break;
    }
  }

  public int hashCode()
  {
    if (this.a != null);
    for (int i = this.a.hashCode(); ; i = 0)
    {
      int j = i * 31;
      String str = this.b;
      int k = 0;
      if (str != null)
        k = this.b.hashCode();
      return j + k;
    }
  }

  public String toString()
  {
    return this.a + "=\"" + Entities.a(this.b, new Document("").c()) + "\"";
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.nodes.Attribute
 * JD-Core Version:    0.6.2
 */