package org.jsoup.nodes;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import org.jsoup.helper.Validate;

public class Attributes
  implements Cloneable, Iterable
{
  private LinkedHashMap a = null;

  public final int a()
  {
    if (this.a == null)
      return 0;
    return this.a.size();
  }

  public final String a(String paramString)
  {
    Validate.a(paramString);
    if (this.a == null)
      return "";
    Attribute localAttribute = (Attribute)this.a.get(paramString.toLowerCase());
    if (localAttribute != null)
      return localAttribute.b();
    return "";
  }

  public final void a(String paramString1, String paramString2)
  {
    a(new Attribute(paramString1, paramString2));
  }

  final void a(StringBuilder paramStringBuilder, Document.OutputSettings paramOutputSettings)
  {
    if (this.a == null);
    while (true)
    {
      return;
      Iterator localIterator = this.a.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Attribute localAttribute = (Attribute)((Map.Entry)localIterator.next()).getValue();
        paramStringBuilder.append(" ");
        localAttribute.a(paramStringBuilder, paramOutputSettings);
      }
    }
  }

  public final void a(Attribute paramAttribute)
  {
    Validate.a(paramAttribute);
    if (this.a == null)
      this.a = new LinkedHashMap(2);
    this.a.put(paramAttribute.a(), paramAttribute);
  }

  public final void a(Attributes paramAttributes)
  {
    if (paramAttributes.a() == 0)
      return;
    if (this.a == null)
      this.a = new LinkedHashMap(paramAttributes.a());
    this.a.putAll(paramAttributes.a);
  }

  public final List b()
  {
    if (this.a == null)
      return Collections.emptyList();
    ArrayList localArrayList = new ArrayList(this.a.size());
    Iterator localIterator = this.a.entrySet().iterator();
    while (localIterator.hasNext())
      localArrayList.add(((Map.Entry)localIterator.next()).getValue());
    return Collections.unmodifiableList(localArrayList);
  }

  public final boolean b(String paramString)
  {
    return (this.a != null) && (this.a.containsKey(paramString.toLowerCase()));
  }

  public final Attributes c()
  {
    Attributes localAttributes;
    if (this.a == null)
      localAttributes = new Attributes();
    while (true)
    {
      return localAttributes;
      try
      {
        localAttributes = (Attributes)super.clone();
        localAttributes.a = new LinkedHashMap(this.a.size());
        Iterator localIterator = iterator();
        while (localIterator.hasNext())
        {
          Attribute localAttribute = (Attribute)localIterator.next();
          localAttributes.a.put(localAttribute.a(), localAttribute.d());
        }
      }
      catch (CloneNotSupportedException localCloneNotSupportedException)
      {
        throw new RuntimeException(localCloneNotSupportedException);
      }
    }
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    Attributes localAttributes;
    do
    {
      return true;
      if (!(paramObject instanceof Attributes))
        return false;
      localAttributes = (Attributes)paramObject;
      if (this.a == null)
        break;
    }
    while (this.a.equals(localAttributes.a));
    while (true)
    {
      return false;
      if (localAttributes.a == null)
        break;
    }
  }

  public int hashCode()
  {
    if (this.a != null)
      return this.a.hashCode();
    return 0;
  }

  public Iterator iterator()
  {
    return b().iterator();
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    a(localStringBuilder, new Document("").c());
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.nodes.Attributes
 * JD-Core Version:    0.6.2
 */