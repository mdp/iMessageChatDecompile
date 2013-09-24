package org.apache.commons.lang3.text.translate;

import java.io.Writer;
import java.util.HashMap;

public class LookupTranslator extends CharSequenceTranslator
{
  private final int longest;
  private final HashMap lookupMap = new HashMap();
  private final int shortest;

  public LookupTranslator(CharSequence[][] paramArrayOfCharSequence)
  {
    int i = 2147483647;
    int j;
    int i1;
    if (paramArrayOfCharSequence != null)
    {
      int k = paramArrayOfCharSequence.length;
      int m = 0;
      j = 0;
      int n = i;
      while (m < k)
      {
        CharSequence[] arrayOfCharSequence = paramArrayOfCharSequence[m];
        this.lookupMap.put(arrayOfCharSequence[0], arrayOfCharSequence[1]);
        i1 = arrayOfCharSequence[0].length();
        if (i1 < n)
          n = i1;
        if (i1 <= j)
          break label114;
        m++;
        j = i1;
      }
      i = n;
    }
    while (true)
    {
      this.shortest = i;
      this.longest = j;
      return;
      label114: i1 = j;
      break;
      j = 0;
    }
  }

  public int translate(CharSequence paramCharSequence, int paramInt, Writer paramWriter)
  {
    int i = this.longest;
    int j;
    if (paramInt + this.longest > paramCharSequence.length())
      j = paramCharSequence.length() - paramInt;
    while (true)
      if (j >= this.shortest)
      {
        CharSequence localCharSequence1 = paramCharSequence.subSequence(paramInt, paramInt + j);
        CharSequence localCharSequence2 = (CharSequence)this.lookupMap.get(localCharSequence1);
        if (localCharSequence2 != null)
        {
          paramWriter.write(localCharSequence2.toString());
          return j;
        }
        j--;
      }
      else
      {
        return 0;
        j = i;
      }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.text.translate.LookupTranslator
 * JD-Core Version:    0.6.2
 */