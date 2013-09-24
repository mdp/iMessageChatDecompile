package org.jsoup.helper;

import java.util.Iterator;
import java.util.LinkedList;

public class DescendableLinkedList extends LinkedList
{
  public final Object a()
  {
    if (size() == 0)
      return null;
    return getLast();
  }

  public final Object b()
  {
    if (size() == 0)
      return null;
    return removeLast();
  }

  public final Iterator c()
  {
    return new DescendableLinkedList.DescendingIterator(this, size(), (byte)0);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.helper.DescendableLinkedList
 * JD-Core Version:    0.6.2
 */