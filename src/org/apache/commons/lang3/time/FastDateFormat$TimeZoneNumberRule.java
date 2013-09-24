package org.apache.commons.lang3.time;

import java.util.Calendar;

class FastDateFormat$TimeZoneNumberRule
  implements FastDateFormat.Rule
{
  static final TimeZoneNumberRule INSTANCE_COLON = new TimeZoneNumberRule(true);
  static final TimeZoneNumberRule INSTANCE_NO_COLON = new TimeZoneNumberRule(false);
  final boolean mColon;

  FastDateFormat$TimeZoneNumberRule(boolean paramBoolean)
  {
    this.mColon = paramBoolean;
  }

  public void appendTo(StringBuffer paramStringBuffer, Calendar paramCalendar)
  {
    int i = paramCalendar.get(15) + paramCalendar.get(16);
    if (i < 0)
    {
      paramStringBuffer.append('-');
      i = -i;
    }
    while (true)
    {
      int j = i / 3600000;
      paramStringBuffer.append((char)(48 + j / 10));
      paramStringBuffer.append((char)(48 + j % 10));
      if (this.mColon)
        paramStringBuffer.append(':');
      int k = i / 60000 - j * 60;
      paramStringBuffer.append((char)(48 + k / 10));
      paramStringBuffer.append((char)(48 + k % 10));
      return;
      paramStringBuffer.append('+');
    }
  }

  public int estimateLength()
  {
    return 5;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.time.FastDateFormat.TimeZoneNumberRule
 * JD-Core Version:    0.6.2
 */