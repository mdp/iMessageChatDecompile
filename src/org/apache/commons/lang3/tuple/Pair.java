package org.apache.commons.lang3.tuple;

import java.io.Serializable;
import java.util.Map.Entry;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.builder.CompareToBuilder;

public abstract class Pair
  implements Serializable, Comparable, Map.Entry
{
  private static final long serialVersionUID = 4954918890077093841L;

  public static Pair of(Object paramObject1, Object paramObject2)
  {
    return new ImmutablePair(paramObject1, paramObject2);
  }

  public int compareTo(Pair paramPair)
  {
    return new CompareToBuilder().append(getLeft(), paramPair.getLeft()).append(getRight(), paramPair.getRight()).toComparison();
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == this);
    Map.Entry localEntry;
    do
    {
      return true;
      if (!(paramObject instanceof Map.Entry))
        break;
      localEntry = (Map.Entry)paramObject;
    }
    while ((ObjectUtils.equals(getKey(), localEntry.getKey())) && (ObjectUtils.equals(getValue(), localEntry.getValue())));
    return false;
    return false;
  }

  public final Object getKey()
  {
    return getLeft();
  }

  public abstract Object getLeft();

  public abstract Object getRight();

  public Object getValue()
  {
    return getRight();
  }

  public int hashCode()
  {
    int i;
    int j;
    if (getKey() == null)
    {
      i = 0;
      Object localObject = getValue();
      j = 0;
      if (localObject != null)
        break label35;
    }
    while (true)
    {
      return i ^ j;
      i = getKey().hashCode();
      break;
      label35: j = getValue().hashCode();
    }
  }

  public String toString()
  {
    return "(" + getLeft() + ',' + getRight() + ')';
  }

  public String toString(String paramString)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = getLeft();
    arrayOfObject[1] = getRight();
    return String.format(paramString, arrayOfObject);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.tuple.Pair
 * JD-Core Version:    0.6.2
 */