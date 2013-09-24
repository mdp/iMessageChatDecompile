package org.apache.commons.lang3.tuple;

public final class ImmutablePair extends Pair
{
  private static final long serialVersionUID = 4954918890077093841L;
  public final Object left;
  public final Object right;

  public ImmutablePair(Object paramObject1, Object paramObject2)
  {
    this.left = paramObject1;
    this.right = paramObject2;
  }

  public static ImmutablePair of(Object paramObject1, Object paramObject2)
  {
    return new ImmutablePair(paramObject1, paramObject2);
  }

  public final Object getLeft()
  {
    return this.left;
  }

  public final Object getRight()
  {
    return this.right;
  }

  public final Object setValue(Object paramObject)
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.tuple.ImmutablePair
 * JD-Core Version:    0.6.2
 */