package org.apache.commons.lang3.time;

import java.util.Calendar;

class FastDateFormat$UnpaddedMonthField
  implements FastDateFormat.NumberRule
{
  static final UnpaddedMonthField INSTANCE = new UnpaddedMonthField();

  public final void appendTo(StringBuffer paramStringBuffer, int paramInt)
  {
    if (paramInt < 10)
    {
      paramStringBuffer.append((char)(paramInt + 48));
      return;
    }
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
 * Qualified Name:     org.apache.commons.lang3.time.FastDateFormat.UnpaddedMonthField
 * JD-Core Version:    0.6.2
 */