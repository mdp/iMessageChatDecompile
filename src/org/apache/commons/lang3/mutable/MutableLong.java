package org.apache.commons.lang3.mutable;

public class MutableLong extends Number
  implements Comparable, Mutable
{
  private static final long serialVersionUID = 62986528375L;
  private long value;

  public MutableLong()
  {
  }

  public MutableLong(long paramLong)
  {
    this.value = paramLong;
  }

  public MutableLong(Number paramNumber)
  {
    this.value = paramNumber.longValue();
  }

  public MutableLong(String paramString)
  {
    this.value = Long.parseLong(paramString);
  }

  public void add(long paramLong)
  {
    this.value = (paramLong + this.value);
  }

  public void add(Number paramNumber)
  {
    this.value += paramNumber.longValue();
  }

  public int compareTo(MutableLong paramMutableLong)
  {
    long l = paramMutableLong.value;
    if (this.value < l)
      return -1;
    if (this.value == l)
      return 0;
    return 1;
  }

  public void decrement()
  {
    this.value -= 1L;
  }

  public double doubleValue()
  {
    return this.value;
  }

  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof MutableLong;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = this.value < ((MutableLong)paramObject).longValue();
      bool2 = false;
      if (!bool3)
        bool2 = true;
    }
    return bool2;
  }

  public float floatValue()
  {
    return (float)this.value;
  }

  public Long getValue()
  {
    return Long.valueOf(this.value);
  }

  public int hashCode()
  {
    return (int)(this.value ^ this.value >>> 32);
  }

  public void increment()
  {
    this.value = (1L + this.value);
  }

  public int intValue()
  {
    return (int)this.value;
  }

  public long longValue()
  {
    return this.value;
  }

  public void setValue(long paramLong)
  {
    this.value = paramLong;
  }

  public void setValue(Number paramNumber)
  {
    this.value = paramNumber.longValue();
  }

  public void subtract(long paramLong)
  {
    this.value -= paramLong;
  }

  public void subtract(Number paramNumber)
  {
    this.value -= paramNumber.longValue();
  }

  public Long toLong()
  {
    return Long.valueOf(longValue());
  }

  public String toString()
  {
    return String.valueOf(this.value);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.mutable.MutableLong
 * JD-Core Version:    0.6.2
 */