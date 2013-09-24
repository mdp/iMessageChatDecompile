package org.apache.commons.lang3.time;

import java.util.Calendar;

class FastDateFormat$TextField
  implements FastDateFormat.Rule
{
  private final int mField;
  private final String[] mValues;

  FastDateFormat$TextField(int paramInt, String[] paramArrayOfString)
  {
    this.mField = paramInt;
    this.mValues = paramArrayOfString;
  }

  public void appendTo(StringBuffer paramStringBuffer, Calendar paramCalendar)
  {
    paramStringBuffer.append(this.mValues[paramCalendar.get(this.mField)]);
  }

  public int estimateLength()
  {
    int i = 0;
    int j = this.mValues.length;
    int k = j - 1;
    int m;
    if (k >= 0)
    {
      m = this.mValues[k].length();
      if (m <= i)
        break label43;
    }
    while (true)
    {
      i = m;
      j = k;
      break;
      return i;
      label43: m = i;
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.time.FastDateFormat.TextField
 * JD-Core Version:    0.6.2
 */