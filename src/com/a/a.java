package com.a;

import activity.z;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.List;

public final class a
{
  private SQLiteDatabase a;

  public a(Context paramContext)
  {
    this.a = paramContext.openOrCreateDatabase(paramContext.getString(2131165192), 0, null);
  }

  public final List a()
  {
    ArrayList localArrayList = new ArrayList();
    this.a.execSQL("CREATE table IF NOT EXISTS contactlist (_id INTEGER PRIMARY KEY AUTOINCREMENT,AppleId TEXT, name TEXT ,img TEXT)");
    Cursor localCursor = this.a.rawQuery("SELECT * from contactlist", null);
    while (true)
    {
      if (!localCursor.moveToNext())
      {
        localCursor.close();
        return localArrayList;
      }
      localArrayList.add(new z(localCursor.getString(localCursor.getColumnIndex("AppleId")), localCursor.getString(localCursor.getColumnIndex("name")), localCursor.getInt(localCursor.getColumnIndex("img"))));
    }
  }

  public final void a(z paramz)
  {
    this.a.execSQL("CREATE table IF NOT EXISTS contactlist (_id INTEGER PRIMARY KEY AUTOINCREMENT,AppleId TEXT, name TEXT ,img TEXT)");
    SQLiteDatabase localSQLiteDatabase1 = this.a;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = paramz.a();
    if (localSQLiteDatabase1.rawQuery("SELECT * from contactlist where AppleId = ?", arrayOfString).moveToFirst())
    {
      SQLiteDatabase localSQLiteDatabase3 = this.a;
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = paramz.b();
      arrayOfObject2[1] = paramz.a();
      localSQLiteDatabase3.execSQL("update [contactlist]  set name = ? where AppleId= ?", arrayOfObject2);
      SQLiteDatabase localSQLiteDatabase4 = this.a;
      Object[] arrayOfObject3 = new Object[2];
      arrayOfObject3[0] = Integer.valueOf(paramz.e());
      arrayOfObject3[1] = paramz.a();
      localSQLiteDatabase4.execSQL("update [contactlist]  set img = ? where AppleId= ?", arrayOfObject3);
      return;
    }
    SQLiteDatabase localSQLiteDatabase2 = this.a;
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = paramz.a();
    arrayOfObject1[1] = paramz.b();
    arrayOfObject1[2] = Integer.valueOf(paramz.e());
    localSQLiteDatabase2.execSQL("insert into contactlist (AppleId,name,img) values(?,?,?)", arrayOfObject1);
  }

  public final void a(String paramString)
  {
    this.a.execSQL("CREATE table IF NOT EXISTS contactlist (_id INTEGER PRIMARY KEY AUTOINCREMENT,AppleId TEXT, name TEXT ,img TEXT)");
    this.a.execSQL("delete from contactlist where AppleId = ?", new Object[] { paramString });
  }

  public final z b(String paramString)
  {
    this.a.execSQL("CREATE table IF NOT EXISTS contactlist (_id INTEGER PRIMARY KEY AUTOINCREMENT,AppleId TEXT, name TEXT ,img TEXT)");
    SQLiteDatabase localSQLiteDatabase = this.a;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = paramString;
    Cursor localCursor = localSQLiteDatabase.rawQuery("SELECT * from contactlist where AppleId = ?", arrayOfString);
    if (localCursor.moveToFirst())
      return new z(localCursor.getString(localCursor.getColumnIndex("AppleId")), localCursor.getString(localCursor.getColumnIndex("name")), localCursor.getInt(localCursor.getColumnIndex("img")));
    return null;
  }

  public final void b()
  {
    if (this.a != null)
    {
      this.a.close();
      this.a = null;
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.a.a
 * JD-Core Version:    0.6.2
 */