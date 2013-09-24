package org.apache.commons.lang3.text.translate;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Locale;

public abstract class CharSequenceTranslator
{
  public static String hex(int paramInt)
  {
    return Integer.toHexString(paramInt).toUpperCase(Locale.ENGLISH);
  }

  public abstract int translate(CharSequence paramCharSequence, int paramInt, Writer paramWriter);

  public final String translate(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null)
      return null;
    try
    {
      StringWriter localStringWriter = new StringWriter(2 * paramCharSequence.length());
      translate(paramCharSequence, localStringWriter);
      String str = localStringWriter.toString();
      return str;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException(localIOException);
    }
  }

  public final void translate(CharSequence paramCharSequence, Writer paramWriter)
  {
    if (paramWriter == null)
      throw new IllegalArgumentException("The Writer must not be null");
    if (paramCharSequence == null);
    while (true)
    {
      return;
      int i = paramCharSequence.length();
      int j = 0;
      while (j < i)
      {
        int k = translate(paramCharSequence, j, paramWriter);
        if (k == 0)
        {
          char[] arrayOfChar = Character.toChars(Character.codePointAt(paramCharSequence, j));
          paramWriter.write(arrayOfChar);
          j += arrayOfChar.length;
        }
        else
        {
          int m = j;
          for (int n = 0; n < k; n++)
            m += Character.charCount(Character.codePointAt(paramCharSequence, m));
          j = m;
        }
      }
    }
  }

  public final CharSequenceTranslator with(CharSequenceTranslator[] paramArrayOfCharSequenceTranslator)
  {
    CharSequenceTranslator[] arrayOfCharSequenceTranslator = new CharSequenceTranslator[1 + paramArrayOfCharSequenceTranslator.length];
    arrayOfCharSequenceTranslator[0] = this;
    System.arraycopy(paramArrayOfCharSequenceTranslator, 0, arrayOfCharSequenceTranslator, 1, paramArrayOfCharSequenceTranslator.length);
    return new AggregateTranslator(arrayOfCharSequenceTranslator);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.text.translate.CharSequenceTranslator
 * JD-Core Version:    0.6.2
 */