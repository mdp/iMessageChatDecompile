package org.apache.commons.lang3.mutable;

public class MutableInt extends Number
  implements Comparable, Mutable
{
  private static final long serialVersionUID = 512176391864L;
  private int value;

  public MutableInt()
  {
  }

  public MutableInt(int paramInt)
  {
    this.value = paramInt;
  }

  public MutableInt(Number paramNumber)
  {
    this.value = paramNumber.intValue();
  }

  public MutableInt(String paramString)
  {
    this.value = Integer.parseInt(paramString);
  }

  public void add(int paramInt)
  {
    this.value = (paramInt + this.value);
  }

  public void add(Number paramNumber)
  {
    this.value += paramNumber.intValue();
  }

  public int compareTo(MutableInt paramMutableInt)
  {
    int i = paramMutableInt.value;
    if (this.value < i)
      return -1;
    if (this.value == i)
      return 0;
    return 1;
  }

  public void decrement()
  {
    this.value = (-1 + this.value);
  }

  public double doubleValue()
  {
    return this.value;
  }

  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof MutableInt;
    boolean bool2 = false;
    if (bool1)
    {
      int i = this.value;
      int j = ((MutableInt)paramObject).intValue();
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

  public Integer getValue()
  {
    return Integer.valueOf(this.value);
  }

  public int hashCode()
  {
    return this.value;
  }

  public void increment()
  {
    this.value = (1 + this.value);
  }

  public int intValue()
  {
    return this.value;
  }

  public long longValue()
  {
    return this.value;
  }

  public void setValue(int paramInt)
  {
    this.value = paramInt;
  }

  public void setValue(Number paramNumber)
  {
    this.value = paramNumber.intValue();
  }

  public void subtract(int paramInt)
  {
    this.value -= paramInt;
  }

  public void subtract(Number paramNumber)
  {
    this.value -= paramNumber.intValue();
  }

  public Integer toInteger()
  {
    return Integer.valueOf(intValue());
  }

  public String toString()
  {
    return String.valueOf(this.value);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.mutable.MutableInt
 * JD-Core Version:    0.6.2
 */