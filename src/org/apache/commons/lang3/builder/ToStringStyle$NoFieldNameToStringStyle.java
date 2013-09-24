package org.apache.commons.lang3.builder;

final class ToStringStyle$NoFieldNameToStringStyle extends ToStringStyle
{
  private static final long serialVersionUID = 1L;

  ToStringStyle$NoFieldNameToStringStyle()
  {
    setUseFieldNames(false);
  }

  private Object readResolve()
  {
    return ToStringStyle.NO_FIELD_NAMES_STYLE;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.builder.ToStringStyle.NoFieldNameToStringStyle
 * JD-Core Version:    0.6.2
 */