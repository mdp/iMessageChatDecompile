package org.apache.commons.lang3.time;

import java.util.Calendar;

class FastDateFormat$CharacterLiteral
  implements FastDateFormat.Rule
{
  private final char mValue;

  FastDateFormat$CharacterLiteral(char paramChar)
  {
    this.mValue = paramChar;
  }

  public void appendTo(StringBuffer paramStringBuffer, Calendar paramCalendar)
  {
    paramStringBuffer.append(this.mValue);
  }

  public int estimateLength()
  {
    return 1;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.time.FastDateFormat.CharacterLiteral
 * JD-Core Version:    0.6.2
 */