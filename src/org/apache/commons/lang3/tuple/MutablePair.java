package org.apache.commons.lang3.tuple;

public class MutablePair extends Pair
{
  private static final long serialVersionUID = 4954918890077093841L;
  public Object left;
  public Object right;

  public MutablePair()
  {
  }

  public MutablePair(Object paramObject1, Object paramObject2)
  {
    this.left = paramObject1;
    this.right = paramObject2;
  }

  public static MutablePair of(Object paramObject1, Object paramObject2)
  {
    return new MutablePair(paramObject1, paramObject2);
  }

  public Object getLeft()
  {
    return this.left;
  }

  public Object getRight()
  {
    return this.right;
  }

  public void setLeft(Object paramObject)
  {
    this.left = paramObject;
  }

  public void setRight(Object paramObject)
  {
    this.right = paramObject;
  }

  public Object setValue(Object paramObject)
  {
    Object localObject = getRight();
    setRight(paramObject);
    return localObject;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.tuple.MutablePair
 * JD-Core Version:    0.6.2
 */