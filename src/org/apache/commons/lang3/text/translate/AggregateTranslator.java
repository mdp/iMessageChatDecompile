package org.apache.commons.lang3.text.translate;

import java.io.Writer;
import org.apache.commons.lang3.ArrayUtils;

public class AggregateTranslator extends CharSequenceTranslator
{
  private final CharSequenceTranslator[] translators;

  public AggregateTranslator(CharSequenceTranslator[] paramArrayOfCharSequenceTranslator)
  {
    this.translators = ((CharSequenceTranslator[])ArrayUtils.clone(paramArrayOfCharSequenceTranslator));
  }

  public int translate(CharSequence paramCharSequence, int paramInt, Writer paramWriter)
  {
    CharSequenceTranslator[] arrayOfCharSequenceTranslator = this.translators;
    int i = arrayOfCharSequenceTranslator.length;
    for (int j = 0; j < i; j++)
    {
      int k = arrayOfCharSequenceTranslator[j].translate(paramCharSequence, paramInt, paramWriter);
      if (k != 0)
        return k;
    }
    return 0;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.text.translate.AggregateTranslator
 * JD-Core Version:    0.6.2
 */