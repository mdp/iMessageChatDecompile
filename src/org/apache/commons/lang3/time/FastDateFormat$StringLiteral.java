package org.apache.commons.lang3.time;

import java.util.Calendar;

class FastDateFormat$StringLiteral
  implements FastDateFormat.Rule
{
  private final String mValue;

  FastDateFormat$StringLiteral(String paramString)
  {
    this.mValue = paramString;
  }

  public void appendTo(StringBuffer paramStringBuffer, Calendar paramCalendar)
  {
    paramStringBuffer.append(this.mValue);
  }

  public int estimateLength()
  {
    return this.mValue.length();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.time.FastDateFormat.StringLiteral
 * JD-Core Version:    0.6.2
 */