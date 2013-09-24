package org.apache.commons.lang3.builder;

import org.apache.commons.lang3.SystemUtils;

final class ToStringStyle$MultiLineToStringStyle extends ToStringStyle
{
  private static final long serialVersionUID = 1L;

  ToStringStyle$MultiLineToStringStyle()
  {
    setContentStart("[");
    setFieldSeparator(SystemUtils.LINE_SEPARATOR + "  ");
    setFieldSeparatorAtStart(true);
    setContentEnd(SystemUtils.LINE_SEPARATOR + "]");
  }

  private Object readResolve()
  {
    return ToStringStyle.MULTI_LINE_STYLE;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.builder.ToStringStyle.MultiLineToStringStyle
 * JD-Core Version:    0.6.2
 */