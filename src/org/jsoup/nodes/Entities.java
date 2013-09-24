package org.jsoup.nodes;

import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.CharsetEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.MissingResourceException;
import java.util.Properties;
import java.util.Set;
import java.util.regex.Pattern;

public class Entities
{
  private static final Map a;
  private static final Map b;
  private static final Map c;
  private static final Map d;
  private static final Map e;
  private static final Pattern f = Pattern.compile("&(#(x|X)?([0-9a-fA-F]+)|[a-zA-Z]+\\d*);?");
  private static final Pattern g = Pattern.compile("&(#(x|X)?([0-9a-fA-F]+)|[a-zA-Z]+\\d*);");
  private static final Object[][] h;

  static
  {
    Object[][] arrayOfObject; = new Object[5][];
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = "quot";
    arrayOfObject1[1] = Integer.valueOf(34);
    arrayOfObject;[0] = arrayOfObject1;
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = "amp";
    arrayOfObject2[1] = Integer.valueOf(38);
    arrayOfObject;[1] = arrayOfObject2;
    Object[] arrayOfObject3 = new Object[2];
    arrayOfObject3[0] = "apos";
    arrayOfObject3[1] = Integer.valueOf(39);
    arrayOfObject;[2] = arrayOfObject3;
    Object[] arrayOfObject4 = new Object[2];
    arrayOfObject4[0] = "lt";
    arrayOfObject4[1] = Integer.valueOf(60);
    arrayOfObject;[3] = arrayOfObject4;
    Object[] arrayOfObject5 = new Object[2];
    arrayOfObject5[0] = "gt";
    arrayOfObject5[1] = Integer.valueOf(62);
    arrayOfObject;[4] = arrayOfObject5;
    h = arrayOfObject;;
    b = new HashMap();
    Map localMap1 = d("entities-base.properties");
    c = localMap1;
    d = a(localMap1);
    Map localMap2 = d("entities-full.properties");
    a = localMap2;
    e = a(localMap2);
    for (Object[] arrayOfObject6 : h)
    {
      Character localCharacter = Character.valueOf((char)((Integer)arrayOfObject6[1]).intValue());
      b.put(localCharacter, (String)arrayOfObject6[0]);
    }
  }

  static String a(String paramString, Document.OutputSettings paramOutputSettings)
  {
    CharsetEncoder localCharsetEncoder = paramOutputSettings.b();
    Entities.EscapeMode localEscapeMode = paramOutputSettings.a();
    StringBuilder localStringBuilder = new StringBuilder(2 * paramString.length());
    Map localMap = localEscapeMode.a();
    int i = paramString.length();
    int j = 0;
    if (j < i)
    {
      int k = paramString.codePointAt(j);
      char c1;
      if (k < 65536)
      {
        c1 = (char)k;
        if (localMap.containsKey(Character.valueOf(c1)))
          localStringBuilder.append('&').append((String)localMap.get(Character.valueOf(c1))).append(';');
      }
      while (true)
      {
        j += Character.charCount(k);
        break;
        if (localCharsetEncoder.canEncode(c1))
        {
          localStringBuilder.append(c1);
        }
        else
        {
          localStringBuilder.append("&#x").append(Integer.toHexString(k)).append(';');
          continue;
          String str = new String(Character.toChars(k));
          if (localCharsetEncoder.canEncode(str))
            localStringBuilder.append(str);
          else
            localStringBuilder.append("&#x").append(Integer.toHexString(k)).append(';');
        }
      }
    }
    return localStringBuilder.toString();
  }

  private static Map a(Map paramMap)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Character localCharacter = (Character)localEntry.getValue();
      String str = (String)localEntry.getKey();
      if (localHashMap.containsKey(localCharacter))
      {
        if (str.toLowerCase().equals(str))
          localHashMap.put(localCharacter, str);
      }
      else
        localHashMap.put(localCharacter, str);
    }
    return localHashMap;
  }

  public static boolean a(String paramString)
  {
    return a.containsKey(paramString);
  }

  public static boolean b(String paramString)
  {
    return c.containsKey(paramString);
  }

  public static Character c(String paramString)
  {
    return (Character)a.get(paramString);
  }

  private static Map d(String paramString)
  {
    Properties localProperties = new Properties();
    HashMap localHashMap = new HashMap();
    try
    {
      InputStream localInputStream = Entities.class.getResourceAsStream(paramString);
      localProperties.load(localInputStream);
      localInputStream.close();
      Iterator localIterator = localProperties.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        Character localCharacter = Character.valueOf((char)Integer.parseInt((String)localEntry.getValue(), 16));
        localHashMap.put((String)localEntry.getKey(), localCharacter);
      }
    }
    catch (IOException localIOException)
    {
      throw new MissingResourceException("Error loading entities resource: " + localIOException.getMessage(), "Entities", paramString);
    }
    return localHashMap;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     org.jsoup.nodes.Entities
 * JD-Core Version:    0.6.2
 */