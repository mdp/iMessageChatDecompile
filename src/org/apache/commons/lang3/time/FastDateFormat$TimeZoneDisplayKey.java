package org.apache.commons.lang3.time;

import java.util.Locale;
import java.util.TimeZone;

class FastDateFormat$TimeZoneDisplayKey
{
  private final Locale mLocale;
  private final int mStyle;
  private final TimeZone mTimeZone;

  FastDateFormat$TimeZoneDisplayKey(TimeZone paramTimeZone, boolean paramBoolean, int paramInt, Locale paramLocale)
  {
    this.mTimeZone = paramTimeZone;
    if (paramBoolean)
      paramInt |= -2147483648;
    this.mStyle = paramInt;
    this.mLocale = paramLocale;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    TimeZoneDisplayKey localTimeZoneDisplayKey;
    do
    {
      return true;
      if (!(paramObject instanceof TimeZoneDisplayKey))
        break;
      localTimeZoneDisplayKey = (TimeZoneDisplayKey)paramObject;
    }
    while ((this.mTimeZone.equals(localTimeZoneDisplayKey.mTimeZone)) && (this.mStyle == localTimeZoneDisplayKey.mStyle) && (this.mLocale.equals(localTimeZoneDisplayKey.mLocale)));
    return false;
    return false;
  }

  public int hashCode()
  {
    return 31 * (31 * this.mStyle + this.mLocale.hashCode()) + this.mTimeZone.hashCode();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.time.FastDateFormat.TimeZoneDisplayKey
 * JD-Core Version:    0.6.2
 */