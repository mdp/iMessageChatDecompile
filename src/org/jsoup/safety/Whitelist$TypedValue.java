package org.jsoup.safety;

import org.jsoup.helper.Validate;

abstract class Whitelist$TypedValue
{
  private String a;

  Whitelist$TypedValue(String paramString)
  {
    Validate.a(paramString);
    this.a = paramString;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    TypedValue localTypedValue;
    do
    {
      do
      {
        return true;
        if (paramObject == null)
          return false;
        if (getClass() != paramObject.getClass())
          return false;
        localTypedValue = (TypedValue)paramObject;
        if (this.a != null)
          break;
      }
      while (localTypedValue.a == null);
      return false;
    }
    while (this.a.equals(localTypedValue.a));
    return false;
  }

  public int hashCode()
  {
    if (this.a == null);
    for (int i = 0; ; i = this.a.hashCode())
      return i + 31;
  }

  public String toString()
  {
    return this.a;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.safety.Whitelist.TypedValue
 * JD-Core Version:    0.6.2
 */