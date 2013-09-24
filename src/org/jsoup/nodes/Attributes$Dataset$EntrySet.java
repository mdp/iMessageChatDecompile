package org.jsoup.nodes;

import java.util.AbstractSet;
import java.util.Iterator;

class Attributes$Dataset$EntrySet extends AbstractSet
{
  private Attributes$Dataset$EntrySet(Attributes.Dataset paramDataset)
  {
  }

  public Iterator iterator()
  {
    return new Attributes.Dataset.DatasetIterator(this.a, (byte)0);
  }

  public int size()
  {
    int i = 0;
    Attributes.Dataset.DatasetIterator localDatasetIterator = new Attributes.Dataset.DatasetIterator(this.a, (byte)0);
    while (localDatasetIterator.hasNext())
      i++;
    return i;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.nodes.Attributes.Dataset.EntrySet
 * JD-Core Version:    0.6.2
 */