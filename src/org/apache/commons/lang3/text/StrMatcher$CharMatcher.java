package org.apache.commons.lang3.text;

final class StrMatcher$CharMatcher extends StrMatcher
{
  private final char ch;

  StrMatcher$CharMatcher(char paramChar)
  {
    this.ch = paramChar;
  }

  public final int isMatch(char[] paramArrayOfChar, int paramInt1, int paramInt2, int paramInt3)
  {
    if (this.ch == paramArrayOfChar[paramInt1])
      return 1;
    return 0;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.text.StrMatcher.CharMatcher
 * JD-Core Version:    0.6.2
 */