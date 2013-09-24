package org.apache.commons.lang3.text.translate;

import java.io.Writer;

public class UnicodeUnescaper extends CharSequenceTranslator
{
  public int translate(CharSequence paramCharSequence, int paramInt, Writer paramWriter)
  {
    if ((paramCharSequence.charAt(paramInt) == '\\') && (paramInt + 1 < paramCharSequence.length()) && (paramCharSequence.charAt(paramInt + 1) == 'u'))
    {
      for (int i = 2; (paramInt + i < paramCharSequence.length()) && (paramCharSequence.charAt(paramInt + i) == 'u'); i++);
      if ((paramInt + i < paramCharSequence.length()) && (paramCharSequence.charAt(paramInt + i) == '+'))
        i++;
      if (4 + (paramInt + i) <= paramCharSequence.length())
      {
        CharSequence localCharSequence = paramCharSequence.subSequence(paramInt + i, 4 + (paramInt + i));
        try
        {
          paramWriter.write((char)Integer.parseInt(localCharSequence.toString(), 16));
          return i + 4;
        }
        catch (NumberFormatException localNumberFormatException)
        {
          throw new IllegalArgumentException("Unable to parse unicode value: " + localCharSequence, localNumberFormatException);
        }
      }
      throw new IllegalArgumentException("Less than 4 hex digits in unicode value: '" + paramCharSequence.subSequence(paramInt, paramCharSequence.length()) + "' due to end of CharSequence");
    }
    return 0;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.text.translate.UnicodeUnescaper
 * JD-Core Version:    0.6.2
 */