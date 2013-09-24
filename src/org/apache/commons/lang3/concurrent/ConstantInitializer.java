package org.apache.commons.lang3.concurrent;

import org.apache.commons.lang3.ObjectUtils;

public class ConstantInitializer
  implements ConcurrentInitializer
{
  private static final String FMT_TO_STRING = "ConstantInitializer@%d [ object = %s ]";
  private final Object object;

  public ConstantInitializer(Object paramObject)
  {
    this.object = paramObject;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject)
      return true;
    if (!(paramObject instanceof ConstantInitializer))
      return false;
    ConstantInitializer localConstantInitializer = (ConstantInitializer)paramObject;
    return ObjectUtils.equals(getObject(), localConstantInitializer.getObject());
  }

  public Object get()
  {
    return getObject();
  }

  public final Object getObject()
  {
    return this.object;
  }

  public int hashCode()
  {
    if (getObject() != null)
      return getObject().hashCode();
    return 0;
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(System.identityHashCode(this));
    arrayOfObject[1] = String.valueOf(getObject());
    return String.format("ConstantInitializer@%d [ object = %s ]", arrayOfObject);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.concurrent.ConstantInitializer
 * JD-Core Version:    0.6.2
 */