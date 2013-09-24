package org.apache.commons.lang3.builder;

final class IDKey
{
  private final int id;
  private final Object value;

  public IDKey(Object paramObject)
  {
    this.id = System.identityHashCode(paramObject);
    this.value = paramObject;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof IDKey));
    IDKey localIDKey;
    do
    {
      return false;
      localIDKey = (IDKey)paramObject;
    }
    while ((this.id != localIDKey.id) || (this.value != localIDKey.value));
    return true;
  }

  public final int hashCode()
  {
    return this.id;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.builder.IDKey
 * JD-Core Version:    0.6.2
 */