package com.umeng.a.a;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

public final class i
  implements g
{
  public ArrayList a = new ArrayList();
  public ArrayList b = new ArrayList();
  public ArrayList c = new ArrayList();
  public ArrayList d = new ArrayList();
  public ArrayList e = new ArrayList();
  private final String f = "launch";
  private final String g = "terminate";
  private final String h = "error";
  private final String i = "event";
  private final String j = "ekv";

  private JSONArray a(ArrayList paramArrayList)
  {
    JSONArray localJSONArray1;
    Object localObject1;
    Object localObject2;
    if (paramArrayList.size() > 0)
    {
      localJSONArray1 = new JSONArray();
      Iterator localIterator = paramArrayList.iterator();
      localObject1 = null;
      while (true)
        if (localIterator.hasNext())
        {
          g localg = (g)localIterator.next();
          try
          {
            j localj = new j(this, localg);
            localObject2 = localj;
            if (localObject2 != null)
            {
              localJSONArray1.put(localObject2);
              localObject1 = localObject2;
            }
          }
          catch (Exception localException)
          {
            while (true)
            {
              com.umeng.common.a.a("MobclickAgent", "Fail to write json ...", localException);
              localObject2 = localObject1;
            }
          }
        }
    }
    for (JSONArray localJSONArray2 = localJSONArray1; ; localJSONArray2 = null)
    {
      if ((localJSONArray2 == null) || (localJSONArray2.length() == 0))
        return null;
      return localJSONArray2;
      localObject1 = localObject2;
      break;
    }
  }

  public final void a(d paramd)
  {
    if ((paramd != null) && (paramd.a()))
      this.c.add(paramd);
  }

  public final void a(h paramh)
  {
    if ((paramh != null) && (paramh.a()))
      this.a.add(paramh);
  }

  public final void a(i parami)
  {
    this.a.addAll(parami.a);
    this.b.addAll(parami.b);
    this.d.addAll(parami.d);
    this.c.addAll(parami.c);
    ArrayList localArrayList = parami.e;
    if (!localArrayList.isEmpty())
    {
      HashMap localHashMap = new HashMap();
      Iterator localIterator1 = localArrayList.iterator();
      while (localIterator1.hasNext())
      {
        b localb3 = (b)localIterator1.next();
        if (localHashMap.containsKey(localb3.a))
          ((b)localHashMap.get(localb3.a)).a(localb3);
        else
          localHashMap.put(localb3.a, localb3);
      }
      Iterator localIterator2 = this.e.iterator();
      while (localIterator2.hasNext())
      {
        b localb2 = (b)localIterator2.next();
        if (localHashMap.containsKey(localb2.a))
          ((b)localHashMap.get(localb2.a)).a(localb2);
        else
          localHashMap.put(localb2.a, localb2);
      }
      this.e.clear();
      Iterator localIterator3 = localHashMap.values().iterator();
      while (localIterator3.hasNext())
      {
        b localb1 = (b)localIterator3.next();
        this.e.add(localb1);
      }
    }
  }

  public final void a(m paramm)
  {
    if ((paramm != null) && (paramm.a()))
      this.b.add(paramm);
  }

  public final void a(JSONObject paramJSONObject)
  {
    JSONArray localJSONArray1 = a(this.a);
    JSONArray localJSONArray2 = a(this.b);
    JSONArray localJSONArray3 = a(this.d);
    JSONArray localJSONArray4 = a(this.c);
    JSONArray localJSONArray5 = a(this.e);
    if (localJSONArray1 != null)
      paramJSONObject.put("launch", localJSONArray1);
    if (localJSONArray2 != null)
      paramJSONObject.put("terminate", localJSONArray2);
    if (localJSONArray3 != null)
      paramJSONObject.put("event", localJSONArray3);
    if (localJSONArray4 != null)
      paramJSONObject.put("error", localJSONArray4);
    if (localJSONArray5 != null)
      paramJSONObject.put("ekv", localJSONArray5);
  }

  public final boolean a()
  {
    Iterator localIterator1 = this.a.iterator();
    while (localIterator1.hasNext())
      if (!((g)localIterator1.next()).a())
        return false;
    Iterator localIterator2 = this.b.iterator();
    while (localIterator2.hasNext())
      if (!((g)localIterator2.next()).a())
        return false;
    Iterator localIterator3 = this.d.iterator();
    while (localIterator3.hasNext())
      if (!((g)localIterator3.next()).a())
        return false;
    Iterator localIterator4 = this.e.iterator();
    while (localIterator4.hasNext())
      if (!((g)localIterator4.next()).a())
        return false;
    Iterator localIterator5 = this.c.iterator();
    while (localIterator5.hasNext())
      if (!((g)localIterator5.next()).a())
        return false;
    return (this.a.size() != 0) || (this.b.size() != 0) || (this.d.size() != 0) || (this.e.size() != 0) || (this.c.size() != 0);
  }

  public final int b()
  {
    Iterator localIterator = this.e.iterator();
    int k = 0;
    while (localIterator.hasNext())
      k += ((b)localIterator.next()).b.size();
    return k + this.a.size() + this.b.size() + this.d.size() + this.c.size();
  }

  public final void b(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null)
      return;
    while (true)
    {
      int i1;
      int m;
      try
      {
        if (paramJSONObject.has("launch"))
        {
          JSONArray localJSONArray6 = paramJSONObject.getJSONArray("launch");
          int i3 = 0;
          if (i3 < localJSONArray6.length())
          {
            h localh = new h();
            localh.b(localJSONArray6.getJSONObject(i3));
            a(localh);
            i3++;
            continue;
          }
        }
        if (paramJSONObject.has("terminate"))
        {
          JSONArray localJSONArray5 = paramJSONObject.getJSONArray("terminate");
          int i2 = 0;
          if (i2 < localJSONArray5.length())
          {
            m localm = new m();
            localm.b(localJSONArray5.getJSONObject(i2));
            a(localm);
            i2++;
            continue;
          }
        }
        if (paramJSONObject.has("event"))
        {
          JSONArray localJSONArray4 = paramJSONObject.getJSONArray("event");
          i1 = 0;
          if (i1 < localJSONArray4.length())
          {
            e locale = new e();
            locale.b(localJSONArray4.getJSONObject(i1));
            if (!locale.a())
              break label573;
            this.d.add(locale);
            break label573;
          }
        }
        if (paramJSONObject.has("ekv"))
        {
          JSONArray localJSONArray2 = paramJSONObject.getJSONArray("ekv");
          m = 0;
          if (m < localJSONArray2.length())
          {
            b localb = new b();
            JSONObject localJSONObject1 = localJSONArray2.getJSONObject(m);
            if (localJSONObject1 != null)
            {
              if (localJSONObject1.length() != 0)
                localb.a = ((String)localJSONObject1.keys().next());
              if (localb.a != null)
              {
                JSONArray localJSONArray3 = localJSONObject1.getJSONArray(localb.a);
                int n = 0;
                if (n < localJSONArray3.length())
                {
                  a locala = new a();
                  JSONObject localJSONObject2 = localJSONArray3.getJSONObject(n);
                  if (localJSONObject2 != null)
                    try
                    {
                      locala.b = localJSONObject2.getString("id");
                      locala.c = localJSONObject2.getLong("ts");
                      if (localJSONObject2.has("du"))
                        locala.d = localJSONObject2.getLong("du");
                      localJSONObject2.remove("id");
                      localJSONObject2.remove("ts");
                      localJSONObject2.remove("du");
                      Iterator localIterator = localJSONObject2.keys();
                      if (localIterator.hasNext())
                      {
                        String str = (String)localIterator.next();
                        locala.a.put(str, localJSONObject2.getString(str));
                        continue;
                      }
                    }
                    catch (Exception localException2)
                    {
                      localException2.printStackTrace();
                    }
                  localb.b.add(locala);
                  n++;
                  continue;
                }
              }
            }
            if (!localb.a())
              break label579;
            this.e.add(localb);
            break label579;
          }
        }
        if (!paramJSONObject.has("error"))
          break;
        JSONArray localJSONArray1 = paramJSONObject.getJSONArray("error");
        int k = 0;
        if (k >= localJSONArray1.length())
          break;
        d locald = new d();
        locald.b(localJSONArray1.getJSONObject(k));
        a(locald);
        k++;
        continue;
      }
      catch (Exception localException1)
      {
        com.umeng.common.a.b("MobclickAgent", "merge log body eror", localException1);
        return;
      }
      label573: i1++;
      continue;
      label579: m++;
    }
  }

  public final void c()
  {
    this.a.clear();
    this.b.clear();
    this.d.clear();
    this.e.clear();
    this.c.clear();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.umeng.a.a.i
 * JD-Core Version:    0.6.2
 */