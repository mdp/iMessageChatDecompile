package com.umeng.a.a;

import com.umeng.common.a;
import org.json.JSONObject;

public final class e extends l
  implements g
{
  public String a;
  public String b;
  public int c;
  public long d;
  private final String j = "tag";
  private final String k = "label";
  private final String l = "acc";
  private final String m = "du";

  public final void a(JSONObject paramJSONObject)
  {
    paramJSONObject.put("tag", this.a);
    paramJSONObject.put("acc", this.c);
    if (this.b != null)
      paramJSONObject.put("label", this.b);
    if (this.d > 0L)
      paramJSONObject.put("du", this.d);
    super.a(paramJSONObject);
  }

  public final boolean a()
  {
    if (this.a == null)
    {
      a.b("MobclickAgent", "mTag is not initilized");
      return false;
    }
    if ((this.c <= 0) || (this.c > 10000))
    {
      a.b("MobclickAgent", "mAcc is invalid : " + this.c);
      return false;
    }
    return super.a();
  }

  public final void b(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null);
    while (true)
    {
      return;
      try
      {
        super.b(paramJSONObject);
        this.a = paramJSONObject.getString("tag");
        if (paramJSONObject.has("label"))
          this.b = paramJSONObject.getString("label");
        this.c = paramJSONObject.getInt("acc");
        if (paramJSONObject.has("du"))
        {
          this.d = paramJSONObject.getLong("du");
          return;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.umeng.a.a.e
 * JD-Core Version:    0.6.2
 */