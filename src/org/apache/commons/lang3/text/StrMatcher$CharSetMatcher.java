package org.apache.commons.lang3.text;

import java.util.Arrays;

final class StrMatcher$CharSetMatcher extends StrMatcher
{
  private final char[] chars;

  StrMatcher$CharSetMatcher(char[] paramArrayOfChar)
  {
    this.chars = ((char[])paramArrayOfChar.clone());
    Arrays.sort(this.chars);
  }

  public final int isMatch(char[] paramArrayOfChar, int paramInt1, int paramInt2, int paramInt3)
  {
    if (Arrays.binarySearch(this.chars, paramArrayOfChar[paramInt1]) >= 0)
      return 1;
    return 0;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.text.StrMatcher.CharSetMatcher
 * JD-Core Version:    0.6.2
 */