package org.apache.commons.lang3.time;

import java.util.Calendar;
import org.apache.commons.lang3.Validate;

class FastDateFormat$PaddedNumberField
  implements FastDateFormat.NumberRule
{
  private final int mField;
  private final int mSize;

  FastDateFormat$PaddedNumberField(int paramInt1, int paramInt2)
  {
    if (paramInt2 < 3)
      throw new IllegalArgumentException();
    this.mField = paramInt1;
    this.mSize = paramInt2;
  }

  public final void appendTo(StringBuffer paramStringBuffer, int paramInt)
  {
    if (paramInt < 100)
    {
      int k = this.mSize;
      while (true)
      {
        k--;
        if (k < 2)
          break;
        paramStringBuffer.append('0');
      }
      paramStringBuffer.append((char)(48 + paramInt / 10));
      paramStringBuffer.append((char)(48 + paramInt % 10));
      return;
    }
    int i;
    if (paramInt < 1000)
    {
      i = 3;
      int j = this.mSize;
      while (true)
      {
        j--;
        if (j < i)
          break;
        paramStringBuffer.append('0');
      }
    }
    if (paramInt >= 0);
    for (boolean bool = true; ; bool = false)
    {
      Validate.isTrue(bool, "Negative values should not be possible", paramInt);
      i = Integer.toString(paramInt).length();
      break;
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
 * Qualified Name:     org.apache.commons.lang3.time.FastDateFormat.PaddedNumberField
 * JD-Core Version:    0.6.2
 */