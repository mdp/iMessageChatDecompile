package com.a;

import activity.o;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Base64;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.concurrent.locks.ReentrantLock;

public final class d
{
  private static ReentrantLock d = new ReentrantLock();
  private static List e = null;
  private static List f = null;
  private SQLiteDatabase a;
  private SQLiteDatabase b;
  private Context c;

  public d(Context paramContext)
  {
    this.c = paramContext;
    if (this.a != null)
    {
      this.a.close();
      this.a = null;
    }
    if (this.b != null)
    {
      this.b.close();
      this.b = null;
    }
    this.a = paramContext.openOrCreateDatabase(paramContext.getString(2131165190), 0, null);
    this.b = paramContext.openOrCreateDatabase(paramContext.getString(2131165191), 0, null);
  }

  public static void a()
  {
    e = null;
    f = null;
  }

  private static void a(o paramo)
  {
    if (e == null)
      e = new ArrayList();
    int i = 0;
    int j = 0;
    while (true)
    {
      int k;
      if (i >= e.size())
        k = 0;
      for (int m = j; ; m = 0)
      {
        if (m == 0)
        {
          if (!paramo.i())
            k++;
          paramo.a(k);
          e.add(paramo);
        }
        return;
        o localo = (o)e.get(i);
        if (!paramo.b().equals(localo.b()))
          break;
        j = 1;
        if (e.a(paramo.d()) < e.a(localo.d()))
          break;
        k = localo.a();
        e.remove(i);
      }
      i++;
    }
  }

  private static void c()
  {
    if (e != null);
    for (int i = 0; ; i++)
    {
      if (i >= e.size())
        return;
      e.remove(i);
    }
  }

  private static void e(String paramString)
  {
    if (e != null);
    for (int i = 0; ; i++)
    {
      if (i >= e.size());
      while (true)
      {
        e = null;
        return;
        o localo = (o)e.get(i);
        if (!localo.b().equals(paramString))
          break;
        localo.a(0);
      }
    }
  }

  private static void f(String paramString)
  {
    if (e != null);
    for (int i = 0; ; i++)
    {
      if (i >= e.size())
        return;
      if (((o)e.get(i)).b().equals(paramString))
      {
        e.remove(i);
        return;
      }
    }
  }

  public final void a(String paramString)
  {
    String str = paramString.replace('@', 'D').replace('.', 'O');
    this.a.execSQL("delete from _" + str, new Object[0]);
    c();
    this.b.execSQL("delete from _" + str, new Object[0]);
  }

  public final void a(String paramString, long paramLong)
  {
    String str1 = paramString.replace('@', 'D').replace('.', 'O');
    SQLiteDatabase localSQLiteDatabase1 = this.a;
    String str2 = "_" + str1;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = paramLong;
    Cursor localCursor = localSQLiteDatabase1.query(str2, null, "msgid = ?", arrayOfString, null, null, null);
    String str3 = " ";
    if (localCursor.moveToFirst())
      str3 = localCursor.getString(localCursor.getColumnIndex("toAppleId"));
    SQLiteDatabase localSQLiteDatabase2 = this.a;
    String str4 = "delete from _" + str1 + " where msgid = ?";
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Long.valueOf(paramLong);
    localSQLiteDatabase2.execSQL(str4, arrayOfObject);
    int i = -1;
    int j = 0;
    int k = 0;
    if (j >= f.size())
    {
      if (i > 0)
        f.remove(i);
      if (k == 0)
      {
        o localo2 = new o(str3, e.b(), " ", true, 0);
        localo2.a(null);
        localo2.e(" ");
        localo2.a(0L);
        localo2.e(1);
        localo2.b(0);
        a(localo2);
      }
      return;
    }
    o localo1 = (o)f.get(j);
    int m;
    if (localo1.b().equals(str3))
      m = j;
    for (int n = k; ; n = 1)
    {
      j++;
      k = n;
      i = m;
      break;
      a(localo1);
      m = i;
    }
  }

  public final void a(String paramString, long paramLong, int paramInt)
  {
    d.lock();
    if ((paramString != null) && (this.a != null))
    {
      String str1 = paramString.replace('@', 'D').replace('.', 'O');
      SQLiteDatabase localSQLiteDatabase = this.a;
      String str2 = "update [_" + str1 + "] set mRate = ? where msgid= ?";
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      arrayOfObject[1] = Long.valueOf(paramLong);
      localSQLiteDatabase.execSQL(str2, arrayOfObject);
    }
    d.unlock();
  }

  public final void a(String paramString1, long paramLong, String paramString2)
  {
    String str1 = paramString1.replace('@', 'D').replace('.', 'O');
    SQLiteDatabase localSQLiteDatabase = this.a;
    String str2 = "update [_" + str1 + "] set xmessage = ? where msgid= ?";
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString2;
    arrayOfObject[1] = Long.valueOf(paramLong);
    localSQLiteDatabase.execSQL(str2, arrayOfObject);
  }

  public final void a(String paramString, o paramo)
  {
    String str1 = paramString.replace('@', 'D').replace('.', 'O');
    this.b.execSQL("CREATE table IF NOT EXISTS _" + str1 + " (_id INTEGER PRIMARY KEY AUTOINCREMENT,toAppleId TEXT, notice TEXT, date TEXT)");
    this.a.execSQL("CREATE table IF NOT EXISTS _" + str1 + " (_id INTEGER PRIMARY KEY AUTOINCREMENT,toAppleId TEXT, msgid TEXT, isReach TEXT, isRead TEXT,date TEXT,isCome TEXT,message TEXT,xmessage TEXT,mRate TEXT)");
    if (paramo.l() == 2)
      return;
    if (paramo.l() == 0);
    for (int i = 1; ; i = 0)
    {
      if (paramo.i());
      for (int j = 1; ; j = 0)
      {
        String str2 = new String(Base64.encode(paramo.o(), 0));
        SQLiteDatabase localSQLiteDatabase1 = this.a;
        String str3 = "_" + str1;
        String[] arrayOfString1 = new String[1];
        arrayOfString1[0] = paramo.m();
        if (localSQLiteDatabase1.query(str3, null, "msgid = ?", arrayOfString1, null, null, null).moveToFirst())
        {
          SQLiteDatabase localSQLiteDatabase6 = this.a;
          String str8 = "update [_" + str1 + "] set isReach = ? where msgid= ?";
          Object[] arrayOfObject4 = new Object[2];
          arrayOfObject4[0] = Integer.valueOf(paramo.n());
          arrayOfObject4[1] = Long.valueOf(paramo.m());
          localSQLiteDatabase6.execSQL(str8, arrayOfObject4);
          SQLiteDatabase localSQLiteDatabase7 = this.a;
          String str9 = "update [_" + str1 + "] set message = ? where msgid= ?";
          Object[] arrayOfObject5 = new Object[2];
          arrayOfObject5[0] = paramo.e();
          arrayOfObject5[1] = Long.valueOf(paramo.m());
          localSQLiteDatabase7.execSQL(str9, arrayOfObject5);
          Log.d("msg exit", paramo.m() + " " + paramo.e());
          SQLiteDatabase localSQLiteDatabase3 = this.b;
          String str5 = "_" + str1;
          String[] arrayOfString2 = new String[1];
          arrayOfString2[0] = paramo.b();
          if (!localSQLiteDatabase3.query(str5, null, "toAppleId = ?", arrayOfString2, null, null, null).moveToFirst())
            break label676;
          SQLiteDatabase localSQLiteDatabase5 = this.b;
          String str7 = "update [_" + str1 + "] set date = ? where toAppleId= ?";
          Object[] arrayOfObject3 = new Object[2];
          arrayOfObject3[0] = paramo.d();
          arrayOfObject3[1] = paramo.b();
          localSQLiteDatabase5.execSQL(str7, arrayOfObject3);
        }
        while (true)
        {
          Log.d("save rate", paramo.g());
          return;
          SQLiteDatabase localSQLiteDatabase2 = this.a;
          String str4 = "insert into _" + str1 + " (toAppleId,msgid,isReach,isRead,date,isCome,message,xmessage,mRate) values(?,?,?,?,?,?,?,?,?)";
          Object[] arrayOfObject1 = new Object[9];
          arrayOfObject1[0] = paramo.b();
          arrayOfObject1[1] = Long.valueOf(paramo.m());
          arrayOfObject1[2] = Integer.valueOf(paramo.n());
          arrayOfObject1[3] = Integer.valueOf(j);
          arrayOfObject1[4] = (paramo.d() + ":GUID:" + str2);
          arrayOfObject1[5] = Integer.valueOf(i);
          arrayOfObject1[6] = paramo.e();
          arrayOfObject1[7] = paramo.f();
          arrayOfObject1[8] = Integer.valueOf(paramo.g());
          localSQLiteDatabase2.execSQL(str4, arrayOfObject1);
          a(paramo);
          break;
          label676: SQLiteDatabase localSQLiteDatabase4 = this.b;
          String str6 = "insert into _" + str1 + " (toAppleId,notice,date) values(?,?,?)";
          Object[] arrayOfObject2 = new Object[3];
          arrayOfObject2[0] = paramo.b();
          arrayOfObject2[1] = " ";
          arrayOfObject2[2] = paramo.d();
          localSQLiteDatabase4.execSQL(str6, arrayOfObject2);
        }
      }
    }
  }

  public final void a(String paramString1, String paramString2)
  {
    String str1 = paramString1.replace('@', 'D').replace('.', 'O');
    SQLiteDatabase localSQLiteDatabase = this.a;
    String str2 = "update [_" + str1 + "] set isRead = ? where toAppleId=?";
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(1);
    arrayOfObject[1] = paramString2;
    localSQLiteDatabase.execSQL(str2, arrayOfObject);
    e(paramString2);
  }

  public final o b(String paramString, long paramLong)
  {
    String str1 = paramString.replace('@', 'D').replace('.', 'O');
    SQLiteDatabase localSQLiteDatabase = this.a;
    String str2 = "_" + str1;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = paramLong;
    Cursor localCursor = localSQLiteDatabase.query(str2, null, "msgid = ?", arrayOfString, null, null, null);
    String str3;
    int i;
    int j;
    String str4;
    byte[] arrayOfByte3;
    if (localCursor.moveToFirst())
    {
      str3 = localCursor.getString(localCursor.getColumnIndex("toAppleId"));
      i = localCursor.getInt(localCursor.getColumnIndex("isReach"));
      j = localCursor.getInt(localCursor.getColumnIndex("isRead"));
      str4 = localCursor.getString(localCursor.getColumnIndex("date"));
      int k = str4.indexOf(":GUID:");
      if (k == -1)
        break label478;
      arrayOfByte3 = Base64.decode(str4.substring(k + 6).getBytes(), 0);
      str4 = str4.substring(0, k);
    }
    label478: for (byte[] arrayOfByte1 = arrayOfByte3; ; arrayOfByte1 = null)
    {
      int m = localCursor.getInt(localCursor.getColumnIndex("isCome"));
      String str5 = localCursor.getString(localCursor.getColumnIndex("message"));
      String str6 = localCursor.getString(localCursor.getColumnIndex("xmessage"));
      long l = localCursor.getLong(localCursor.getColumnIndex("msgid"));
      int n = localCursor.getInt(localCursor.getColumnIndex("mRate"));
      int i1 = 1;
      if (m == 1)
        i1 = 0;
      boolean bool = false;
      if (j == 1)
        bool = true;
      o localo = new o(str3, str4, str5, bool, i1);
      localo.e(str6);
      localo.a(l);
      localo.e(i);
      localo.b(n);
      if (arrayOfByte1 != null)
      {
        localo.a(arrayOfByte1);
        return localo;
      }
      Random localRandom = new Random(System.currentTimeMillis());
      byte[] arrayOfByte2 = new byte[16];
      localRandom.nextBytes(arrayOfByte2);
      arrayOfByte2[3] = ((byte)(int)(l >> 24));
      arrayOfByte2[2] = ((byte)(int)(l >> 16));
      arrayOfByte2[1] = ((byte)(int)(l >> 8));
      arrayOfByte2[0] = ((byte)(int)(l >> 0));
      localo.a(arrayOfByte2);
      return localo;
      return null;
    }
  }

  public final List b(String paramString)
  {
    List localList;
    if (e == null)
    {
      localList = c(paramString);
      e = new ArrayList();
    }
    Cursor localCursor;
    for (int i = 0; ; i++)
    {
      if (i >= localList.size())
      {
        String str1 = paramString.replace('@', 'D').replace('.', 'O');
        this.b.execSQL("CREATE table IF NOT EXISTS _" + str1 + " (_id INTEGER PRIMARY KEY AUTOINCREMENT,toAppleId TEXT, notice TEXT, date TEXT)");
        localCursor = this.b.rawQuery("SELECT * from _" + str1, null);
        if (localCursor.moveToNext())
          break;
        return e;
      }
      a((o)localList.get(i));
    }
    String str2 = localCursor.getString(localCursor.getColumnIndex("toAppleId"));
    String str3 = localCursor.getString(localCursor.getColumnIndex("date"));
    label286: label288: for (int j = 0; ; j++)
    {
      if (j >= e.size());
      for (int k = 0; ; k = 1)
      {
        if (k != 0)
          break label286;
        o localo = new o(str2, str3, " ", true, 0);
        localo.a(null);
        localo.e(" ");
        localo.a(0L);
        localo.e(1);
        localo.b(0);
        a(localo);
        break;
        if (!((o)e.get(j)).b().equals(str2))
          break label288;
      }
      break;
    }
  }

  public final List b(String paramString1, String paramString2)
  {
    String str1 = paramString1.replace('@', 'D').replace('.', 'O');
    ArrayList localArrayList = new ArrayList();
    this.a.execSQL("CREATE table IF NOT EXISTS _" + str1 + " (_id INTEGER PRIMARY KEY AUTOINCREMENT,toAppleId TEXT, msgid TEXT, isReach TEXT, isRead TEXT,date TEXT,isCome TEXT,message TEXT,xmessage TEXT,mRate TEXT)");
    SQLiteDatabase localSQLiteDatabase = this.a;
    String str2 = "_" + str1;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = paramString2;
    Cursor localCursor = localSQLiteDatabase.query(str2, null, "toAppleId = ?", arrayOfString, null, null, null);
    String str3;
    do
    {
      if (!localCursor.moveToNext())
      {
        localCursor.close();
        f = localArrayList;
        return localArrayList;
      }
      str3 = localCursor.getString(localCursor.getColumnIndex("toAppleId"));
    }
    while (!str3.equals(paramString2));
    int i = localCursor.getInt(localCursor.getColumnIndex("isReach"));
    int j = localCursor.getInt(localCursor.getColumnIndex("isRead"));
    String str4 = localCursor.getString(localCursor.getColumnIndex("date"));
    int k = str4.indexOf(":GUID:");
    byte[] arrayOfByte2;
    if (k != -1)
    {
      arrayOfByte2 = Base64.decode(str4.substring(k + 6).getBytes(), 0);
      str4 = str4.substring(0, k);
    }
    for (byte[] arrayOfByte1 = arrayOfByte2; ; arrayOfByte1 = null)
    {
      int m = localCursor.getInt(localCursor.getColumnIndex("isCome"));
      String str5 = localCursor.getString(localCursor.getColumnIndex("message"));
      String str6 = localCursor.getString(localCursor.getColumnIndex("xmessage"));
      long l = localCursor.getLong(localCursor.getColumnIndex("msgid"));
      int n = localCursor.getInt(localCursor.getColumnIndex("mRate"));
      int i1 = 1;
      if (m == 1)
        i1 = 0;
      boolean bool = false;
      if (j == 1)
        bool = true;
      o localo = new o(str3, str4, str5, bool, i1);
      localo.a(arrayOfByte1);
      localo.e(str6);
      localo.a(false);
      localo.a(l);
      localo.e(i);
      localo.b(n);
      localArrayList.add(localo);
      break;
    }
  }

  public final void b()
  {
    if (this.a != null)
    {
      this.a.close();
      this.a = null;
    }
    if (this.b != null)
    {
      this.b.close();
      this.b = null;
    }
  }

  public final void b(String paramString, long paramLong, int paramInt)
  {
    d.lock();
    if ((paramString != null) && (this.a != null))
    {
      String str1 = paramString.replace('@', 'D').replace('.', 'O');
      SQLiteDatabase localSQLiteDatabase = this.a;
      String str2 = "update [_" + str1 + "] set isReach = ? where msgid= ?";
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      arrayOfObject[1] = Long.valueOf(paramLong);
      localSQLiteDatabase.execSQL(str2, arrayOfObject);
    }
    d.unlock();
  }

  public final List c(String paramString)
  {
    String str1 = paramString.replace('@', 'D').replace('.', 'O');
    ArrayList localArrayList = new ArrayList();
    this.a.execSQL("CREATE table IF NOT EXISTS _" + str1 + " (_id INTEGER PRIMARY KEY AUTOINCREMENT,toAppleId TEXT, msgid TEXT, isReach TEXT, isRead TEXT,date TEXT,isCome TEXT,message TEXT,xmessage TEXT, mRate TEXT)");
    Cursor localCursor = this.a.rawQuery("SELECT * from _" + str1, null);
    if (!localCursor.moveToNext())
    {
      localCursor.close();
      return localArrayList;
    }
    String str2 = localCursor.getString(localCursor.getColumnIndex("toAppleId"));
    int i = localCursor.getInt(localCursor.getColumnIndex("isReach"));
    int j = localCursor.getInt(localCursor.getColumnIndex("isRead"));
    String str3 = localCursor.getString(localCursor.getColumnIndex("date"));
    int k = str3.indexOf(":GUID:");
    byte[] arrayOfByte2;
    if (k != -1)
    {
      arrayOfByte2 = Base64.decode(str3.substring(k + 6).getBytes(), 0);
      str3 = str3.substring(0, k);
    }
    for (byte[] arrayOfByte1 = arrayOfByte2; ; arrayOfByte1 = null)
    {
      int m = localCursor.getInt(localCursor.getColumnIndex("isCome"));
      String str4 = localCursor.getString(localCursor.getColumnIndex("message"));
      String str5 = localCursor.getString(localCursor.getColumnIndex("xmessage"));
      long l = localCursor.getLong(localCursor.getColumnIndex("msgid"));
      int n = localCursor.getInt(localCursor.getColumnIndex("mRate"));
      int i1 = 1;
      if (m == 1)
        i1 = 0;
      boolean bool = false;
      if (j == 1)
        bool = true;
      o localo = new o(str2, str3, str4, bool, i1);
      localo.a(arrayOfByte1);
      localo.e(str5);
      localo.a(l);
      localo.e(i);
      localo.b(n);
      localArrayList.add(localo);
      break;
    }
  }

  public final void c(String paramString1, String paramString2)
  {
    String str = paramString1.replace('@', 'D').replace('.', 'O');
    this.a.execSQL("delete from _" + str + " where toAppleId = ?", new Object[] { paramString2 });
    this.b.execSQL("delete from _" + str + " where toAppleId = ?", new Object[] { paramString2 });
    f(paramString2);
  }

  public final boolean c(String paramString, long paramLong)
  {
    String str1 = paramString.replace('@', 'D').replace('.', 'O');
    SQLiteDatabase localSQLiteDatabase = this.a;
    String str2 = "_" + str1;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = paramLong;
    return localSQLiteDatabase.query(str2, null, "msgid = ? and isCome= 1", arrayOfString, null, null, null).moveToFirst();
  }

  public final void d(String paramString)
  {
    String str1 = paramString.replace('@', 'D').replace('.', 'O');
    this.a.execSQL("CREATE table IF NOT EXISTS _" + str1 + " (_id INTEGER PRIMARY KEY AUTOINCREMENT,toAppleId TEXT, msgid TEXT, isReach TEXT, isRead TEXT,date TEXT,isCome TEXT,message TEXT,xmessage TEXT, mRate TEXT)");
    SQLiteDatabase localSQLiteDatabase = this.a;
    String str2 = "update [_" + str1 + "] set isReach = ? where isReach=?";
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(7);
    arrayOfObject[1] = Integer.valueOf(8);
    localSQLiteDatabase.execSQL(str2, arrayOfObject);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.a.d
 * JD-Core Version:    0.6.2
 */