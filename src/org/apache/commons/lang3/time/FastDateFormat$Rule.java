package org.apache.commons.lang3.time;

import java.util.Calendar;

abstract interface FastDateFormat$Rule
{
  public abstract void appendTo(StringBuffer paramStringBuffer, Calendar paramCalendar);

  public abstract int estimateLength();
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.time.FastDateFormat.Rule
 * JD-Core Version:    0.6.2
 */