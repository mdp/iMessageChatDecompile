package org.apache.commons.lang3.mutable;

public class MutableByte extends Number
  implements Comparable, Mutable
{
  private static final long serialVersionUID = -1585823265L;
  private byte value;

  public MutableByte()
  {
  }

  public MutableByte(byte paramByte)
  {
    this.value = paramByte;
  }

  public MutableByte(Number paramNumber)
  {
    this.value = paramNumber.byteValue();
  }

  public MutableByte(String paramString)
  {
    this.value = Byte.parseByte(paramString);
  }

  public void add(byte paramByte)
  {
    this.value = ((byte)(paramByte + this.value));
  }

  public void add(Number paramNumber)
  {
    this.value = ((byte)(this.value + paramNumber.byteValue()));
  }

  public byte byteValue()
  {
    return this.value;
  }

  public int compareTo(MutableByte paramMutableByte)
  {
    int i = paramMutableByte.value;
    if (this.value < i)
      return -1;
    if (this.value == i)
      return 0;
    return 1;
  }

  public void decrement()
  {
    this.value = ((byte)(-1 + this.value));
  }

  public double doubleValue()
  {
    return this.value;
  }

  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof MutableByte;
    boolean bool2 = false;
    if (bool1)
    {
      int i = this.value;
      int j = ((MutableByte)paramObject).byteValue();
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

  public Byte getValue()
  {
    return Byte.valueOf(this.value);
  }

  public int hashCode()
  {
    return this.value;
  }

  public void increment()
  {
    this.value = ((byte)(1 + this.value));
  }

  public int intValue()
  {
    return this.value;
  }

  public long longValue()
  {
    return this.value;
  }

  public void setValue(byte paramByte)
  {
    this.value = paramByte;
  }

  public void setValue(Number paramNumber)
  {
    this.value = paramNumber.byteValue();
  }

  public void subtract(byte paramByte)
  {
    this.value = ((byte)(this.value - paramByte));
  }

  public void subtract(Number paramNumber)
  {
    this.value = ((byte)(this.value - paramNumber.byteValue()));
  }

  public Byte toByte()
  {
    return Byte.valueOf(byteValue());
  }

  public String toString()
  {
    return String.valueOf(this.value);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.mutable.MutableByte
 * JD-Core Version:    0.6.2
 */