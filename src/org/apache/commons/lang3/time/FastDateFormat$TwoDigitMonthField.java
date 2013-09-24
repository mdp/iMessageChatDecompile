package org.apache.commons.lang3.time;

import java.util.Calendar;

class FastDateFormat$TwoDigitMonthField
  implements FastDateFormat.NumberRule
{
  static final TwoDigitMonthField INSTANCE = new TwoDigitMonthField();

  public final void appendTo(StringBuffer paramStringBuffer, int paramInt)
  {
    paramStringBuffer.append((char)(48 + paramInt / 10));
    paramStringBuffer.append((char)(48 + paramInt % 10));
  }

  public void appendTo(StringBuffer paramStringBuffer, Calendar paramCalendar)
  {
    appendTo(paramStringBuffer, 1 + paramCalendar.get(2));
  }

  public int estimateLength()
  {
    return 2;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.time.FastDateFormat.TwoDigitMonthField
 * JD-Core Version:    0.6.2
 */