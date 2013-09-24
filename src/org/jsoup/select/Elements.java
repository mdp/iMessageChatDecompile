package org.jsoup.select;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.jsoup.nodes.Element;

public class Elements
  implements Cloneable, List
{
  private List a;

  public Elements()
  {
    this.a = new ArrayList();
  }

  public Elements(int paramInt)
  {
    this.a = new ArrayList(paramInt);
  }

  public Elements(List paramList)
  {
    this.a = paramList;
  }

  public final Element a(int paramInt)
  {
    return (Element)this.a.get(paramInt);
  }

  public final boolean a(Element paramElement)
  {
    return this.a.add(paramElement);
  }

  public boolean addAll(int paramInt, Collection paramCollection)
  {
    return this.a.addAll(paramInt, paramCollection);
  }

  public boolean addAll(Collection paramCollection)
  {
    return this.a.addAll(paramCollection);
  }

  public void clear()
  {
    this.a.clear();
  }

  public boolean contains(Object paramObject)
  {
    return this.a.contains(paramObject);
  }

  public boolean containsAll(Collection paramCollection)
  {
    return this.a.containsAll(paramCollection);
  }

  public boolean equals(Object paramObject)
  {
    return this.a.equals(paramObject);
  }

  public int hashCode()
  {
    return this.a.hashCode();
  }

  public int indexOf(Object paramObject)
  {
    return this.a.indexOf(paramObject);
  }

  public boolean isEmpty()
  {
    return this.a.isEmpty();
  }

  public Iterator iterator()
  {
    return this.a.iterator();
  }

  public int lastIndexOf(Object paramObject)
  {
    return this.a.lastIndexOf(paramObject);
  }

  public ListIterator listIterator()
  {
    return this.a.listIterator();
  }

  public ListIterator listIterator(int paramInt)
  {
    return this.a.listIterator(paramInt);
  }

  public boolean remove(Object paramObject)
  {
    return this.a.remove(paramObject);
  }

  public boolean removeAll(Collection paramCollection)
  {
    return this.a.removeAll(paramCollection);
  }

  public boolean retainAll(Collection paramCollection)
  {
    return this.a.retainAll(paramCollection);
  }

  public int size()
  {
    return this.a.size();
  }

  public List subList(int paramInt1, int paramInt2)
  {
    return this.a.subList(paramInt1, paramInt2);
  }

  public Object[] toArray()
  {
    return this.a.toArray();
  }

  public Object[] toArray(Object[] paramArrayOfObject)
  {
    return this.a.toArray(paramArrayOfObject);
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      Element localElement = (Element)localIterator.next();
      if (localStringBuilder.length() != 0)
        localStringBuilder.append("\n");
      localStringBuilder.append(localElement.b_());
    }
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.select.Elements
 * JD-Core Version:    0.6.2
 */