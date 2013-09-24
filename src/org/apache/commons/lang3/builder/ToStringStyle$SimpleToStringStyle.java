package org.apache.commons.lang3.builder;

final class ToStringStyle$SimpleToStringStyle extends ToStringStyle
{
  private static final long serialVersionUID = 1L;

  ToStringStyle$SimpleToStringStyle()
  {
    setUseClassName(false);
    setUseIdentityHashCode(false);
    setUseFieldNames(false);
    setContentStart("");
    setContentEnd("");
  }

  private Object readResolve()
  {
    return ToStringStyle.SIMPLE_STYLE;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.builder.ToStringStyle.SimpleToStringStyle
 * JD-Core Version:    0.6.2
 */