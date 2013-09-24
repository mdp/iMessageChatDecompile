package org.apache.commons.lang3.text.translate;

public enum NumericEntityUnescaper$OPTION
{
  static
  {
    semiColonOptional = new OPTION("semiColonOptional", 1);
    errorIfNoSemiColon = new OPTION("errorIfNoSemiColon", 2);
    OPTION[] arrayOfOPTION = new OPTION[3];
    arrayOfOPTION[0] = semiColonRequired;
    arrayOfOPTION[1] = semiColonOptional;
    arrayOfOPTION[2] = errorIfNoSemiColon;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.text.translate.NumericEntityUnescaper.OPTION
 * JD-Core Version:    0.6.2
 */