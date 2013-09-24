package org.apache.commons.lang3.mutable;

import java.io.Serializable;

public class MutableBoolean
  implements Serializable, Comparable, Mutable
{
  private static final long serialVersionUID = -4830728138360036487L;
  private boolean value;

  public MutableBoolean()
  {
  }

  public MutableBoolean(Boolean paramBoolean)
  {
    this.value = paramBoolean.booleanValue();
  }

  public MutableBoolean(boolean paramBoolean)
  {
    this.value = paramBoolean;
  }

  public boolean booleanValue()
  {
    return this.value;
  }

  public int compareTo(MutableBoolean paramMutableBoolean)
  {
    boolean bool = paramMutableBoolean.value;
    if (this.value == bool)
      return 0;
    if (this.value)
      return 1;
    return -1;
  }

  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof MutableBoolean;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = this.value;
      boolean bool4 = ((MutableBoolean)paramObject).booleanValue();
      bool2 = false;
      if (bool3 == bool4)
        bool2 = true;
    }
    return bool2;
  }

  public Boolean getValue()
  {
    return Boolean.valueOf(this.value);
  }

  public int hashCode()
  {
    if (this.value)
      return Boolean.TRUE.hashCode();
    return Boolean.FALSE.hashCode();
  }

  public boolean isFalse()
  {
    return !this.value;
  }

  public boolean isTrue()
  {
    return this.value == true;
  }

  public void setValue(Boolean paramBoolean)
  {
    this.value = paramBoolean.booleanValue();
  }

  public void setValue(boolean paramBoolean)
  {
    this.value = paramBoolean;
  }

  public Boolean toBoolean()
  {
    return Boolean.valueOf(booleanValue());
  }

  public String toString()
  {
    return String.valueOf(this.value);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.mutable.MutableBoolean
 * JD-Core Version:    0.6.2
 */