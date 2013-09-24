package org.apache.commons.lang3.text;

import java.util.Map;

public abstract class StrLookup
{
  private static final StrLookup NONE_LOOKUP = new StrLookup.MapStrLookup(null);
  private static final StrLookup SYSTEM_PROPERTIES_LOOKUP;

  static
  {
    try
    {
      localObject = new StrLookup.MapStrLookup(System.getProperties());
      SYSTEM_PROPERTIES_LOOKUP = (StrLookup)localObject;
      return;
    }
    catch (SecurityException localSecurityException)
    {
      while (true)
        Object localObject = NONE_LOOKUP;
    }
  }

  public static StrLookup mapLookup(Map paramMap)
  {
    return new StrLookup.MapStrLookup(paramMap);
  }

  public static StrLookup noneLookup()
  {
    return NONE_LOOKUP;
  }

  public static StrLookup systemPropertiesLookup()
  {
    return SYSTEM_PROPERTIES_LOOKUP;
  }

  public abstract String lookup(String paramString);
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.apache.commons.lang3.text.StrLookup
 * JD-Core Version:    0.6.2
 */