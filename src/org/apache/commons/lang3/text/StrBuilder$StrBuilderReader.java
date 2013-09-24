package org.apache.commons.lang3.text;

import java.io.Reader;

class StrBuilder$StrBuilderReader extends Reader
{
  private int mark;
  private int pos;

  StrBuilder$StrBuilderReader(StrBuilder paramStrBuilder)
  {
  }

  public void close()
  {
  }

  public void mark(int paramInt)
  {
    this.mark = this.pos;
  }

  public boolean markSupported()
  {
    return true;
  }

  public int read()
  {
    if (!ready())
      return -1;
    StrBuilder localStrBuilder = this.this$0;
    int i = this.pos;
    this.pos = (i + 1);
    return localStrBuilder.charAt(i);
  }

  public int read(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    if ((paramInt1 < 0) || (paramInt2 < 0) || (paramInt1 > paramArrayOfChar.length) || (paramInt1 + paramInt2 > paramArrayOfChar.length) || (paramInt1 + paramInt2 < 0))
      throw new IndexOutOfBoundsException();
    if (paramInt2 == 0)
      return 0;
    if (this.pos >= this.this$0.size())
      return -1;
    if (paramInt2 + this.pos > this.this$0.size())
      paramInt2 = this.this$0.size() - this.pos;
    this.this$0.getChars(this.pos, paramInt2 + this.pos, paramArrayOfChar, paramInt1);
    this.pos = (paramInt2 + this.pos);
    return paramInt2;
  }

  public boolean ready()
  {
    return this.pos < this.this$0.size();
  }

  public void reset()
  {
    this.pos = this.mark;
  }

  public long skip(long paramLong)
  {
    if (paramLong + this.pos > this.this$0.size());
    for (long l = this.this$0.size() - this.pos; ; l = paramLong)
    {
      if (l < 0L)
        return 0L;
      this.pos = ((int)(l + this.pos));
      return l;
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.text.StrBuilder.StrBuilderReader
 * JD-Core Version:    0.6.2
 */