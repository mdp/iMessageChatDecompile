package com.umeng.a.a;

import com.umeng.common.a;
import com.umeng.common.util.b;
import org.json.JSONObject;

public class n
{
  public String f;
  public String g;
  protected final String h = "date";
  protected final String i = "time";

  public n()
  {
    String str = b.a();
    this.f = str.split(" ")[0];
    this.g = str.split(" ")[1];
  }

  public void a(JSONObject paramJSONObject)
  {
    paramJSONObject.put("date", this.f);
    paramJSONObject.put("time", this.g);
  }

  public boolean a()
  {
    if ((this.f == null) || (this.g == null))
    {
      a.b("MobclickAgent", "Date or Time is not initialized");
      return false;
    }
    return true;
  }

  public void b(JSONObject paramJSONObject)
  {
    this.f = paramJSONObject.getString("date");
    this.g = paramJSONObject.getString("time");
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.umeng.a.a.n
 * JD-Core Version:    0.6.2
 */