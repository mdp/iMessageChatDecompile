package com.umeng.a.a;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONObject;

public final class a
  implements g
{
  public final HashMap a;
  public String b;
  public long c = 0L;
  public long d = 0L;
  private final String e = "id";
  private final String f = "ts";
  private final String g = "du";

  public a()
  {
    this.a = new HashMap();
  }

  public a(String paramString, HashMap paramHashMap)
  {
    this.b = paramString;
    this.a = a(paramHashMap);
    this.d = -1L;
    this.c = (System.currentTimeMillis() / 1000L);
  }

  private static HashMap a(HashMap paramHashMap)
  {
    int i = 0;
    if (paramHashMap.size() > 10)
    {
      int j = -10 + paramHashMap.size();
      String[] arrayOfString = new String[j];
      Iterator localIterator = paramHashMap.keySet().iterator();
      for (int k = 0; localIterator.hasNext(); k++)
      {
        String str = (String)localIterator.next();
        if (k >= j)
          break;
        arrayOfString[k] = str;
      }
      int m = arrayOfString.length;
      while (i < m)
      {
        paramHashMap.remove(arrayOfString[i]);
        i++;
      }
    }
    return paramHashMap;
  }

  public final void a(JSONObject paramJSONObject)
  {
    try
    {
      paramJSONObject.put("id", this.b);
      paramJSONObject.put("ts", this.c);
      if (this.d > 0L)
        paramJSONObject.put("du", this.d);
      Iterator localIterator = this.a.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        paramJSONObject.put((String)localEntry.getKey(), localEntry.getValue());
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public final boolean a()
  {
    if ((this.b == null) || (this.c <= 0L))
    {
      com.umeng.common.a.b("MobclickAgent", "mId or mTs is not initialized");
      return false;
    }
    if (this.a.isEmpty())
    {
      com.umeng.common.a.b("MobclickAgent", "mCustomKV is not initialized");
      return false;
    }
    return true;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.umeng.a.a.a
 * JD-Core Version:    0.6.2
 */