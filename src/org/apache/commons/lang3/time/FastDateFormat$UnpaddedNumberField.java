package org.apache.commons.lang3.time;

import java.util.Calendar;

class FastDateFormat$UnpaddedNumberField
  implements FastDateFormat.NumberRule
{
  private final int mField;

  FastDateFormat$UnpaddedNumberField(int paramInt)
  {
    this.mField = paramInt;
  }

  public final void appendTo(StringBuffer paramStringBuffer, int paramInt)
  {
    if (paramInt < 10)
    {
      paramStringBuffer.append((char)(paramInt + 48));
      return;
    }
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
    return 4;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.time.FastDateFormat.UnpaddedNumberField
 * JD-Core Version:    0.6.2
 */