package org.apache.commons.lang3.text;

import java.util.Map;

class StrLookup$MapStrLookup extends StrLookup
{
  private final Map map;

  StrLookup$MapStrLookup(Map paramMap)
  {
    this.map = paramMap;
  }

  public String lookup(String paramString)
  {
    if (this.map == null);
    Object localObject;
    do
    {
      return null;
      localObject = this.map.get(paramString);
    }
    while (localObject == null);
    return localObject.toString();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.text.StrLookup.MapStrLookup
 * JD-Core Version:    0.6.2
 */