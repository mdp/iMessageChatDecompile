package org.apache.commons.lang3.time;

import java.util.Calendar;

class FastDateFormat$TwoDigitYearField
  implements FastDateFormat.NumberRule
{
  static final TwoDigitYearField INSTANCE = new TwoDigitYearField();

  public final void appendTo(StringBuffer paramStringBuffer, int paramInt)
  {
    paramStringBuffer.append((char)(48 + paramInt / 10));
    paramStringBuffer.append((char)(48 + paramInt % 10));
  }

  public void appendTo(StringBuffer paramStringBuffer, Calendar paramCalendar)
  {
    appendTo(paramStringBuffer, paramCalendar.get(1) % 100);
  }

  public int estimateLength()
  {
    return 2;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.time.FastDateFormat.TwoDigitYearField
 * JD-Core Version:    0.6.2
 */