package com.umeng.common.net;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.umeng.common.a;
import com.umeng.common.util.b;
import java.text.SimpleDateFormat;
import java.util.Date;

public class h
{
  private static final String a = h.class.getName();
  private static Context b;
  private i c = new i(this, b);

  public static h a(Context paramContext)
  {
    if ((b == null) && (paramContext == null))
      throw new NullPointerException();
    if (b == null)
      b = paramContext;
    return j.a;
  }

  public final void a()
  {
    try
    {
      Date localDate = new Date(new Date().getTime() - 259200000L);
      String str1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(localDate);
      String str2 = " DELETE FROM umeng_download_task_list WHERE strftime('yyyy-MM-dd HH:mm:ss', last_modified)<=strftime('yyyy-MM-dd HH:mm:ss', '" + str1 + "')";
      this.c.getWritableDatabase().execSQL(str2);
      a.c(a, "clearOverdueTasks(259200) remove all tasks before " + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(localDate));
      return;
    }
    catch (Exception localException)
    {
      a.b(a, localException.getMessage());
    }
  }

  public final void a(String paramString1, String paramString2, int paramInt)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("progress", Integer.valueOf(paramInt));
    localContentValues.put("last_modified", b.a());
    String[] arrayOfString = { paramString1, paramString2 };
    this.c.getWritableDatabase().update("umeng_download_task_list", localContentValues, "cp=? and url=?", arrayOfString);
    a.c(a, "updateProgress(" + paramString1 + ", " + paramString2 + ", " + paramInt + ")");
  }

  // ERROR //
  public final boolean a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: new 106	android/content/ContentValues
    //   3: dup
    //   4: invokespecial 107	android/content/ContentValues:<init>	()V
    //   7: astore_3
    //   8: aload_3
    //   9: ldc 149
    //   11: aload_1
    //   12: invokevirtual 127	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   15: aload_3
    //   16: ldc 151
    //   18: aload_2
    //   19: invokevirtual 127	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   22: aload_3
    //   23: ldc 109
    //   25: iconst_0
    //   26: invokestatic 115	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   29: invokevirtual 119	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   32: aload_3
    //   33: ldc 121
    //   35: invokestatic 125	com/umeng/common/util/b:a	()Ljava/lang/String;
    //   38: invokevirtual 127	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   41: iconst_2
    //   42: anewarray 129	java/lang/String
    //   45: dup
    //   46: iconst_0
    //   47: aload_1
    //   48: aastore
    //   49: dup
    //   50: iconst_1
    //   51: aload_2
    //   52: aastore
    //   53: astore 4
    //   55: aload_0
    //   56: getfield 32	com/umeng/common/net/h:c	Lcom/umeng/common/net/i;
    //   59: invokevirtual 154	com/umeng/common/net/i:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   62: ldc 131
    //   64: iconst_1
    //   65: anewarray 129	java/lang/String
    //   68: dup
    //   69: iconst_0
    //   70: ldc 109
    //   72: aastore
    //   73: ldc 133
    //   75: aload 4
    //   77: aconst_null
    //   78: aconst_null
    //   79: aconst_null
    //   80: ldc 156
    //   82: invokevirtual 160	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   85: astore 8
    //   87: aload 8
    //   89: invokeinterface 166 1 0
    //   94: ifle +52 -> 146
    //   97: getstatic 20	com/umeng/common/net/h:a	Ljava/lang/String;
    //   100: new 70	java/lang/StringBuilder
    //   103: dup
    //   104: ldc 168
    //   106: invokespecial 73	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   109: aload_1
    //   110: invokevirtual 77	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   113: ldc 141
    //   115: invokevirtual 77	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   118: aload_2
    //   119: invokevirtual 77	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   122: ldc 170
    //   124: invokevirtual 77	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   127: invokevirtual 82	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   130: invokestatic 98	com/umeng/common/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   133: iconst_0
    //   134: istore 7
    //   136: aload 8
    //   138: invokeinterface 173 1 0
    //   143: iload 7
    //   145: ireturn
    //   146: aload_0
    //   147: getfield 32	com/umeng/common/net/h:c	Lcom/umeng/common/net/i;
    //   150: invokevirtual 86	com/umeng/common/net/i:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   153: ldc 131
    //   155: aconst_null
    //   156: aload_3
    //   157: invokevirtual 177	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   160: lstore 9
    //   162: lload 9
    //   164: ldc2_w 178
    //   167: lcmp
    //   168: ifne +54 -> 222
    //   171: iconst_0
    //   172: istore 11
    //   174: getstatic 20	com/umeng/common/net/h:a	Ljava/lang/String;
    //   177: new 70	java/lang/StringBuilder
    //   180: dup
    //   181: ldc 168
    //   183: invokespecial 73	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   186: aload_1
    //   187: invokevirtual 77	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   190: ldc 141
    //   192: invokevirtual 77	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   195: aload_2
    //   196: invokevirtual 77	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   199: ldc 181
    //   201: invokevirtual 77	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   204: lload 9
    //   206: invokevirtual 184	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   209: invokevirtual 82	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   212: invokestatic 98	com/umeng/common/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   215: iload 11
    //   217: istore 7
    //   219: goto -83 -> 136
    //   222: iconst_1
    //   223: istore 11
    //   225: goto -51 -> 174
    //   228: astore 5
    //   230: aload 5
    //   232: astore 6
    //   234: iconst_0
    //   235: istore 7
    //   237: getstatic 20	com/umeng/common/net/h:a	Ljava/lang/String;
    //   240: new 70	java/lang/StringBuilder
    //   243: dup
    //   244: ldc 168
    //   246: invokespecial 73	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   249: aload_1
    //   250: invokevirtual 77	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   253: ldc 141
    //   255: invokevirtual 77	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   258: aload_2
    //   259: invokevirtual 77	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   262: ldc 186
    //   264: invokevirtual 77	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   267: aload 6
    //   269: invokevirtual 101	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   272: invokevirtual 77	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   275: invokevirtual 82	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   278: aload 6
    //   280: invokestatic 189	com/umeng/common/a:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    //   283: iload 7
    //   285: ireturn
    //   286: astore 12
    //   288: iload 11
    //   290: istore 7
    //   292: aload 12
    //   294: astore 6
    //   296: goto -59 -> 237
    //   299: astore 6
    //   301: goto -64 -> 237
    //
    // Exception table:
    //   from	to	target	type
    //   41	133	228	java/lang/Exception
    //   146	162	228	java/lang/Exception
    //   174	215	286	java/lang/Exception
    //   136	143	299	java/lang/Exception
  }

  public void finalize()
  {
    this.c.close();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.umeng.common.net.h
 * JD-Core Version:    0.6.2
 */