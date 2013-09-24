package org.apache.commons.lang3.text;

final class StrMatcher$StringMatcher extends StrMatcher
{
  private final char[] chars;

  StrMatcher$StringMatcher(String paramString)
  {
    this.chars = paramString.toCharArray();
  }

  public final int isMatch(char[] paramArrayOfChar, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = this.chars.length;
    if (paramInt1 + i > paramInt3)
      return 0;
    int j = 0;
    while (true)
    {
      if (j >= this.chars.length)
        break label53;
      if (this.chars[j] != paramArrayOfChar[paramInt1])
        break;
      j++;
      paramInt1++;
    }
    label53: return i;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.text.StrMatcher.StringMatcher
 * JD-Core Version:    0.6.2
 */