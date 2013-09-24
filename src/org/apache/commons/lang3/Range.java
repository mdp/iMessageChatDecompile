package org.apache.commons.lang3;

import java.io.Serializable;
import java.util.Comparator;

public final class Range
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private final Comparator comparator;
  private transient int hashCode;
  private final Object maximum;
  private final Object minimum;
  private transient String toString;

  private Range(Object paramObject1, Object paramObject2, Comparator paramComparator)
  {
    if ((paramObject1 == null) || (paramObject2 == null))
      throw new IllegalArgumentException("Elements in a range must not be null: element1=" + paramObject1 + ", element2=" + paramObject2);
    if (paramComparator == null)
      paramComparator = Range.ComparableComparator.INSTANCE;
    if (paramComparator.compare(paramObject1, paramObject2) <= 0)
      this.minimum = paramObject1;
    for (this.maximum = paramObject2; ; this.maximum = paramObject1)
    {
      this.comparator = paramComparator;
      return;
      this.minimum = paramObject2;
    }
  }

  public static Range between(Comparable paramComparable1, Comparable paramComparable2)
  {
    return between(paramComparable1, paramComparable2, null);
  }

  public static Range between(Object paramObject1, Object paramObject2, Comparator paramComparator)
  {
    return new Range(paramObject1, paramObject2, paramComparator);
  }

  public static Range is(Comparable paramComparable)
  {
    return between(paramComparable, paramComparable, null);
  }

  public static Range is(Object paramObject, Comparator paramComparator)
  {
    return between(paramObject, paramObject, paramComparator);
  }

  public final boolean contains(Object paramObject)
  {
    if (paramObject == null);
    while ((this.comparator.compare(paramObject, this.minimum) < 0) || (this.comparator.compare(paramObject, this.maximum) > 0))
      return false;
    return true;
  }

  public final boolean containsRange(Range paramRange)
  {
    if (paramRange == null);
    while ((!contains(paramRange.minimum)) || (!contains(paramRange.maximum)))
      return false;
    return true;
  }

  public final int elementCompareTo(Object paramObject)
  {
    if (paramObject == null)
      throw new NullPointerException("Element is null");
    if (isAfter(paramObject))
      return -1;
    if (isBefore(paramObject))
      return 1;
    return 0;
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == this);
    Range localRange;
    do
    {
      return true;
      if ((paramObject == null) || (paramObject.getClass() != getClass()))
        return false;
      localRange = (Range)paramObject;
    }
    while ((this.minimum.equals(localRange.minimum)) && (this.maximum.equals(localRange.maximum)));
    return false;
  }

  public final Comparator getComparator()
  {
    return this.comparator;
  }

  public final Object getMaximum()
  {
    return this.maximum;
  }

  public final Object getMinimum()
  {
    return this.minimum;
  }

  public final int hashCode()
  {
    int i = this.hashCode;
    if (this.hashCode == 0)
    {
      i = 37 * (37 * (629 + getClass().hashCode()) + this.minimum.hashCode()) + this.maximum.hashCode();
      this.hashCode = i;
    }
    return i;
  }

  public final Range intersectionWith(Range paramRange)
  {
    if (!isOverlappedBy(paramRange))
      throw new IllegalArgumentException(String.format("Cannot calculate intersection with non-overlapping range %s", new Object[] { paramRange }));
    if (equals(paramRange))
      return this;
    Object localObject1;
    if (getComparator().compare(this.minimum, paramRange.minimum) < 0)
    {
      localObject1 = paramRange.minimum;
      if (getComparator().compare(this.maximum, paramRange.maximum) >= 0)
        break label107;
    }
    label107: for (Object localObject2 = this.maximum; ; localObject2 = paramRange.maximum)
    {
      return between(localObject1, localObject2, getComparator());
      localObject1 = this.minimum;
      break;
    }
  }

  public final boolean isAfter(Object paramObject)
  {
    if (paramObject == null);
    while (this.comparator.compare(paramObject, this.minimum) >= 0)
      return false;
    return true;
  }

  public final boolean isAfterRange(Range paramRange)
  {
    if (paramRange == null)
      return false;
    return isAfter(paramRange.maximum);
  }

  public final boolean isBefore(Object paramObject)
  {
    if (paramObject == null);
    while (this.comparator.compare(paramObject, this.maximum) <= 0)
      return false;
    return true;
  }

  public final boolean isBeforeRange(Range paramRange)
  {
    if (paramRange == null)
      return false;
    return isBefore(paramRange.minimum);
  }

  public final boolean isEndedBy(Object paramObject)
  {
    if (paramObject == null);
    while (this.comparator.compare(paramObject, this.maximum) != 0)
      return false;
    return true;
  }

  public final boolean isNaturalOrdering()
  {
    return this.comparator == Range.ComparableComparator.INSTANCE;
  }

  public final boolean isOverlappedBy(Range paramRange)
  {
    if (paramRange == null);
    while ((!paramRange.contains(this.minimum)) && (!paramRange.contains(this.maximum)) && (!contains(paramRange.minimum)))
      return false;
    return true;
  }

  public final boolean isStartedBy(Object paramObject)
  {
    if (paramObject == null);
    while (this.comparator.compare(paramObject, this.minimum) != 0)
      return false;
    return true;
  }

  public final String toString()
  {
    String str = this.toString;
    if (str == null)
    {
      StringBuilder localStringBuilder = new StringBuilder(32);
      localStringBuilder.append('[');
      localStringBuilder.append(this.minimum);
      localStringBuilder.append("..");
      localStringBuilder.append(this.maximum);
      localStringBuilder.append(']');
      str = localStringBuilder.toString();
      this.toString = str;
    }
    return str;
  }

  public final String toString(String paramString)
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = this.minimum;
    arrayOfObject[1] = this.maximum;
    arrayOfObject[2] = this.comparator;
    return String.format(paramString, arrayOfObject);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.Range
 * JD-Core Version:    0.6.2
 */