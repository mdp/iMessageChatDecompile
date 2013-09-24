package org.apache.commons.lang3.text.translate;

import java.lang.reflect.Array;

public class EntityArrays
{
  private static final String[][] APOS_ESCAPE;
  private static final String[][] APOS_UNESCAPE;
  private static final String[][] BASIC_ESCAPE;
  private static final String[][] BASIC_UNESCAPE;
  private static final String[][] HTML40_EXTENDED_ESCAPE;
  private static final String[][] HTML40_EXTENDED_UNESCAPE;
  private static final String[][] ISO8859_1_ESCAPE;
  private static final String[][] ISO8859_1_UNESCAPE;
  private static final String[][] JAVA_CTRL_CHARS_ESCAPE = arrayOfString;5;
  private static final String[][] JAVA_CTRL_CHARS_UNESCAPE = invert(arrayOfString;5);

  static
  {
    String[][] arrayOfString;1 = { { " ", "&nbsp;" }, { "¡", "&iexcl;" }, { "¢", "&cent;" }, { "£", "&pound;" }, { "¤", "&curren;" }, { "¥", "&yen;" }, { "¦", "&brvbar;" }, { "§", "&sect;" }, { "¨", "&uml;" }, { "©", "&copy;" }, { "ª", "&ordf;" }, { "«", "&laquo;" }, { "¬", "&not;" }, { "­", "&shy;" }, { "®", "&reg;" }, { "¯", "&macr;" }, { "°", "&deg;" }, { "±", "&plusmn;" }, { "²", "&sup2;" }, { "³", "&sup3;" }, { "´", "&acute;" }, { "µ", "&micro;" }, { "¶", "&para;" }, { "·", "&middot;" }, { "¸", "&cedil;" }, { "¹", "&sup1;" }, { "º", "&ordm;" }, { "»", "&raquo;" }, { "¼", "&frac14;" }, { "½", "&frac12;" }, { "¾", "&frac34;" }, { "¿", "&iquest;" }, { "À", "&Agrave;" }, { "Á", "&Aacute;" }, { "Â", "&Acirc;" }, { "Ã", "&Atilde;" }, { "Ä", "&Auml;" }, { "Å", "&Aring;" }, { "Æ", "&AElig;" }, { "Ç", "&Ccedil;" }, { "È", "&Egrave;" }, { "É", "&Eacute;" }, { "Ê", "&Ecirc;" }, { "Ë", "&Euml;" }, { "Ì", "&Igrave;" }, { "Í", "&Iacute;" }, { "Î", "&Icirc;" }, { "Ï", "&Iuml;" }, { "Ð", "&ETH;" }, { "Ñ", "&Ntilde;" }, { "Ò", "&Ograve;" }, { "Ó", "&Oacute;" }, { "Ô", "&Ocirc;" }, { "Õ", "&Otilde;" }, { "Ö", "&Ouml;" }, { "×", "&times;" }, { "Ø", "&Oslash;" }, { "Ù", "&Ugrave;" }, { "Ú", "&Uacute;" }, { "Û", "&Ucirc;" }, { "Ü", "&Uuml;" }, { "Ý", "&Yacute;" }, { "Þ", "&THORN;" }, { "ß", "&szlig;" }, { "à", "&agrave;" }, { "á", "&aacute;" }, { "â", "&acirc;" }, { "ã", "&atilde;" }, { "ä", "&auml;" }, { "å", "&aring;" }, { "æ", "&aelig;" }, { "ç", "&ccedil;" }, { "è", "&egrave;" }, { "é", "&eacute;" }, { "ê", "&ecirc;" }, { "ë", "&euml;" }, { "ì", "&igrave;" }, { "í", "&iacute;" }, { "î", "&icirc;" }, { "ï", "&iuml;" }, { "ð", "&eth;" }, { "ñ", "&ntilde;" }, { "ò", "&ograve;" }, { "ó", "&oacute;" }, { "ô", "&ocirc;" }, { "õ", "&otilde;" }, { "ö", "&ouml;" }, { "÷", "&divide;" }, { "ø", "&oslash;" }, { "ù", "&ugrave;" }, { "ú", "&uacute;" }, { "û", "&ucirc;" }, { "ü", "&uuml;" }, { "ý", "&yacute;" }, { "þ", "&thorn;" }, { "ÿ", "&yuml;" } };
    ISO8859_1_ESCAPE = arrayOfString;1;
    ISO8859_1_UNESCAPE = invert(arrayOfString;1);
    String[][] arrayOfString;2 = { { "ƒ", "&fnof;" }, { "Α", "&Alpha;" }, { "Β", "&Beta;" }, { "Γ", "&Gamma;" }, { "Δ", "&Delta;" }, { "Ε", "&Epsilon;" }, { "Ζ", "&Zeta;" }, { "Η", "&Eta;" }, { "Θ", "&Theta;" }, { "Ι", "&Iota;" }, { "Κ", "&Kappa;" }, { "Λ", "&Lambda;" }, { "Μ", "&Mu;" }, { "Ν", "&Nu;" }, { "Ξ", "&Xi;" }, { "Ο", "&Omicron;" }, { "Π", "&Pi;" }, { "Ρ", "&Rho;" }, { "Σ", "&Sigma;" }, { "Τ", "&Tau;" }, { "Υ", "&Upsilon;" }, { "Φ", "&Phi;" }, { "Χ", "&Chi;" }, { "Ψ", "&Psi;" }, { "Ω", "&Omega;" }, { "α", "&alpha;" }, { "β", "&beta;" }, { "γ", "&gamma;" }, { "δ", "&delta;" }, { "ε", "&epsilon;" }, { "ζ", "&zeta;" }, { "η", "&eta;" }, { "θ", "&theta;" }, { "ι", "&iota;" }, { "κ", "&kappa;" }, { "λ", "&lambda;" }, { "μ", "&mu;" }, { "ν", "&nu;" }, { "ξ", "&xi;" }, { "ο", "&omicron;" }, { "π", "&pi;" }, { "ρ", "&rho;" }, { "ς", "&sigmaf;" }, { "σ", "&sigma;" }, { "τ", "&tau;" }, { "υ", "&upsilon;" }, { "φ", "&phi;" }, { "χ", "&chi;" }, { "ψ", "&psi;" }, { "ω", "&omega;" }, { "ϑ", "&thetasym;" }, { "ϒ", "&upsih;" }, { "ϖ", "&piv;" }, { "•", "&bull;" }, { "…", "&hellip;" }, { "′", "&prime;" }, { "″", "&Prime;" }, { "‾", "&oline;" }, { "⁄", "&frasl;" }, { "℘", "&weierp;" }, { "ℑ", "&image;" }, { "ℜ", "&real;" }, { "™", "&trade;" }, { "ℵ", "&alefsym;" }, { "←", "&larr;" }, { "↑", "&uarr;" }, { "→", "&rarr;" }, { "↓", "&darr;" }, { "↔", "&harr;" }, { "↵", "&crarr;" }, { "⇐", "&lArr;" }, { "⇑", "&uArr;" }, { "⇒", "&rArr;" }, { "⇓", "&dArr;" }, { "⇔", "&hArr;" }, { "∀", "&forall;" }, { "∂", "&part;" }, { "∃", "&exist;" }, { "∅", "&empty;" }, { "∇", "&nabla;" }, { "∈", "&isin;" }, { "∉", "&notin;" }, { "∋", "&ni;" }, { "∏", "&prod;" }, { "∑", "&sum;" }, { "−", "&minus;" }, { "∗", "&lowast;" }, { "√", "&radic;" }, { "∝", "&prop;" }, { "∞", "&infin;" }, { "∠", "&ang;" }, { "∧", "&and;" }, { "∨", "&or;" }, { "∩", "&cap;" }, { "∪", "&cup;" }, { "∫", "&int;" }, { "∴", "&there4;" }, { "∼", "&sim;" }, { "≅", "&cong;" }, { "≈", "&asymp;" }, { "≠", "&ne;" }, { "≡", "&equiv;" }, { "≤", "&le;" }, { "≥", "&ge;" }, { "⊂", "&sub;" }, { "⊃", "&sup;" }, { "⊆", "&sube;" }, { "⊇", "&supe;" }, { "⊕", "&oplus;" }, { "⊗", "&otimes;" }, { "⊥", "&perp;" }, { "⋅", "&sdot;" }, { "⌈", "&lceil;" }, { "⌉", "&rceil;" }, { "⌊", "&lfloor;" }, { "⌋", "&rfloor;" }, { "〈", "&lang;" }, { "〉", "&rang;" }, { "◊", "&loz;" }, { "♠", "&spades;" }, { "♣", "&clubs;" }, { "♥", "&hearts;" }, { "♦", "&diams;" }, { "Œ", "&OElig;" }, { "œ", "&oelig;" }, { "Š", "&Scaron;" }, { "š", "&scaron;" }, { "Ÿ", "&Yuml;" }, { "ˆ", "&circ;" }, { "˜", "&tilde;" }, { " ", "&ensp;" }, { " ", "&emsp;" }, { " ", "&thinsp;" }, { "‌", "&zwnj;" }, { "‍", "&zwj;" }, { "‎", "&lrm;" }, { "‏", "&rlm;" }, { "–", "&ndash;" }, { "—", "&mdash;" }, { "‘", "&lsquo;" }, { "’", "&rsquo;" }, { "‚", "&sbquo;" }, { "“", "&ldquo;" }, { "”", "&rdquo;" }, { "„", "&bdquo;" }, { "†", "&dagger;" }, { "‡", "&Dagger;" }, { "‰", "&permil;" }, { "‹", "&lsaquo;" }, { "›", "&rsaquo;" }, { "€", "&euro;" } };
    HTML40_EXTENDED_ESCAPE = arrayOfString;2;
    HTML40_EXTENDED_UNESCAPE = invert(arrayOfString;2);
    String[][] arrayOfString;3 = { { "\"", "&quot;" }, { "&", "&amp;" }, { "<", "&lt;" }, { ">", "&gt;" } };
    BASIC_ESCAPE = arrayOfString;3;
    BASIC_UNESCAPE = invert(arrayOfString;3);
    String[][] arrayOfString;4 = { { "'", "&apos;" } };
    APOS_ESCAPE = arrayOfString;4;
    APOS_UNESCAPE = invert(arrayOfString;4);
    String[][] arrayOfString;5 = { { "\b", "\\b" }, { "\n", "\\n" }, { "\t", "\\t" }, { "\f", "\\f" }, { "\r", "\\r" } };
  }

  public static String[][] APOS_ESCAPE()
  {
    return (String[][])APOS_ESCAPE.clone();
  }

  public static String[][] APOS_UNESCAPE()
  {
    return (String[][])APOS_UNESCAPE.clone();
  }

  public static String[][] BASIC_ESCAPE()
  {
    return (String[][])BASIC_ESCAPE.clone();
  }

  public static String[][] BASIC_UNESCAPE()
  {
    return (String[][])BASIC_UNESCAPE.clone();
  }

  public static String[][] HTML40_EXTENDED_ESCAPE()
  {
    return (String[][])HTML40_EXTENDED_ESCAPE.clone();
  }

  public static String[][] HTML40_EXTENDED_UNESCAPE()
  {
    return (String[][])HTML40_EXTENDED_UNESCAPE.clone();
  }

  public static String[][] ISO8859_1_ESCAPE()
  {
    return (String[][])ISO8859_1_ESCAPE.clone();
  }

  public static String[][] ISO8859_1_UNESCAPE()
  {
    return (String[][])ISO8859_1_UNESCAPE.clone();
  }

  public static String[][] JAVA_CTRL_CHARS_ESCAPE()
  {
    return (String[][])JAVA_CTRL_CHARS_ESCAPE.clone();
  }

  public static String[][] JAVA_CTRL_CHARS_UNESCAPE()
  {
    return (String[][])JAVA_CTRL_CHARS_UNESCAPE.clone();
  }

  public static String[][] invert(String[][] paramArrayOfString)
  {
    String[][] arrayOfString = (String[][])Array.newInstance(String.class, new int[] { paramArrayOfString.length, 2 });
    for (int i = 0; i < paramArrayOfString.length; i++)
    {
      arrayOfString[i][0] = paramArrayOfString[i][1];
      arrayOfString[i][1] = paramArrayOfString[i][0];
    }
    return arrayOfString;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.text.translate.EntityArrays
 * JD-Core Version:    0.6.2
 */