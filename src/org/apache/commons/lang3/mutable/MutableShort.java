package org.apache.commons.lang3.mutable;

public class MutableShort extends Number
  implements Comparable, Mutable
{
  private static final long serialVersionUID = -2135791679L;
  private short value;

  public MutableShort()
  {
  }

  public MutableShort(Number paramNumber)
  {
    this.value = paramNumber.shortValue();
  }

  public MutableShort(String paramString)
  {
    this.value = Short.parseShort(paramString);
  }

  public MutableShort(short paramShort)
  {
    this.value = paramShort;
  }

  public void add(Number paramNumber)
  {
    this.value = ((short)(this.value + paramNumber.shortValue()));
  }

  public void add(short paramShort)
  {
    this.value = ((short)(paramShort + this.value));
  }

  public int compareTo(MutableShort paramMutableShort)
  {
    int i = paramMutableShort.value;
    if (this.value < i)
      return -1;
    if (this.value == i)
      return 0;
    return 1;
  }

  public void decrement()
  {
    this.value = ((short)(-1 + this.value));
  }

  public double doubleValue()
  {
    return this.value;
  }

  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof MutableShort;
    boolean bool2 = false;
    if (bool1)
    {
      int i = this.value;
      int j = ((MutableShort)paramObject).shortValue();
      bool2 = false;
      if (i == j)
        bool2 = true;
    }
    return bool2;
  }

  public float floatValue()
  {
    return this.value;
  }

  public Short getValue()
  {
    return Short.valueOf(this.value);
  }

  public int hashCode()
  {
    return this.value;
  }

  public void increment()
  {
    this.value = ((short)(1 + this.value));
  }

  public int intValue()
  {
    return this.value;
  }

  public long longValue()
  {
    return this.value;
  }

  public void setValue(Number paramNumber)
  {
    this.value = paramNumber.shortValue();
  }

  public void setValue(short paramShort)
  {
    this.value = paramShort;
  }

  public short shortValue()
  {
    return this.value;
  }

  public void subtract(Number paramNumber)
  {
    this.value = ((short)(this.value - paramNumber.shortValue()));
  }

  public void subtract(short paramShort)
  {
    this.value = ((short)(this.value - paramShort));
  }

  public Short toShort()
  {
    return Short.valueOf(shortValue());
  }

  public String toString()
  {
    return String.valueOf(this.value);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.mutable.MutableShort
 * JD-Core Version:    0.6.2
 */