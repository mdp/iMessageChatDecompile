package org.apache.commons.lang3.builder;

final class ToStringStyle$DefaultToStringStyle extends ToStringStyle
{
  private static final long serialVersionUID = 1L;

  private Object readResolve()
  {
    return ToStringStyle.DEFAULT_STYLE;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.builder.ToStringStyle.DefaultToStringStyle
 * JD-Core Version:    0.6.2
 */