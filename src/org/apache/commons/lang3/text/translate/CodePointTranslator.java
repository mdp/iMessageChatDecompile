package org.apache.commons.lang3.text.translate;

import java.io.Writer;

public abstract class CodePointTranslator extends CharSequenceTranslator
{
  public final int translate(CharSequence paramCharSequence, int paramInt, Writer paramWriter)
  {
    if (translate(Character.codePointAt(paramCharSequence, paramInt), paramWriter))
      return 1;
    return 0;
  }

  public abstract boolean translate(int paramInt, Writer paramWriter);
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.text.translate.CodePointTranslator
 * JD-Core Version:    0.6.2
 */