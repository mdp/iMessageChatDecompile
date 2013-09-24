package org.apache.commons.lang3.builder;

final class ToStringStyle$ShortPrefixToStringStyle extends ToStringStyle
{
  private static final long serialVersionUID = 1L;

  ToStringStyle$ShortPrefixToStringStyle()
  {
    setUseShortClassName(true);
    setUseIdentityHashCode(false);
  }

  private Object readResolve()
  {
    return ToStringStyle.SHORT_PREFIX_STYLE;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.builder.ToStringStyle.ShortPrefixToStringStyle
 * JD-Core Version:    0.6.2
 */