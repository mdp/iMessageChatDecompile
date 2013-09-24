package com.a;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Base64;
import com.c.i;
import java.util.ArrayList;

public final class f
{
  private SQLiteDatabase a;
  private Context b;

  public f(Context paramContext)
  {
    this.b = paramContext;
    this.a = paramContext.openOrCreateDatabase(paramContext.getString(2131165193), 0, null);
  }

  public final i a(String paramString1, String paramString2)
  {
    String str1 = paramString1.replace('@', 'D').replace('.', 'O');
    String str2 = paramString2.replace('@', 'D').replace('.', 'O');
    this.a.execSQL("CREATE table IF NOT EXISTS _" + str1 + " (_id INTEGER PRIMARY KEY AUTOINCREMENT,toAppleId TEXT, token TEXT, setoken TEXT, identity TEXT,date TEXT)");
    Cursor localCursor = this.a.rawQuery("SELECT * from _" + str1, null);
    i locali = new i();
    locali.b = new ArrayList();
    locali.a = new ArrayList();
    locali.c = new ArrayList();
    long l;
    do
    {
      do
        if (!localCursor.moveToNext())
        {
          localCursor.close();
          locali.d = locali.b.size();
          if (locali.d != 0)
            break;
          return null;
        }
      while (!localCursor.getString(localCursor.getColumnIndex("toAppleId")).equals(str2));
      String str3 = localCursor.getString(localCursor.getColumnIndex("token"));
      String str4 = localCursor.getString(localCursor.getColumnIndex("setoken"));
      String str5 = localCursor.getString(localCursor.getColumnIndex("identity"));
      locali.b.add(Base64.decode(str3.getBytes(), 0));
      locali.a.add(Base64.decode(str4.getBytes(), 0));
      locali.c.add(Base64.decode(str5.getBytes(), 0));
      l = localCursor.getLong(localCursor.getColumnIndex("date"));
    }
    while (e.a() - l <= 3600000L);
    return null;
    return locali;
  }

  public final void a()
  {
    this.a.close();
  }

  public final void a(String paramString)
  {
    String str = paramString.replace('@', 'D').replace('.', 'O');
    this.a.execSQL("CREATE table IF NOT EXISTS _" + str + " (_id INTEGER PRIMARY KEY AUTOINCREMENT,toAppleId TEXT, token TEXT, setoken TEXT, identity TEXT,date TEXT)");
    this.a.execSQL("delete from _" + str);
  }

  public final void a(String paramString1, String paramString2, i parami)
  {
    String str1 = paramString1.replace('@', 'D').replace('.', 'O');
    String str2 = paramString2.replace('@', 'D').replace('.', 'O');
    this.a.execSQL("CREATE table IF NOT EXISTS _" + str1 + " (_id INTEGER PRIMARY KEY AUTOINCREMENT,toAppleId TEXT, token TEXT, setoken TEXT, identity TEXT,date TEXT)");
    this.a.execSQL("delete from _" + str1 + " where toAppleId = ?", new Object[] { str2 });
    for (int i = 0; ; i++)
    {
      if (i >= parami.d)
        return;
      byte[] arrayOfByte1 = Base64.encode((byte[])parami.b.get(i), 0);
      byte[] arrayOfByte2 = Base64.encode((byte[])parami.a.get(i), 0);
      byte[] arrayOfByte3 = Base64.encode((byte[])parami.c.get(i), 0);
      SQLiteDatabase localSQLiteDatabase = this.a;
      String str3 = "insert into _" + str1 + " (toAppleId,token,setoken,identity,date) values(?,?,?,?,?)";
      Object[] arrayOfObject = new Object[5];
      arrayOfObject[0] = str2;
      arrayOfObject[1] = new String(arrayOfByte1);
      arrayOfObject[2] = new String(arrayOfByte2);
      arrayOfObject[3] = new String(arrayOfByte3);
      arrayOfObject[4] = Long.valueOf(e.a());
      localSQLiteDatabase.execSQL(str3, arrayOfObject);
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.a.f
 * JD-Core Version:    0.6.2
 */