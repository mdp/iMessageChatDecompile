package com.a;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.c.l;

public final class g
{
  private b a;

  public g(Context paramContext)
  {
    this.a = new b(paramContext);
  }

  public final void a(l paraml)
  {
    SQLiteDatabase localSQLiteDatabase = this.a.getReadableDatabase();
    String[] arrayOfString = new String[1];
    arrayOfString[0] = paraml.a();
    Cursor localCursor = localSQLiteDatabase.rawQuery("select * from user where id=?", arrayOfString);
    if (localCursor.moveToFirst())
      paraml.a(localCursor.getInt(localCursor.getColumnIndex("img")));
    while (true)
    {
      localSQLiteDatabase.close();
      return;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = paraml.a();
      arrayOfObject[1] = Integer.valueOf(paraml.b());
      localSQLiteDatabase.execSQL("insert into user (id,img) values(?,?)", arrayOfObject);
    }
  }

  public final void a(String paramString)
  {
    SQLiteDatabase localSQLiteDatabase = this.a.getWritableDatabase();
    String[] arrayOfString = new String[1];
    arrayOfString[0] = paramString;
    localSQLiteDatabase.rawQuery("delete from user where id=?", arrayOfString);
    localSQLiteDatabase.close();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.a.g
 * JD-Core Version:    0.6.2
 */