package com.a;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Base64;
import e.b;

public final class c
{
  private SQLiteDatabase a;

  public c(Context paramContext)
  {
    this.a = paramContext.openOrCreateDatabase(paramContext.getString(2131165194), 0, null);
  }

  public final void a()
  {
    this.a.close();
  }

  public final byte[] a(String paramString)
  {
    String str = paramString.replace('@', 'D').replace('.', 'O');
    this.a.execSQL("CREATE table IF NOT EXISTS KEYDB (_id INTEGER PRIMARY KEY AUTOINCREMENT,AppleId TEXT, cert TEXT, csr TEXT, fastkey TEXT,date TEXT)");
    Cursor localCursor = this.a.rawQuery("SELECT * from KEYDB", null);
    do
      if (!localCursor.moveToNext())
      {
        localCursor.close();
        return null;
      }
    while (!localCursor.getString(localCursor.getColumnIndex("AppleId")).equals(str));
    localCursor.getString(localCursor.getColumnIndex("cert"));
    localCursor.getString(localCursor.getColumnIndex("csr"));
    return b.b(Base64.decode(localCursor.getString(localCursor.getColumnIndex("fastkey")).getBytes(), 0));
  }

  public final void b(String paramString)
  {
    String str1 = paramString.replace('@', 'D').replace('.', 'O');
    this.a.execSQL("CREATE table IF NOT EXISTS PRIDB (_id INTEGER PRIMARY KEY AUTOINCREMENT,AppleId TEXT, prikey TEXT, ip TEXT, port TEXT,checkmsg TEXT, date TEXT)");
    Cursor localCursor = this.a.rawQuery("SELECT * from PRIDB", null);
    while (true)
    {
      if (!localCursor.moveToNext())
      {
        localCursor.close();
        return;
      }
      if (localCursor.getString(localCursor.getColumnIndex("AppleId")).equals(str1))
      {
        String str2 = localCursor.getString(localCursor.getColumnIndex("prikey"));
        localCursor.getString(localCursor.getColumnIndex("ip"));
        localCursor.getString(localCursor.getColumnIndex("checkmsg"));
        localCursor.getInt(localCursor.getColumnIndex("port"));
        e.c.i = b.b(Base64.decode(str2.getBytes(), 0));
      }
    }
  }

  public final void c(String paramString)
  {
    String str = paramString.replace('@', 'D').replace('.', 'O');
    this.a.execSQL("CREATE table IF NOT EXISTS PRIDB (_id INTEGER PRIMARY KEY AUTOINCREMENT,AppleId TEXT, prikey TEXT, ip TEXT, port TEXT,checkmsg TEXT, date TEXT)");
    this.a.execSQL("delete from PRIDB where AppleId = ?", new Object[] { str });
    byte[] arrayOfByte = Base64.encode(b.a(e.c.i), 0);
    SQLiteDatabase localSQLiteDatabase = this.a;
    Object[] arrayOfObject = new Object[6];
    arrayOfObject[0] = str;
    arrayOfObject[1] = new String(arrayOfByte);
    arrayOfObject[2] = "192.168.1.1";
    arrayOfObject[3] = "8080";
    arrayOfObject[4] = "Hi We are HuluWaTeam.";
    arrayOfObject[5] = Long.valueOf(e.a());
    localSQLiteDatabase.execSQL("insert into PRIDB (AppleId,prikey,ip,port,checkmsg,date) values(?,?,?,?,?,?)", arrayOfObject);
  }

  public final void d(String paramString)
  {
    String str1 = paramString.replace('@', 'D').replace('.', 'O');
    this.a.execSQL("CREATE table IF NOT EXISTS KEYDB (_id INTEGER PRIMARY KEY AUTOINCREMENT,AppleId TEXT, cert TEXT, csr TEXT, fastkey TEXT,date TEXT)");
    Cursor localCursor = this.a.rawQuery("SELECT * from KEYDB", null);
    while (true)
    {
      if (!localCursor.moveToNext())
      {
        localCursor.close();
        return;
      }
      if (localCursor.getString(localCursor.getColumnIndex("AppleId")).equals(str1))
      {
        String str2 = localCursor.getString(localCursor.getColumnIndex("cert"));
        String str3 = localCursor.getString(localCursor.getColumnIndex("csr"));
        String str4 = localCursor.getString(localCursor.getColumnIndex("fastkey"));
        e.c.d = b.b(Base64.decode(str2.getBytes(), 0));
        e.c.c = b.b(Base64.decode(str3.getBytes(), 0));
        e.c.f = b.b(Base64.decode(str4.getBytes(), 0));
      }
    }
  }

  public final void e(String paramString)
  {
    String str = paramString.replace('@', 'D').replace('.', 'O');
    this.a.execSQL("CREATE table IF NOT EXISTS KEYDB (_id INTEGER PRIMARY KEY AUTOINCREMENT,AppleId TEXT, cert TEXT, csr TEXT, fastkey TEXT,date TEXT)");
    this.a.execSQL("delete from KEYDB where AppleId = ?", new Object[] { str });
    byte[] arrayOfByte1 = Base64.encode(b.a(e.c.d), 0);
    byte[] arrayOfByte2 = Base64.encode(b.a(e.c.c), 0);
    byte[] arrayOfByte3 = Base64.encode(b.a(e.c.f), 0);
    SQLiteDatabase localSQLiteDatabase = this.a;
    Object[] arrayOfObject = new Object[5];
    arrayOfObject[0] = str;
    arrayOfObject[1] = new String(arrayOfByte1);
    arrayOfObject[2] = new String(arrayOfByte2);
    arrayOfObject[3] = new String(arrayOfByte3);
    arrayOfObject[4] = Long.valueOf(e.a());
    localSQLiteDatabase.execSQL("insert into KEYDB (AppleId,cert,csr,fastkey,date) values(?,?,?,?,?)", arrayOfObject);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.a.c
 * JD-Core Version:    0.6.2
 */