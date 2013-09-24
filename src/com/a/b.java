package com.a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public final class b extends SQLiteOpenHelper
{
  public b(Context paramContext)
  {
    super(paramContext, paramContext.getString(2131165190), null, 1);
  }

  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE table IF NOT EXISTS user (_id INTEGER PRIMARY KEY AUTOINCREMENT, id TEXT, name TEXT, img TEXT, isOnline TEXT, _group TEXT)");
  }

  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    paramSQLiteDatabase.execSQL("ALTER TABLE user ADD COLUMN other TEXT");
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.a.b
 * JD-Core Version:    0.6.2
 */