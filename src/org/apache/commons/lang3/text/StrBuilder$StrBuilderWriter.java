package org.apache.commons.lang3.text;

import java.io.Writer;

class StrBuilder$StrBuilderWriter extends Writer
{
  StrBuilder$StrBuilderWriter(StrBuilder paramStrBuilder)
  {
  }

  public void close()
  {
  }

  public void flush()
  {
  }

  public void write(int paramInt)
  {
    this.this$0.append((char)paramInt);
  }

  public void write(String paramString)
  {
    this.this$0.append(paramString);
  }

  public void write(String paramString, int paramInt1, int paramInt2)
  {
    this.this$0.append(paramString, paramInt1, paramInt2);
  }

  public void write(char[] paramArrayOfChar)
  {
    this.this$0.append(paramArrayOfChar);
  }

  public void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    this.this$0.append(paramArrayOfChar, paramInt1, paramInt2);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.text.StrBuilder.StrBuilderWriter
 * JD-Core Version:    0.6.2
 */