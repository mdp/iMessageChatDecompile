package org.apache.commons.lang3.time;

import org.apache.commons.lang3.StringUtils;

class DurationFormatUtils$Token
{
  private int count;
  private final Object value;

  DurationFormatUtils$Token(Object paramObject)
  {
    this.value = paramObject;
    this.count = 1;
  }

  DurationFormatUtils$Token(Object paramObject, int paramInt)
  {
    this.value = paramObject;
    this.count = paramInt;
  }

  static boolean containsTokenWithValue(Token[] paramArrayOfToken, Object paramObject)
  {
    int i = paramArrayOfToken.length;
    for (int j = 0; ; j++)
    {
      boolean bool = false;
      if (j < i)
      {
        if (paramArrayOfToken[j].getValue() == paramObject)
          bool = true;
      }
      else
        return bool;
    }
  }

  public boolean equals(Object paramObject)
  {
    Token localToken;
    if ((paramObject instanceof Token))
    {
      localToken = (Token)paramObject;
      if (this.value.getClass() == localToken.value.getClass())
        break label31;
    }
    label31: 
    do
    {
      do
        return false;
      while (this.count != localToken.count);
      if ((this.value instanceof StringBuffer))
        return this.value.toString().equals(localToken.value.toString());
      if ((this.value instanceof Number))
        return this.value.equals(localToken.value);
    }
    while (this.value != localToken.value);
    return true;
  }

  int getCount()
  {
    return this.count;
  }

  Object getValue()
  {
    return this.value;
  }

  public int hashCode()
  {
    return this.value.hashCode();
  }

  void increment()
  {
    this.count = (1 + this.count);
  }

  public String toString()
  {
    return StringUtils.repeat(this.value.toString(), this.count);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.time.DurationFormatUtils.Token
 * JD-Core Version:    0.6.2
 */