package org.jsoup.nodes;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;

class Attributes$Dataset$DatasetIterator
  implements Iterator
{
  private Iterator b = Attributes.b(this.a.a).values().iterator();
  private Attribute c;

  private Attributes$Dataset$DatasetIterator(Attributes.Dataset paramDataset)
  {
  }

  public boolean hasNext()
  {
    while (this.b.hasNext())
    {
      this.c = ((Attribute)this.b.next());
      if (this.c.c())
        return true;
    }
    return false;
  }

  public void remove()
  {
    Attributes.b(this.a.a).remove(this.c.a());
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.nodes.Attributes.Dataset.DatasetIterator
 * JD-Core Version:    0.6.2
 */