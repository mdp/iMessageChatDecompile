package org.apache.commons.lang3;

import java.util.Comparator;

 enum Range$ComparableComparator
  implements Comparator
{
  static
  {
    ComparableComparator[] arrayOfComparableComparator = new ComparableComparator[1];
    arrayOfComparableComparator[0] = INSTANCE;
  }

  public final int compare(Object paramObject1, Object paramObject2)
  {
    return ((Comparable)paramObject1).compareTo(paramObject2);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.Range.ComparableComparator
 * JD-Core Version:    0.6.2
 */