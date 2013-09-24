package com.umeng.a.a;

import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

public final class b
  implements g
{
  public String a;
  public ArrayList b = new ArrayList();

  public b()
  {
  }

  public b(String paramString, a parama)
  {
    this.a = paramString;
    this.b.add(parama);
  }

  public final void a(b paramb)
  {
    this.b.addAll(paramb.b);
  }

  public final void a(JSONObject paramJSONObject)
  {
    JSONArray localJSONArray = new JSONArray();
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
      localJSONArray.put(new c(this, (a)localIterator.next()));
    paramJSONObject.put(this.a, localJSONArray);
  }

  public final boolean a()
  {
    if ((this.a == null) || (this.b.size() == 0))
      return false;
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
      if (!((a)localIterator.next()).a())
        return false;
    return true;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.umeng.a.a.b
 * JD-Core Version:    0.6.2
 */