package org.apache.commons.lang3;

import java.io.Writer;
import org.apache.commons.lang3.text.translate.CharSequenceTranslator;

class StringEscapeUtils$CsvUnescaper extends CharSequenceTranslator
{
  private static final char CSV_DELIMITER = ',';
  private static final char CSV_QUOTE = '"';
  private static final String CSV_QUOTE_STR = String.valueOf('"');
  private static final char[] CSV_SEARCH_CHARS = { 44, 34, 13, 10 };

  public int translate(CharSequence paramCharSequence, int paramInt, Writer paramWriter)
  {
    if (paramInt != 0)
      throw new IllegalStateException("CsvUnescaper should never reach the [1] index");
    if ((paramCharSequence.charAt(0) != '"') || (paramCharSequence.charAt(-1 + paramCharSequence.length()) != '"'))
    {
      paramWriter.write(paramCharSequence.toString());
      return paramCharSequence.length();
    }
    String str = paramCharSequence.subSequence(1, -1 + paramCharSequence.length()).toString();
    if (StringUtils.containsAny(str, CSV_SEARCH_CHARS))
      paramWriter.write(StringUtils.replace(str, CSV_QUOTE_STR + CSV_QUOTE_STR, CSV_QUOTE_STR));
    while (true)
    {
      return paramCharSequence.length();
      paramWriter.write(paramCharSequence.toString());
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.StringEscapeUtils.CsvUnescaper
 * JD-Core Version:    0.6.2
 */