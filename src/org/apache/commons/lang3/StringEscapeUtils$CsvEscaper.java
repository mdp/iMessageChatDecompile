package org.apache.commons.lang3;

import java.io.Writer;
import org.apache.commons.lang3.text.translate.CharSequenceTranslator;

class StringEscapeUtils$CsvEscaper extends CharSequenceTranslator
{
  private static final char CSV_DELIMITER = ',';
  private static final char CSV_QUOTE = '"';
  private static final String CSV_QUOTE_STR = String.valueOf('"');
  private static final char[] CSV_SEARCH_CHARS = { 44, 34, 13, 10 };

  public int translate(CharSequence paramCharSequence, int paramInt, Writer paramWriter)
  {
    if (paramInt != 0)
      throw new IllegalStateException("CsvEscaper should never reach the [1] index");
    if (StringUtils.containsNone(paramCharSequence.toString(), CSV_SEARCH_CHARS))
      paramWriter.write(paramCharSequence.toString());
    while (true)
    {
      return paramCharSequence.length();
      paramWriter.write(34);
      paramWriter.write(StringUtils.replace(paramCharSequence.toString(), CSV_QUOTE_STR, CSV_QUOTE_STR + CSV_QUOTE_STR));
      paramWriter.write(34);
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.StringEscapeUtils.CsvEscaper
 * JD-Core Version:    0.6.2
 */