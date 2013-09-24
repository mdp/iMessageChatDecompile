package com.umeng.a;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.a.a.g;
import com.umeng.common.a;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import org.json.JSONObject;

public final class m
{
  static long a = 1209600000L;
  static long b = 2097152L;

  public static SharedPreferences a(Context paramContext)
  {
    return paramContext.getSharedPreferences("mobclick_agent_header_" + paramContext.getPackageName(), 0);
  }

  private static String a(InputStream paramInputStream)
  {
    InputStreamReader localInputStreamReader = new InputStreamReader(paramInputStream);
    char[] arrayOfChar = new char[1024];
    StringWriter localStringWriter = new StringWriter();
    while (true)
    {
      int i = localInputStreamReader.read(arrayOfChar);
      if (-1 == i)
        break;
      localStringWriter.write(arrayOfChar, 0, i);
    }
    return localStringWriter.toString();
  }

  // ERROR //
  static JSONObject a(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 77	com/umeng/a/m:e	(Landroid/content/Context;)Ljava/lang/String;
    //   4: astore_2
    //   5: new 79	java/io/File
    //   8: dup
    //   9: aload_0
    //   10: invokevirtual 83	android/content/Context:getFilesDir	()Ljava/io/File;
    //   13: aload_2
    //   14: invokespecial 86	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   17: astore_3
    //   18: aload_3
    //   19: invokevirtual 90	java/io/File:length	()J
    //   22: lstore 7
    //   24: aload_3
    //   25: invokevirtual 94	java/io/File:exists	()Z
    //   28: ifeq +143 -> 171
    //   31: lload 7
    //   33: getstatic 17	com/umeng/a/m:b	J
    //   36: lcmp
    //   37: ifle +134 -> 171
    //   40: iconst_1
    //   41: istore 9
    //   43: iload 9
    //   45: ifeq +10 -> 55
    //   48: aload_3
    //   49: invokevirtual 97	java/io/File:delete	()Z
    //   52: pop
    //   53: aconst_null
    //   54: areturn
    //   55: aload_0
    //   56: aload_2
    //   57: invokevirtual 101	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   60: astore 11
    //   62: aload 11
    //   64: invokestatic 103	com/umeng/a/m:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   67: astore 14
    //   69: aload 11
    //   71: invokevirtual 108	java/io/FileInputStream:close	()V
    //   74: new 110	org/json/JSONObject
    //   77: dup
    //   78: aload 14
    //   80: invokespecial 111	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   83: astore 15
    //   85: aload 15
    //   87: ldc 113
    //   89: invokevirtual 117	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   92: aload_1
    //   93: invokevirtual 123	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   96: ifne +11 -> 107
    //   99: aload 15
    //   101: ldc 125
    //   103: invokevirtual 129	org/json/JSONObject:remove	(Ljava/lang/String;)Ljava/lang/Object;
    //   106: pop
    //   107: aload 15
    //   109: ldc 113
    //   111: invokevirtual 129	org/json/JSONObject:remove	(Ljava/lang/String;)Ljava/lang/Object;
    //   114: pop
    //   115: aload 15
    //   117: invokevirtual 132	org/json/JSONObject:length	()I
    //   120: istore 18
    //   122: iload 18
    //   124: ifeq +45 -> 169
    //   127: aload 15
    //   129: areturn
    //   130: astore 13
    //   132: aload 13
    //   134: invokevirtual 135	java/lang/Exception:printStackTrace	()V
    //   137: aload 11
    //   139: invokevirtual 108	java/io/FileInputStream:close	()V
    //   142: aconst_null
    //   143: areturn
    //   144: astore 12
    //   146: aload 11
    //   148: invokevirtual 108	java/io/FileInputStream:close	()V
    //   151: aload 12
    //   153: athrow
    //   154: astore 16
    //   156: aload_0
    //   157: invokestatic 139	com/umeng/a/m:d	(Landroid/content/Context;)V
    //   160: aload 16
    //   162: invokevirtual 140	org/json/JSONException:printStackTrace	()V
    //   165: aconst_null
    //   166: areturn
    //   167: astore 4
    //   169: aconst_null
    //   170: areturn
    //   171: iconst_0
    //   172: istore 9
    //   174: goto -131 -> 43
    //   177: astore 6
    //   179: aconst_null
    //   180: areturn
    //   181: astore 5
    //   183: aconst_null
    //   184: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   62	69	130	java/lang/Exception
    //   62	69	144	finally
    //   132	137	144	finally
    //   74	107	154	org/json/JSONException
    //   107	122	154	org/json/JSONException
    //   5	40	167	java/lang/Throwable
    //   48	53	167	java/lang/Throwable
    //   55	62	167	java/lang/Throwable
    //   69	74	167	java/lang/Throwable
    //   74	107	167	java/lang/Throwable
    //   107	122	167	java/lang/Throwable
    //   137	142	167	java/lang/Throwable
    //   146	154	167	java/lang/Throwable
    //   156	165	167	java/lang/Throwable
    //   5	40	177	java/io/FileNotFoundException
    //   48	53	177	java/io/FileNotFoundException
    //   55	62	177	java/io/FileNotFoundException
    //   69	74	177	java/io/FileNotFoundException
    //   74	107	177	java/io/FileNotFoundException
    //   107	122	177	java/io/FileNotFoundException
    //   137	142	177	java/io/FileNotFoundException
    //   146	154	177	java/io/FileNotFoundException
    //   156	165	177	java/io/FileNotFoundException
    //   5	40	181	java/io/IOException
    //   48	53	181	java/io/IOException
    //   55	62	181	java/io/IOException
    //   69	74	181	java/io/IOException
    //   74	107	181	java/io/IOException
    //   107	122	181	java/io/IOException
    //   137	142	181	java/io/IOException
    //   146	154	181	java/io/IOException
    //   156	165	181	java/io/IOException
  }

  static void a(Context paramContext, g paramg, String paramString)
  {
    if (paramg == null)
      return;
    try
    {
      JSONObject localJSONObject = new JSONObject();
      paramg.a(localJSONObject);
      b(paramContext, localJSONObject, paramString);
      return;
    }
    catch (Exception localException)
    {
      a.b("MobclickAgent", "cache message error", localException);
    }
  }

  static void a(Context paramContext, JSONObject paramJSONObject, String paramString)
  {
    if (paramJSONObject == null)
      return;
    try
    {
      b(paramContext, paramJSONObject.optJSONObject("body"), paramString);
      return;
    }
    catch (Exception localException)
    {
      a.b("MobclickAgent", "cache message error", localException);
    }
  }

  public static SharedPreferences b(Context paramContext)
  {
    return paramContext.getSharedPreferences("mobclick_agent_state_" + paramContext.getPackageName(), 0);
  }

  private static void b(Context paramContext, JSONObject paramJSONObject, String paramString)
  {
    if (paramJSONObject == null)
      return;
    String str = e(paramContext);
    paramJSONObject.put("cache_version", paramString);
    FileOutputStream localFileOutputStream = paramContext.openFileOutput(str, 0);
    localFileOutputStream.write(paramJSONObject.toString().getBytes());
    localFileOutputStream.flush();
    localFileOutputStream.close();
    a.c("MobclickAgent", "cache buffer success");
  }

  public static int[] c(Context paramContext)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("mobclick_agent_online_setting_" + paramContext.getPackageName(), 0);
    int[] arrayOfInt = new int[2];
    if (localSharedPreferences.getInt("umeng_net_report_policy", -1) != -1)
    {
      arrayOfInt[0] = localSharedPreferences.getInt("umeng_net_report_policy", 1);
      arrayOfInt[1] = ((int)localSharedPreferences.getLong("umeng_net_report_interval", j.c));
      return arrayOfInt;
    }
    arrayOfInt[0] = localSharedPreferences.getInt("umeng_local_report_policy", 1);
    arrayOfInt[1] = ((int)localSharedPreferences.getLong("umeng_local_report_interval", j.c));
    return arrayOfInt;
  }

  static void d(Context paramContext)
  {
    paramContext.deleteFile("mobclick_agent_header_" + paramContext.getPackageName());
    paramContext.deleteFile(e(paramContext));
  }

  private static String e(Context paramContext)
  {
    return "mobclick_agent_cached_" + paramContext.getPackageName();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.umeng.a.m
 * JD-Core Version:    0.6.2
 */