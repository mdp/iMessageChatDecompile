package org.apache.commons.lang3;

import java.io.Serializable;
import java.util.Iterator;

final class CharRange
  implements Serializable, Iterable
{
  private static final long serialVersionUID = 8270183163158333422L;
  private final char end;
  private transient String iToString;
  private final boolean negated;
  private final char start;

  private CharRange(char paramChar1, char paramChar2, boolean paramBoolean)
  {
    if (paramChar1 > paramChar2);
    while (true)
    {
      this.start = paramChar2;
      this.end = paramChar1;
      this.negated = paramBoolean;
      return;
      char c = paramChar2;
      paramChar2 = paramChar1;
      paramChar1 = c;
    }
  }

  public static CharRange is(char paramChar)
  {
    return new CharRange(paramChar, paramChar, false);
  }

  public static CharRange isIn(char paramChar1, char paramChar2)
  {
    return new CharRange(paramChar1, paramChar2, false);
  }

  public static CharRange isNot(char paramChar)
  {
    return new CharRange(paramChar, paramChar, true);
  }

  public static CharRange isNotIn(char paramChar1, char paramChar2)
  {
    return new CharRange(paramChar1, paramChar2, true);
  }

  public final boolean contains(char paramChar)
  {
    if ((paramChar >= this.start) && (paramChar <= this.end));
    for (int i = 1; i != this.negated; i = 0)
      return true;
    return false;
  }

  public final boolean contains(CharRange paramCharRange)
  {
    if (paramCharRange == null)
      throw new IllegalArgumentException("The Range must not be null");
    if (this.negated)
      if (paramCharRange.negated)
        if ((this.start < paramCharRange.start) || (this.end > paramCharRange.end));
    do
    {
      do
      {
        do
        {
          return true;
          return false;
        }
        while ((paramCharRange.end < this.start) || (paramCharRange.start > this.end));
        return false;
        if (!paramCharRange.negated)
          break;
      }
      while ((this.start == 0) && (this.end == 65535));
      return false;
    }
    while ((this.start <= paramCharRange.start) && (this.end >= paramCharRange.end));
    return false;
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == this);
    CharRange localCharRange;
    do
    {
      return true;
      if (!(paramObject instanceof CharRange))
        return false;
      localCharRange = (CharRange)paramObject;
    }
    while ((this.start == localCharRange.start) && (this.end == localCharRange.end) && (this.negated == localCharRange.negated));
    return false;
  }

  public final char getEnd()
  {
    return this.end;
  }

  public final char getStart()
  {
    return this.start;
  }

  public final int hashCode()
  {
    int i = 'S' + this.start + '\007' * this.end;
    if (this.negated);
    for (int j = 1; ; j = 0)
      return j + i;
  }

  public final boolean isNegated()
  {
    return this.negated;
  }

  public final Iterator iterator()
  {
    return new CharRange.CharacterIterator(this, null);
  }

  public final String toString()
  {
    if (this.iToString == null)
    {
      StringBuilder localStringBuilder = new StringBuilder(4);
      if (isNegated())
        localStringBuilder.append('^');
      localStringBuilder.append(this.start);
      if (this.start != this.end)
      {
        localStringBuilder.append('-');
        localStringBuilder.append(this.end);
      }
      this.iToString = localStringBuilder.toString();
    }
    return this.iToString;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.CharRange
 * JD-Core Version:    0.6.2
 */