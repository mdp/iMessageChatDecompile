package org.apache.commons.lang3.time;

import java.util.Calendar;

class FastDateFormat$TwoDigitNumberField
  implements FastDateFormat.NumberRule
{
  private final int mField;

  FastDateFormat$TwoDigitNumberField(int paramInt)
  {
    this.mField = paramInt;
  }

  public final void appendTo(StringBuffer paramStringBuffer, int paramInt)
  {
    if (paramInt < 100)
    {
      paramStringBuffer.append((char)(48 + paramInt / 10));
      paramStringBuffer.append((char)(48 + paramInt % 10));
      return;
    }
    paramStringBuffer.append(Integer.toString(paramInt));
  }

  public void appendTo(StringBuffer paramStringBuffer, Calendar paramCalendar)
  {
    appendTo(paramStringBuffer, paramCalendar.get(this.mField));
  }

  public int estimateLength()
  {
    return 2;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.time.FastDateFormat.TwoDigitNumberField
 * JD-Core Version:    0.6.2
 */