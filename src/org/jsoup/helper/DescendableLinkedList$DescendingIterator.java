package org.jsoup.helper;

import java.util.Iterator;
import java.util.ListIterator;

class DescendableLinkedList$DescendingIterator
  implements Iterator
{
  private final ListIterator b;

  private DescendableLinkedList$DescendingIterator(DescendableLinkedList paramDescendableLinkedList, int paramInt)
  {
    this.b = paramDescendableLinkedList.listIterator(paramInt);
  }

  public boolean hasNext()
  {
    return this.b.hasPrevious();
  }

  public Object next()
  {
    return this.b.previous();
  }

  public void remove()
  {
    this.b.remove();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.helper.DescendableLinkedList.DescendingIterator
 * JD-Core Version:    0.6.2
 */