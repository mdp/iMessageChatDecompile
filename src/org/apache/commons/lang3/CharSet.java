package org.apache.commons.lang3;

import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class CharSet
  implements Serializable
{
  public static final CharSet ASCII_ALPHA;
  public static final CharSet ASCII_ALPHA_LOWER;
  public static final CharSet ASCII_ALPHA_UPPER;
  public static final CharSet ASCII_NUMERIC;
  protected static final Map COMMON;
  public static final CharSet EMPTY = new CharSet(new String[] { null });
  private static final long serialVersionUID = 5947847346149275958L;
  private final Set set = Collections.synchronizedSet(new HashSet());

  static
  {
    ASCII_ALPHA = new CharSet(new String[] { "a-zA-Z" });
    ASCII_ALPHA_LOWER = new CharSet(new String[] { "a-z" });
    ASCII_ALPHA_UPPER = new CharSet(new String[] { "A-Z" });
    ASCII_NUMERIC = new CharSet(new String[] { "0-9" });
    Map localMap = Collections.synchronizedMap(new HashMap());
    COMMON = localMap;
    localMap.put(null, EMPTY);
    COMMON.put("", EMPTY);
    COMMON.put("a-zA-Z", ASCII_ALPHA);
    COMMON.put("A-Za-z", ASCII_ALPHA);
    COMMON.put("a-z", ASCII_ALPHA_LOWER);
    COMMON.put("A-Z", ASCII_ALPHA_UPPER);
    COMMON.put("0-9", ASCII_NUMERIC);
  }

  protected CharSet(String[] paramArrayOfString)
  {
    int i = paramArrayOfString.length;
    for (int j = 0; j < i; j++)
      add(paramArrayOfString[j]);
  }

  public static CharSet getInstance(String[] paramArrayOfString)
  {
    CharSet localCharSet;
    if (paramArrayOfString == null)
      localCharSet = null;
    do
    {
      return localCharSet;
      if (paramArrayOfString.length != 1)
        break;
      localCharSet = (CharSet)COMMON.get(paramArrayOfString[0]);
    }
    while (localCharSet != null);
    return new CharSet(paramArrayOfString);
  }

  protected void add(String paramString)
  {
    if (paramString == null);
    while (true)
    {
      return;
      int i = paramString.length();
      int j = 0;
      while (j < i)
      {
        int k = i - j;
        if ((k >= 4) && (paramString.charAt(j) == '^') && (paramString.charAt(j + 2) == '-'))
        {
          this.set.add(CharRange.isNotIn(paramString.charAt(j + 1), paramString.charAt(j + 3)));
          j += 4;
        }
        else if ((k >= 3) && (paramString.charAt(j + 1) == '-'))
        {
          this.set.add(CharRange.isIn(paramString.charAt(j), paramString.charAt(j + 2)));
          j += 3;
        }
        else if ((k >= 2) && (paramString.charAt(j) == '^'))
        {
          this.set.add(CharRange.isNot(paramString.charAt(j + 1)));
          j += 2;
        }
        else
        {
          this.set.add(CharRange.is(paramString.charAt(j)));
          j++;
        }
      }
    }
  }

  public boolean contains(char paramChar)
  {
    Iterator localIterator = this.set.iterator();
    while (localIterator.hasNext())
      if (((CharRange)localIterator.next()).contains(paramChar))
        return true;
    return false;
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == this)
      return true;
    if (!(paramObject instanceof CharSet))
      return false;
    CharSet localCharSet = (CharSet)paramObject;
    return this.set.equals(localCharSet.set);
  }

  CharRange[] getCharRanges()
  {
    return (CharRange[])this.set.toArray(new CharRange[this.set.size()]);
  }

  public int hashCode()
  {
    return 89 + this.set.hashCode();
  }

  public String toString()
  {
    return this.set.toString();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.CharSet
 * JD-Core Version:    0.6.2
 */