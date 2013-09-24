package org.apache.commons.lang3;

public class BitField
{
  private final int _mask;
  private final int _shift_count;

  public BitField(int paramInt)
  {
    this._mask = paramInt;
    int i = 0;
    if (paramInt != 0)
      while ((paramInt & 0x1) == 0)
      {
        i++;
        paramInt >>= 1;
      }
    this._shift_count = i;
  }

  public int clear(int paramInt)
  {
    return paramInt & (0xFFFFFFFF ^ this._mask);
  }

  public byte clearByte(byte paramByte)
  {
    return (byte)clear(paramByte);
  }

  public short clearShort(short paramShort)
  {
    return (short)clear(paramShort);
  }

  public int getRawValue(int paramInt)
  {
    return paramInt & this._mask;
  }

  public short getShortRawValue(short paramShort)
  {
    return (short)getRawValue(paramShort);
  }

  public short getShortValue(short paramShort)
  {
    return (short)getValue(paramShort);
  }

  public int getValue(int paramInt)
  {
    return getRawValue(paramInt) >> this._shift_count;
  }

  public boolean isAllSet(int paramInt)
  {
    return (paramInt & this._mask) == this._mask;
  }

  public boolean isSet(int paramInt)
  {
    return (paramInt & this._mask) != 0;
  }

  public int set(int paramInt)
  {
    return paramInt | this._mask;
  }

  public int setBoolean(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
      return set(paramInt);
    return clear(paramInt);
  }

  public byte setByte(byte paramByte)
  {
    return (byte)set(paramByte);
  }

  public byte setByteBoolean(byte paramByte, boolean paramBoolean)
  {
    if (paramBoolean)
      return setByte(paramByte);
    return clearByte(paramByte);
  }

  public short setShort(short paramShort)
  {
    return (short)set(paramShort);
  }

  public short setShortBoolean(short paramShort, boolean paramBoolean)
  {
    if (paramBoolean)
      return setShort(paramShort);
    return clearShort(paramShort);
  }

  public short setShortValue(short paramShort1, short paramShort2)
  {
    return (short)setValue(paramShort1, paramShort2);
  }

  public int setValue(int paramInt1, int paramInt2)
  {
    return paramInt1 & (0xFFFFFFFF ^ this._mask) | paramInt2 << this._shift_count & this._mask;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.BitField
 * JD-Core Version:    0.6.2
 */