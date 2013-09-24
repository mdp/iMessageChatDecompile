package org.apache.commons.lang3.text;

import java.util.List;

class StrBuilder$StrBuilderTokenizer extends StrTokenizer
{
  StrBuilder$StrBuilderTokenizer(StrBuilder paramStrBuilder)
  {
  }

  public String getContent()
  {
    String str = super.getContent();
    if (str == null)
      str = this.this$0.toString();
    return str;
  }

  protected List tokenize(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    if (paramArrayOfChar == null)
      return super.tokenize(this.this$0.buffer, 0, this.this$0.size());
    return super.tokenize(paramArrayOfChar, paramInt1, paramInt2);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.text.StrBuilder.StrBuilderTokenizer
 * JD-Core Version:    0.6.2
 */