package org.apache.commons.lang3;

import org.apache.commons.lang3.text.translate.AggregateTranslator;
import org.apache.commons.lang3.text.translate.CharSequenceTranslator;
import org.apache.commons.lang3.text.translate.EntityArrays;
import org.apache.commons.lang3.text.translate.LookupTranslator;
import org.apache.commons.lang3.text.translate.NumericEntityUnescaper;
import org.apache.commons.lang3.text.translate.NumericEntityUnescaper.OPTION;
import org.apache.commons.lang3.text.translate.OctalUnescaper;
import org.apache.commons.lang3.text.translate.UnicodeEscaper;
import org.apache.commons.lang3.text.translate.UnicodeUnescaper;

public class StringEscapeUtils
{
  public static final CharSequenceTranslator ESCAPE_CSV;
  public static final CharSequenceTranslator ESCAPE_ECMASCRIPT;
  public static final CharSequenceTranslator ESCAPE_HTML3;
  public static final CharSequenceTranslator ESCAPE_HTML4;
  public static final CharSequenceTranslator ESCAPE_JAVA;
  public static final CharSequenceTranslator ESCAPE_XML;
  public static final CharSequenceTranslator UNESCAPE_CSV = new StringEscapeUtils.CsvUnescaper();
  public static final CharSequenceTranslator UNESCAPE_ECMASCRIPT;
  public static final CharSequenceTranslator UNESCAPE_HTML3;
  public static final CharSequenceTranslator UNESCAPE_HTML4;
  public static final CharSequenceTranslator UNESCAPE_JAVA;
  public static final CharSequenceTranslator UNESCAPE_XML;

  static
  {
    LookupTranslator localLookupTranslator = new LookupTranslator(new String[][] { { "\"", "\\\"" }, { "\\", "\\\\" } });
    CharSequenceTranslator[] arrayOfCharSequenceTranslator1 = new CharSequenceTranslator[1];
    arrayOfCharSequenceTranslator1[0] = new LookupTranslator(EntityArrays.JAVA_CTRL_CHARS_ESCAPE());
    CharSequenceTranslator localCharSequenceTranslator = localLookupTranslator.with(arrayOfCharSequenceTranslator1);
    CharSequenceTranslator[] arrayOfCharSequenceTranslator2 = new CharSequenceTranslator[1];
    arrayOfCharSequenceTranslator2[0] = UnicodeEscaper.outsideOf(32, 127);
    ESCAPE_JAVA = localCharSequenceTranslator.with(arrayOfCharSequenceTranslator2);
    CharSequenceTranslator[] arrayOfCharSequenceTranslator3 = new CharSequenceTranslator[3];
    arrayOfCharSequenceTranslator3[0] = new LookupTranslator(new String[][] { { "'", "\\'" }, { "\"", "\\\"" }, { "\\", "\\\\" }, { "/", "\\/" } });
    arrayOfCharSequenceTranslator3[1] = new LookupTranslator(EntityArrays.JAVA_CTRL_CHARS_ESCAPE());
    arrayOfCharSequenceTranslator3[2] = UnicodeEscaper.outsideOf(32, 127);
    ESCAPE_ECMASCRIPT = new AggregateTranslator(arrayOfCharSequenceTranslator3);
    CharSequenceTranslator[] arrayOfCharSequenceTranslator4 = new CharSequenceTranslator[2];
    arrayOfCharSequenceTranslator4[0] = new LookupTranslator(EntityArrays.BASIC_ESCAPE());
    arrayOfCharSequenceTranslator4[1] = new LookupTranslator(EntityArrays.APOS_ESCAPE());
    ESCAPE_XML = new AggregateTranslator(arrayOfCharSequenceTranslator4);
    CharSequenceTranslator[] arrayOfCharSequenceTranslator5 = new CharSequenceTranslator[2];
    arrayOfCharSequenceTranslator5[0] = new LookupTranslator(EntityArrays.BASIC_ESCAPE());
    arrayOfCharSequenceTranslator5[1] = new LookupTranslator(EntityArrays.ISO8859_1_ESCAPE());
    ESCAPE_HTML3 = new AggregateTranslator(arrayOfCharSequenceTranslator5);
    CharSequenceTranslator[] arrayOfCharSequenceTranslator6 = new CharSequenceTranslator[3];
    arrayOfCharSequenceTranslator6[0] = new LookupTranslator(EntityArrays.BASIC_ESCAPE());
    arrayOfCharSequenceTranslator6[1] = new LookupTranslator(EntityArrays.ISO8859_1_ESCAPE());
    arrayOfCharSequenceTranslator6[2] = new LookupTranslator(EntityArrays.HTML40_EXTENDED_ESCAPE());
    ESCAPE_HTML4 = new AggregateTranslator(arrayOfCharSequenceTranslator6);
    ESCAPE_CSV = new StringEscapeUtils.CsvEscaper();
    CharSequenceTranslator[] arrayOfCharSequenceTranslator7 = new CharSequenceTranslator[4];
    arrayOfCharSequenceTranslator7[0] = new OctalUnescaper();
    arrayOfCharSequenceTranslator7[1] = new UnicodeUnescaper();
    arrayOfCharSequenceTranslator7[2] = new LookupTranslator(EntityArrays.JAVA_CTRL_CHARS_UNESCAPE());
    arrayOfCharSequenceTranslator7[3] = new LookupTranslator(new String[][] { { "\\\\", "\\" }, { "\\\"", "\"" }, { "\\'", "'" }, { "\\", "" } });
    AggregateTranslator localAggregateTranslator = new AggregateTranslator(arrayOfCharSequenceTranslator7);
    UNESCAPE_JAVA = localAggregateTranslator;
    UNESCAPE_ECMASCRIPT = localAggregateTranslator;
    CharSequenceTranslator[] arrayOfCharSequenceTranslator8 = new CharSequenceTranslator[3];
    arrayOfCharSequenceTranslator8[0] = new LookupTranslator(EntityArrays.BASIC_UNESCAPE());
    arrayOfCharSequenceTranslator8[1] = new LookupTranslator(EntityArrays.ISO8859_1_UNESCAPE());
    arrayOfCharSequenceTranslator8[2] = new NumericEntityUnescaper(new NumericEntityUnescaper.OPTION[0]);
    UNESCAPE_HTML3 = new AggregateTranslator(arrayOfCharSequenceTranslator8);
    CharSequenceTranslator[] arrayOfCharSequenceTranslator9 = new CharSequenceTranslator[4];
    arrayOfCharSequenceTranslator9[0] = new LookupTranslator(EntityArrays.BASIC_UNESCAPE());
    arrayOfCharSequenceTranslator9[1] = new LookupTranslator(EntityArrays.ISO8859_1_UNESCAPE());
    arrayOfCharSequenceTranslator9[2] = new LookupTranslator(EntityArrays.HTML40_EXTENDED_UNESCAPE());
    arrayOfCharSequenceTranslator9[3] = new NumericEntityUnescaper(new NumericEntityUnescaper.OPTION[0]);
    UNESCAPE_HTML4 = new AggregateTranslator(arrayOfCharSequenceTranslator9);
    CharSequenceTranslator[] arrayOfCharSequenceTranslator10 = new CharSequenceTranslator[3];
    arrayOfCharSequenceTranslator10[0] = new LookupTranslator(EntityArrays.BASIC_UNESCAPE());
    arrayOfCharSequenceTranslator10[1] = new LookupTranslator(EntityArrays.APOS_UNESCAPE());
    arrayOfCharSequenceTranslator10[2] = new NumericEntityUnescaper(new NumericEntityUnescaper.OPTION[0]);
    UNESCAPE_XML = new AggregateTranslator(arrayOfCharSequenceTranslator10);
  }

  public static final String escapeCsv(String paramString)
  {
    return ESCAPE_CSV.translate(paramString);
  }

  public static final String escapeEcmaScript(String paramString)
  {
    return ESCAPE_ECMASCRIPT.translate(paramString);
  }

  public static final String escapeHtml3(String paramString)
  {
    return ESCAPE_HTML3.translate(paramString);
  }

  public static final String escapeHtml4(String paramString)
  {
    return ESCAPE_HTML4.translate(paramString);
  }

  public static final String escapeJava(String paramString)
  {
    return ESCAPE_JAVA.translate(paramString);
  }

  public static final String escapeXml(String paramString)
  {
    return ESCAPE_XML.translate(paramString);
  }

  public static final String unescapeCsv(String paramString)
  {
    return UNESCAPE_CSV.translate(paramString);
  }

  public static final String unescapeEcmaScript(String paramString)
  {
    return UNESCAPE_ECMASCRIPT.translate(paramString);
  }

  public static final String unescapeHtml3(String paramString)
  {
    return UNESCAPE_HTML3.translate(paramString);
  }

  public static final String unescapeHtml4(String paramString)
  {
    return UNESCAPE_HTML4.translate(paramString);
  }

  public static final String unescapeJava(String paramString)
  {
    return UNESCAPE_JAVA.translate(paramString);
  }

  public static final String unescapeXml(String paramString)
  {
    return UNESCAPE_XML.translate(paramString);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.StringEscapeUtils
 * JD-Core Version:    0.6.2
 */