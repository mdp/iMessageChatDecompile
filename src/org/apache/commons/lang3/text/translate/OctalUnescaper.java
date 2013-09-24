package org.apache.commons.lang3.text.translate;

import java.io.Writer;

public class OctalUnescaper extends CharSequenceTranslator
{
  private static int OCTAL_MAX = 377;

  public int translate(CharSequence paramCharSequence, int paramInt, Writer paramWriter)
  {
    if ((paramCharSequence.charAt(paramInt) == '\\') && (paramInt < -1 + paramCharSequence.length()) && (Character.isDigit(paramCharSequence.charAt(paramInt + 1))))
    {
      int i = paramInt + 1;
      int j = paramInt + 2;
      while ((j < paramCharSequence.length()) && (Character.isDigit(paramCharSequence.charAt(j))))
      {
        j++;
        if (Integer.parseInt(paramCharSequence.subSequence(i, j).toString(), 10) > OCTAL_MAX)
          j--;
      }
      paramWriter.write(Integer.parseInt(paramCharSequence.subSequence(i, j).toString(), 8));
      return j + 1 - i;
    }
    return 0;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.text.translate.OctalUnescaper
 * JD-Core Version:    0.6.2
 */