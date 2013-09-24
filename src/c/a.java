package c;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class a extends Thread
{
  private Context a;
  private String b;
  private String c;
  private String d = "";
  private String e = "";
  private String f = "";
  private String g;
  private String h;
  private String i;
  private String j;
  private boolean k = false;
  private Handler l;

  public a(Context paramContext, Handler paramHandler)
  {
    this.a = paramContext;
    this.l = paramHandler;
  }

  private static long a(String paramString)
  {
    int m = paramString.indexOf(".");
    long l1 = Integer.parseInt(paramString.substring(0, m));
    int n = paramString.indexOf(".", m + 1);
    long l2 = Integer.parseInt(paramString.substring(m + 1, n));
    return Integer.parseInt(paramString.substring(n + 1)) + (l1 * 1000000L + 1000L * l2);
  }

  public final void run()
  {
    String str3;
    try
    {
      String str1 = this.a.getString(2131165185);
      StringBuilder localStringBuilder = new StringBuilder();
      DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
      HttpParams localHttpParams = localDefaultHttpClient.getParams();
      HttpConnectionParams.setConnectionTimeout(localHttpParams, 3000);
      HttpConnectionParams.setSoTimeout(localHttpParams, 5000);
      HttpEntity localHttpEntity = localDefaultHttpClient.execute(new HttpGet(str1)).getEntity();
      BufferedReader localBufferedReader;
      if (localHttpEntity != null)
        localBufferedReader = new BufferedReader(new InputStreamReader(localHttpEntity.getContent(), "GB2312"), 8192);
      while (true)
      {
        String str2 = localBufferedReader.readLine();
        if (str2 == null)
        {
          localBufferedReader.close();
          str3 = localStringBuilder.toString();
          if (str3 != null)
            break;
          Message localMessage2 = this.l.obtainMessage();
          localMessage2.what = 11;
          localMessage2.getData().putSerializable("msg", null);
          this.l.sendMessage(localMessage2);
          return;
        }
        localStringBuilder.append(str2 + "\n");
      }
    }
    catch (Exception localException)
    {
      Message localMessage1 = this.l.obtainMessage();
      localMessage1.what = 11;
      localMessage1.getData().putSerializable("msg", null);
      this.l.sendMessage(localMessage1);
      localException.printStackTrace();
      return;
    }
    Log.d("DOWNLOADAPK", "verjson:" + str3);
    JSONArray localJSONArray = new JSONArray(str3);
    JSONObject localJSONObject;
    if (localJSONArray.length() > 0)
    {
      localJSONObject = localJSONArray.getJSONObject(0);
      this.c = localJSONObject.getString("verCode");
      this.h = localJSONObject.getString("apkUrl");
      this.g = localJSONObject.getString("apkname");
      Log.d("DOWNLOADAPK", "version:" + this.c + "strURL:" + this.h + "apkName:" + this.g);
    }
    while (true)
    {
      long l1;
      long l2;
      long l3;
      try
      {
        this.i = localJSONObject.getString("stopReason");
        this.j = localJSONObject.getString("stopverCode");
        Log.d("DOWNLOADAPK", "stopverCode:" + this.j + "stopReason:" + this.i);
        this.b = com.c.a.e;
        Log.d("update", "pastVersion:" + this.b + "&&Nowversion:" + this.c);
        l1 = a(this.b);
        l2 = a(this.c);
        l3 = 0L;
        if ((this.j != null) && (this.j.length() > 0))
        {
          l3 = a(this.j);
          if (l1 <= l3)
          {
            Message localMessage5 = this.l.obtainMessage();
            localMessage5.what = 15;
            localMessage5.getData().putSerializable("msg", this.h + ":STOPRESONE:" + this.i);
            this.l.sendMessage(localMessage5);
            return;
          }
        }
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        continue;
      }
      if (l1 < l2)
      {
        Message localMessage4 = this.l.obtainMessage();
        localMessage4.what = 10;
        localMessage4.getData().putSerializable("msg", this.h);
        this.l.sendMessage(localMessage4);
        e.c.m = "There is a new version.";
      }
      while (true)
      {
        Log.d("Ver", "cur:" + l1 + "new:" + l2 + "stop:" + l3);
        return;
        if (l1 >= l2)
        {
          Message localMessage3 = this.l.obtainMessage();
          localMessage3.what = 9;
          localMessage3.getData().putSerializable("msg", null);
          this.l.sendMessage(localMessage3);
        }
      }
      localJSONObject = null;
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     c.a
 * JD-Core Version:    0.6.2
 */