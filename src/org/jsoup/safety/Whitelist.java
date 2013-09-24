package org.jsoup.safety;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Element;

public class Whitelist
{
  private Set a = new HashSet();
  private Map b = new HashMap();
  private Map c = new HashMap();
  private Map d = new HashMap();
  private boolean e = false;

  protected final boolean a(String paramString)
  {
    return this.a.contains(Whitelist.TagName.a(paramString));
  }

  final boolean a(String paramString, Element paramElement, Attribute paramAttribute)
  {
    Whitelist.TagName localTagName = Whitelist.TagName.a(paramString);
    Whitelist.AttributeKey localAttributeKey = Whitelist.AttributeKey.a(paramAttribute.a());
    if ((this.b.containsKey(localTagName)) && (((Set)this.b.get(localTagName)).contains(localAttributeKey)))
    {
      if (this.d.containsKey(localTagName))
      {
        Map localMap = (Map)this.d.get(localTagName);
        if (localMap.containsKey(localAttributeKey))
        {
          Set localSet = (Set)localMap.get(localAttributeKey);
          String str1 = paramElement.f(paramAttribute.a());
          if (str1.length() == 0)
            str1 = paramAttribute.b();
          if (!this.e)
            paramAttribute.a(str1);
          Iterator localIterator = localSet.iterator();
          String str2;
          do
          {
            if (!localIterator.hasNext())
              break;
            Whitelist.Protocol localProtocol = (Whitelist.Protocol)localIterator.next();
            str2 = localProtocol.toString() + ":";
          }
          while (!str1.toLowerCase().startsWith(str2));
        }
        for (int i = 1; i != 0; i = 0)
          return true;
        return false;
      }
      return true;
    }
    return (!paramString.equals(":all")) && (a(":all", paramElement, paramAttribute));
  }

  final Attributes b(String paramString)
  {
    Attributes localAttributes = new Attributes();
    Whitelist.TagName localTagName = Whitelist.TagName.a(paramString);
    if (this.c.containsKey(localTagName))
    {
      Iterator localIterator = ((Map)this.c.get(localTagName)).entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        localAttributes.a(((Whitelist.AttributeKey)localEntry.getKey()).toString(), ((Whitelist.AttributeValue)localEntry.getValue()).toString());
      }
    }
    return localAttributes;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.safety.Whitelist
 * JD-Core Version:    0.6.2
 */