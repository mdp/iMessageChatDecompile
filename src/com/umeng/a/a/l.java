package com.umeng.a.a;

import com.umeng.common.a;
import org.json.JSONObject;

public class l extends n
{
  public String e;

  public void a(JSONObject paramJSONObject)
  {
    super.a(paramJSONObject);
    paramJSONObject.put("session_id", this.e);
  }

  public boolean a()
  {
    if (this.e == null)
    {
      a.b("MobclickAgent", "Session id is not initialized");
      return false;
    }
    return super.a();
  }

  public void b(JSONObject paramJSONObject)
  {
    super.b(paramJSONObject);
    this.e = paramJSONObject.getString("session_id");
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.umeng.a.a.l
 * JD-Core Version:    0.6.2
 */