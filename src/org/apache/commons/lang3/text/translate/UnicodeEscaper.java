package org.apache.commons.lang3.text.translate;

import java.io.Writer;

public class UnicodeEscaper extends CodePointTranslator
{
  private final int above;
  private final int below;
  private final boolean between;

  public UnicodeEscaper()
  {
    this(0, 2147483647, true);
  }

  private UnicodeEscaper(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    this.below = paramInt1;
    this.above = paramInt2;
    this.between = paramBoolean;
  }

  public static UnicodeEscaper above(int paramInt)
  {
    return outsideOf(0, paramInt);
  }

  public static UnicodeEscaper below(int paramInt)
  {
    return outsideOf(paramInt, 2147483647);
  }

  public static UnicodeEscaper between(int paramInt1, int paramInt2)
  {
    return new UnicodeEscaper(paramInt1, paramInt2, true);
  }

  public static UnicodeEscaper outsideOf(int paramInt1, int paramInt2)
  {
    return new UnicodeEscaper(paramInt1, paramInt2, false);
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
    if (paramInt > 65535)
      paramWriter.write("\\u" + hex(paramInt));
    while (true)
    {
      return true;
      if (paramInt > 4095)
        paramWriter.write("\\u" + hex(paramInt));
      else if (paramInt > 255)
        paramWriter.write("\\u0" + hex(paramInt));
      else if (paramInt > 15)
        paramWriter.write("\\u00" + hex(paramInt));
      else
        paramWriter.write("\\u000" + hex(paramInt));
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.text.translate.UnicodeEscaper
 * JD-Core Version:    0.6.2
 */