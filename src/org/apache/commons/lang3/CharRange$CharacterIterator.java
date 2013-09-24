package org.apache.commons.lang3;

import java.util.Iterator;
import java.util.NoSuchElementException;

class CharRange$CharacterIterator
  implements Iterator
{
  private char current;
  private boolean hasNext;
  private final CharRange range;

  private CharRange$CharacterIterator(CharRange paramCharRange)
  {
    this.range = paramCharRange;
    this.hasNext = true;
    if (CharRange.access$100(this.range))
    {
      if (CharRange.access$200(this.range) == 0)
      {
        if (CharRange.access$300(this.range) == 65535)
        {
          this.hasNext = false;
          return;
        }
        this.current = ((char)('\001' + CharRange.access$300(this.range)));
        return;
      }
      this.current = '\000';
      return;
    }
    this.current = CharRange.access$200(this.range);
  }

  private void prepareNext()
  {
    if (CharRange.access$100(this.range))
    {
      if (this.current != 65535)
        if ('\001' + this.current == CharRange.access$200(this.range))
        {
          if (CharRange.access$300(this.range) != 65535)
            this.current = ((char)('\001' + CharRange.access$300(this.range)));
        }
        else
          this.current = ((char)('\001' + this.current));
    }
    else if (this.current < CharRange.access$300(this.range))
    {
      this.current = ((char)('\001' + this.current));
      return;
    }
    this.hasNext = false;
  }

  public boolean hasNext()
  {
    return this.hasNext;
  }

  public Character next()
  {
    if (!this.hasNext)
      throw new NoSuchElementException();
    char c = this.current;
    prepareNext();
    return Character.valueOf(c);
  }

  public void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.CharRange.CharacterIterator
 * JD-Core Version:    0.6.2
 */