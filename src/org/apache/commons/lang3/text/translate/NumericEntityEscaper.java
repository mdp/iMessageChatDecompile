package org.apache.commons.lang3.text.translate;

import java.io.Writer;

public class NumericEntityEscaper extends CodePointTranslator
{
  private final int above;
  private final int below;
  private final boolean between;

  public NumericEntityEscaper()
  {
    this(0, 2147483647, true);
  }

  private NumericEntityEscaper(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    this.below = paramInt1;
    this.above = paramInt2;
    this.between = paramBoolean;
  }

  public static NumericEntityEscaper above(int paramInt)
  {
    return outsideOf(0, paramInt);
  }

  public static NumericEntityEscaper below(int paramInt)
  {
    return outsideOf(paramInt, 2147483647);
  }

  public static NumericEntityEscaper between(int paramInt1, int paramInt2)
  {
    return new NumericEntityEscaper(paramInt1, paramInt2, true);
  }

  public static NumericEntityEscaper outsideOf(int paramInt1, int paramInt2)
  {
    return new NumericEntityEscaper(paramInt1, paramInt2, false);
  }

  public boolean translate(int paramInt, Writer paramWriter)
  {
    if (this.between)
    {
      if ((paramInt >= this.below) && (paramInt <= this.above));
    }
    else
      while ((paramInt >= this.below) && (paramInt <= this.above))
        return false;
    paramWriter.write("&#");
    paramWriter.write(Integer.toString(paramInt, 10));
    paramWriter.write(59);
    return true;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.text.translate.NumericEntityEscaper
 * JD-Core Version:    0.6.2
 */