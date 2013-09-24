package org.apache.commons.lang3.time;

import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;

class FastDateFormat$TimeZoneNameRule
  implements FastDateFormat.Rule
{
  private final String mDaylight;
  private final String mStandard;
  private final TimeZone mTimeZone;

  FastDateFormat$TimeZoneNameRule(TimeZone paramTimeZone, Locale paramLocale, int paramInt)
  {
    this.mTimeZone = paramTimeZone;
    this.mStandard = FastDateFormat.getTimeZoneDisplay(paramTimeZone, false, paramInt, paramLocale);
    this.mDaylight = FastDateFormat.getTimeZoneDisplay(paramTimeZone, true, paramInt, paramLocale);
  }

  public void appendTo(StringBuffer paramStringBuffer, Calendar paramCalendar)
  {
    if ((this.mTimeZone.useDaylightTime()) && (paramCalendar.get(16) != 0))
    {
      paramStringBuffer.append(this.mDaylight);
      return;
    }
    paramStringBuffer.append(this.mStandard);
  }

  public int estimateLength()
  {
    return Math.max(this.mStandard.length(), this.mDaylight.length());
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.time.FastDateFormat.TimeZoneNameRule
 * JD-Core Version:    0.6.2
 */