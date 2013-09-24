package org.apache.commons.lang3.time;

import java.util.Calendar;
import java.util.Iterator;
import java.util.NoSuchElementException;

class DateUtils$DateIterator
  implements Iterator
{
  private final Calendar endFinal;
  private final Calendar spot;

  DateUtils$DateIterator(Calendar paramCalendar1, Calendar paramCalendar2)
  {
    this.endFinal = paramCalendar2;
    this.spot = paramCalendar1;
    this.spot.add(5, -1);
  }

  public boolean hasNext()
  {
    return this.spot.before(this.endFinal);
  }

  public Calendar next()
  {
    if (this.spot.equals(this.endFinal))
      throw new NoSuchElementException();
    this.spot.add(5, 1);
    return (Calendar)this.spot.clone();
  }

  public void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.time.DateUtils.DateIterator
 * JD-Core Version:    0.6.2
 */