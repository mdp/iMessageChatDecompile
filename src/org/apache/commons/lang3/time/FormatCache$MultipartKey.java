package org.apache.commons.lang3.time;

import java.util.Arrays;

class FormatCache$MultipartKey
{
  private int hashCode;
  private final Object[] keys;

  public FormatCache$MultipartKey(Object[] paramArrayOfObject)
  {
    this.keys = paramArrayOfObject;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject)
      return true;
    if (!(paramObject instanceof MultipartKey))
      return false;
    return Arrays.equals(this.keys, ((MultipartKey)paramObject).keys);
  }

  public int hashCode()
  {
    int i = 0;
    if (this.hashCode == 0)
    {
      for (Object localObject : this.keys)
        if (localObject != null)
          i = i * 7 + localObject.hashCode();
      this.hashCode = i;
    }
    return this.hashCode;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.time.FormatCache.MultipartKey
 * JD-Core Version:    0.6.2
 */