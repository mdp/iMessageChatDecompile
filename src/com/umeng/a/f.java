package com.umeng.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.HandlerThread;
import com.umeng.a.b.c;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.InputStreamEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.json.JSONObject;

public abstract class f
  implements c, l
{
  private final b a = new b();
  private final Object b = new Object();
  protected final e c = new e();
  protected final com.umeng.a.a.f d = new com.umeng.a.a.f();
  protected final int e = 1;
  protected final int f = 2;
  protected final int g = 3;
  protected final int h = 4;
  protected final int i = 5;
  String j = null;
  String k = null;
  private final Handler l;
  private final String m = "body";
  private final String n = "header";
  private int o = -1;
  private long p = -1L;
  private long q = -1L;
  private long r = -1L;
  private boolean s = false;

  public f()
  {
    HandlerThread localHandlerThread = new HandlerThread("MobclickAgent");
    localHandlerThread.start();
    this.l = new Handler(localHandlerThread.getLooper());
  }

  private String a(Context paramContext)
  {
    if (!this.d.b())
    {
      com.umeng.a.a.f localf = this.d;
      String[] arrayOfString = new String[2];
      arrayOfString[0] = this.k;
      arrayOfString[1] = this.j;
      localf.a(paramContext, arrayOfString);
    }
    StringBuffer localStringBuffer1 = new StringBuffer();
    localStringBuffer1.append(this.d.w);
    localStringBuffer1.append("/");
    localStringBuffer1.append(this.d.x);
    localStringBuffer1.append(" ");
    try
    {
      StringBuffer localStringBuffer2 = new StringBuffer();
      localStringBuffer2.append(paramContext.getPackageManager().getApplicationLabel(paramContext.getApplicationInfo()).toString());
      localStringBuffer2.append("/");
      localStringBuffer2.append(this.d.t);
      localStringBuffer2.append(" ");
      localStringBuffer2.append(this.d.g);
      localStringBuffer2.append("/");
      localStringBuffer2.append(this.d.i);
      localStringBuffer2.append(" ");
      localStringBuffer2.append(this.d.d);
      localStringBuffer1.append(URLEncoder.encode(localStringBuffer2.toString(), "UTF-8"));
      return localStringBuffer1.toString();
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  private String a(Context paramContext, JSONObject paramJSONObject, String paramString)
  {
    HttpPost localHttpPost = new HttpPost(paramString);
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 10000);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, 30000);
    DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient(localBasicHttpParams);
    localHttpPost.addHeader("X-Umeng-Sdk", a(paramContext));
    try
    {
      String str1 = k.a(paramContext);
      if (str1 != null)
      {
        HttpHost localHttpHost = new HttpHost(str1, 80);
        localDefaultHttpClient.getParams().setParameter("http.route.default-proxy", localHttpHost);
      }
      String str2 = paramJSONObject.toString();
      com.umeng.common.a.a("MobclickAgent", str2);
      if (j.l)
      {
        byte[] arrayOfByte = com.umeng.common.util.a.a("content=" + str2, "utf-8");
        localHttpPost.addHeader("Content-Encoding", "deflate");
        localHttpPost.setEntity(new InputStreamEntity(new ByteArrayInputStream(arrayOfByte), com.umeng.common.util.a.a));
      }
      while (true)
      {
        Date localDate = new Date();
        HttpResponse localHttpResponse = localDefaultHttpClient.execute(localHttpPost);
        this.r = (new Date().getTime() - localDate.getTime());
        if (localHttpResponse.getStatusLine().getStatusCode() != 200)
          break;
        com.umeng.common.a.a("MobclickAgent", "Sent message to " + paramString);
        HttpEntity localHttpEntity = localHttpResponse.getEntity();
        if (localHttpEntity == null)
          break;
        return a(localHttpEntity.getContent());
        ArrayList localArrayList = new ArrayList(1);
        localArrayList.add(new BasicNameValuePair("content", str2));
        localHttpPost.setEntity(new UrlEncodedFormEntity(localArrayList, "UTF-8"));
      }
    }
    catch (ClientProtocolException localClientProtocolException)
    {
      com.umeng.common.a.b("MobclickAgent", "ClientProtocolException,Failed to send message.", localClientProtocolException);
      return null;
    }
    catch (IOException localIOException)
    {
      com.umeng.common.a.b("MobclickAgent", "IOException,Failed to send message.", localIOException);
    }
    return null;
  }

  private static String a(InputStream paramInputStream)
  {
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramInputStream), 64);
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      while (true)
      {
        String str = localBufferedReader.readLine();
        if (str == null)
          break;
        localStringBuilder.append(str + "\n");
      }
    }
    catch (IOException localIOException2)
    {
      com.umeng.common.a.b("MobclickAgent", "Caught IOException in convertStreamToString()", localIOException2);
      try
      {
        paramInputStream.close();
        return null;
        try
        {
          paramInputStream.close();
          return localStringBuilder.toString();
        }
        catch (IOException localIOException4)
        {
          com.umeng.common.a.b("MobclickAgent", "Caught IOException in convertStreamToString()", localIOException4);
          return null;
        }
      }
      catch (IOException localIOException3)
      {
        com.umeng.common.a.b("MobclickAgent", "Caught IOException in convertStreamToString()", localIOException3);
        return null;
      }
    }
    finally
    {
      try
      {
        paramInputStream.close();
        throw localObject;
      }
      catch (IOException localIOException1)
      {
        com.umeng.common.a.b("MobclickAgent", "Caught IOException in convertStreamToString()", localIOException1);
      }
    }
    return null;
  }

  private JSONObject b(Context paramContext)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      if (!this.d.b())
      {
        com.umeng.a.a.f localf = this.d;
        String[] arrayOfString = new String[2];
        arrayOfString[0] = this.k;
        arrayOfString[1] = this.j;
        localf.a(paramContext, arrayOfString);
      }
      if (!this.d.a())
      {
        com.umeng.common.a.b("MobclickAgent", "protocol Header need Appkey or Device ID ,Please check AndroidManifest.xml ");
        return null;
      }
      this.c.b(paramContext);
      if (this.c.a() <= 0)
      {
        com.umeng.common.a.c("MobclickAgent", "no message to send");
        return null;
      }
    }
    catch (Exception localException)
    {
      com.umeng.common.a.b("MobclickAgent", "", localException);
      m.d(paramContext);
      return null;
      if (!this.c.c())
        throw new Exception("protocol Body has invalid field: " + this.c.d().toString());
    }
    catch (Error localError)
    {
      com.umeng.common.a.b("MobclickAgent", "Error:" + localError.getMessage());
      m.d(paramContext);
      return null;
    }
    localJSONObject.put("header", new i(this));
    localJSONObject.put("body", this.c.d());
    this.c.e();
    return localJSONObject;
  }

  public final void a(Context paramContext, int paramInt)
  {
    int i1 = 1;
    while (true)
    {
      try
      {
        if ((!this.s) && (paramInt == 4))
        {
          if (this.o == -1)
          {
            int[] arrayOfInt = m.c(paramContext);
            this.o = arrayOfInt[0];
            this.p = arrayOfInt[1];
            if ((this.o == 4) || (this.o == 6))
              this.q = m.b(paramContext).getLong("last_report_time", -1L);
          }
          this.a.a(paramContext);
          this.a.a(this);
          this.s = true;
        }
        if (paramInt == 5)
        {
          this.c.a(paramContext);
          return;
        }
        if (!com.umeng.common.b.h(paramContext))
          break label323;
        switch (paramInt)
        {
        case 2:
          if (i1 != 0)
            this.l.post(new h(this, paramContext));
          if (!this.c.b())
            continue;
          this.l.post(new g(this, paramContext));
          continue;
        case 4:
        case 1:
        case 3:
        }
      }
      finally
      {
      }
      if ((this.o != i1) && (this.o != 0))
        if ((this.o == 6) && (System.currentTimeMillis() - this.q > this.p))
        {
          this.q = System.currentTimeMillis();
        }
        else if ((this.o == 4) && (System.currentTimeMillis() - this.q > j.b))
        {
          this.q = System.currentTimeMillis();
        }
        else if (this.o == 5)
        {
          boolean bool = com.umeng.common.b.f(paramContext);
          if (bool);
        }
        else
        {
          label323: i1 = 0;
        }
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.umeng.a.f
 * JD-Core Version:    0.6.2
 */