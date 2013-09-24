package com.umeng.a.a;

import com.umeng.common.a;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import org.json.JSONObject;

public final class d extends n
  implements g
{
  public String a;
  private final String b = "context";

  public d()
  {
  }

  public d(Throwable paramThrowable)
  {
    this.a = a(paramThrowable);
  }

  private static String a(Throwable paramThrowable)
  {
    String str = null;
    if (paramThrowable == null)
      return null;
    try
    {
      StringWriter localStringWriter = new StringWriter();
      PrintWriter localPrintWriter = new PrintWriter(localStringWriter);
      paramThrowable.printStackTrace(localPrintWriter);
      for (Throwable localThrowable = paramThrowable.getCause(); ; localThrowable = localThrowable.getCause())
      {
        str = null;
        if (localThrowable == null)
          break;
        localThrowable.printStackTrace(localPrintWriter);
      }
      str = localStringWriter.toString();
      localPrintWriter.close();
      localStringWriter.close();
      return str;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return str;
  }

  public final void a(JSONObject paramJSONObject)
  {
    paramJSONObject.put("date", this.f);
    paramJSONObject.put("time", this.g);
    paramJSONObject.put("context", this.a);
  }

  public final boolean a()
  {
    if (this.a == null)
    {
      a.b("MobclickAgent", "mContent is not initialized");
      return false;
    }
    return super.a();
  }

  public final void b(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null)
      return;
    try
    {
      this.f = paramJSONObject.getString("date");
      this.g = paramJSONObject.getString("time");
      this.a = paramJSONObject.getString("context");
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.umeng.a.a.d
 * JD-Core Version:    0.6.2
 */