package com.b;

import activity.MyApplication;
import activity.z;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract.CommonDataKinds.Phone;
import android.text.TextUtils;
import android.util.Log;
import com.a.f;
import com.c.i;
import d.w;

public final class v extends Thread
{
  private static final String[] c = { "display_name", "data1", "photo_id", "contact_id" };
  protected com.a.a a;
  private f b;
  private Context d;
  private MyApplication e;
  private com.d.a f;
  private String g;
  private boolean h = false;

  public v(Context paramContext, String paramString)
  {
    this.g = paramString;
    this.d = paramContext;
    this.h = false;
  }

  private boolean a(String paramString)
  {
    w localw = new w(paramString, null);
    String str = this.f.b();
    i locali = this.b.a(str, paramString);
    return ((locali != null) && (locali.d != 0)) || (localw.b(str, this.b) == 0);
  }

  private void b()
  {
    ContentResolver localContentResolver = this.d.getContentResolver();
    Cursor localCursor1 = localContentResolver.query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, c, null, null, null);
    Cursor localCursor2 = localContentResolver.query(Uri.parse("content://icc/adn"), c, null, null, null);
    if (localCursor1 != null);
    for (int i = localCursor1.getCount(); ; i = 0)
    {
      if (localCursor2 != null);
      for (int j = i + localCursor2.getCount(); ; j = i)
      {
        int k;
        if (localCursor1 != null)
        {
          k = 0;
          if ((!localCursor1.moveToNext()) || (this.h))
            localCursor1.close();
        }
        while (true)
        {
          if (localCursor2 != null);
          while (true)
          {
            if ((!localCursor2.moveToNext()) || (this.h))
            {
              localCursor2.close();
              return;
              k++;
              String str3 = localCursor1.getString(1);
              if (TextUtils.isEmpty(str3))
                break;
              String str4 = localCursor1.getString(0);
              if (!str3.startsWith("+"))
                str3 = this.g + str3;
              z localz2 = new z();
              localz2.a(str3);
              localz2.d();
              localz2.b(str4);
              if ((this.a != null) && (a(str3)))
                this.a.a(localz2);
              Intent localIntent2 = new Intent();
              localIntent2.setAction("com.way.readcellphone");
              int n = (int)(100.0F * (1.0F * k / j));
              localIntent2.putExtra("message", n);
              this.d.sendBroadcast(localIntent2);
              this.e.a(n);
              break;
            }
            k++;
            String str1 = localCursor2.getString(1);
            if (!TextUtils.isEmpty(str1))
            {
              String str2 = localCursor2.getString(0);
              if (!str1.startsWith("+"))
                str1 = this.g + str1;
              z localz1 = new z();
              localz1.a(str1);
              localz1.d();
              localz1.b(str2);
              if ((this.a != null) && (a(str1)))
                this.a.a(localz1);
              Intent localIntent1 = new Intent();
              localIntent1.setAction("com.way.readcellphone");
              int m = (int)(100.0F * (1.0F * k / j));
              localIntent1.putExtra("message", m);
              this.d.sendBroadcast(localIntent1);
              this.e.a(m);
            }
          }
          k = 0;
        }
      }
    }
  }

  public final void a()
  {
    this.h = true;
    try
    {
      notify();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void run()
  {
    this.f = new com.d.a(this.d, "saveUser");
    this.e = ((MyApplication)this.d.getApplicationContext());
    Log.d("country Number", " " + this.g);
    this.b = new f(this.d);
    this.a = new com.a.a(this.d);
    b();
    this.a.b();
    this.b.a();
    Intent localIntent = new Intent();
    localIntent.setAction("com.way.readcellphonesuccess");
    localIntent.putExtra("message", "");
    this.d.sendBroadcast(localIntent);
    this.e.a(-1);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.b.v
 * JD-Core Version:    0.6.2
 */