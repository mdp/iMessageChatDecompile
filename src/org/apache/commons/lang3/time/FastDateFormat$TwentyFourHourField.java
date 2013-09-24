package org.apache.commons.lang3.time;

import java.util.Calendar;

class FastDateFormat$TwentyFourHourField
  implements FastDateFormat.NumberRule
{
  private final FastDateFormat.NumberRule mRule;

  FastDateFormat$TwentyFourHourField(FastDateFormat.NumberRule paramNumberRule)
  {
    this.mRule = paramNumberRule;
  }

  public void appendTo(StringBuffer paramStringBuffer, int paramInt)
  {
    this.mRule.appendTo(paramStringBuffer, paramInt);
  }

  public void appendTo(StringBuffer paramStringBuffer, Calendar paramCalendar)
  {
    int i = paramCalendar.get(11);
    if (i == 0)
      i = 1 + paramCalendar.getMaximum(11);
    this.mRule.appendTo(paramStringBuffer, i);
  }

  public int estimateLength()
  {
    return this.mRule.estimateLength();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.time.FastDateFormat.TwentyFourHourField
 * JD-Core Version:    0.6.2
 */