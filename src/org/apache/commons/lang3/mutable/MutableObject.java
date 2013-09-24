package org.apache.commons.lang3.mutable;

import java.io.Serializable;

public class MutableObject
  implements Serializable, Mutable
{
  private static final long serialVersionUID = 86241875189L;
  private Object value;

  public MutableObject()
  {
  }

  public MutableObject(Object paramObject)
  {
    this.value = paramObject;
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == null);
    do
    {
      return false;
      if (this == paramObject)
        return true;
    }
    while (getClass() != paramObject.getClass());
    MutableObject localMutableObject = (MutableObject)paramObject;
    return this.value.equals(localMutableObject.value);
  }

  public Object getValue()
  {
    return this.value;
  }

  public int hashCode()
  {
    if (this.value == null)
      return 0;
    return this.value.hashCode();
  }

  public void setValue(Object paramObject)
  {
    this.value = paramObject;
  }

  public String toString()
  {
    if (this.value == null)
      return "null";
    return this.value.toString();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.mutable.MutableObject
 * JD-Core Version:    0.6.2
 */