package activity;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.view.ViewPager;
import android.widget.Toast;
import c.a;

final class ai extends Handler
{
  ai(FriendListActivity paramFriendListActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 0:
    case 1:
    case 16:
    case 2:
    case 3:
    case 5:
    case 4:
    case 6:
    case 7:
    case 8:
    case 9:
    case 11:
    case 10:
    case 15:
    case 12:
    case 13:
    case 14:
      do
      {
        String str2;
        String str3;
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    return;
                    FriendListActivity.a(this.a).a();
                    this.a.a("");
                    return;
                    FriendListActivity.a(this.a, (String)paramMessage.getData().getSerializable("msg"));
                  }
                  while (FriendListActivity.b(this.a).getCurrentItem() != 1);
                  this.a.c();
                  return;
                  this.a.f();
                  return;
                  FriendListActivity.c(this.a);
                  return;
                  this.a.e();
                  return;
                  Intent localIntent4 = new Intent();
                  localIntent4.setClass(this.a.b, ReadFromCellphoneActivity.class);
                  this.a.startActivity(localIntent4);
                  return;
                }
                while (this.a.isFinishing());
                this.a.c();
                FriendListActivity.d(this.a);
                Toast.makeText(this.a.b, this.a.b.getString(2131165275), 0).show();
                return;
                new a(this.a.b, FriendListActivity.e(this.a)).start();
                return;
                Intent localIntent3 = new Intent();
                localIntent3.setClass(this.a.b, aboutactivity.class);
                this.a.startActivity(localIntent3);
                return;
              }
              while (this.a.isFinishing());
              Toast.makeText(this.a.b, this.a.b.getString(2131165334), 1).show();
              return;
            }
            while (this.a.isFinishing());
            Toast.makeText(this.a.b, this.a.b.getString(2131165310), 1).show();
            return;
          }
          while (this.a.isFinishing());
          String str4 = (String)paramMessage.getData().getSerializable("msg");
          new AlertDialog.Builder(this.a.b).setTitle(this.a.b.getString(2131165335)).setMessage(this.a.b.getString(2131165336)).setPositiveButton(this.a.b.getString(2131165251), new aj(this, str4)).setNegativeButton(this.a.b.getString(2131165252), new ak(this)).create().show();
          return;
          String str1 = (String)paramMessage.getData().getSerializable("msg");
          str2 = str1.substring(0, str1.indexOf(":STOPRESONE:"));
          str3 = str1.substring(12 + str1.indexOf(":STOPRESONE:"));
        }
        while (this.a.isFinishing());
        new AlertDialog.Builder(this.a.b).setTitle(this.a.b.getString(2131165335)).setMessage(str3).setPositiveButton(this.a.b.getString(2131165251), new al(this, str2)).setNegativeButton(this.a.b.getString(2131165252), new am(this)).create().show();
        return;
        Intent localIntent2 = new Intent();
        localIntent2.setClass(this.a.b, HelpActivity.class);
        this.a.startActivity(localIntent2);
        return;
        Intent localIntent1 = new Intent();
        localIntent1.setClass(this.a.b, NotifyActivity.class);
        this.a.startActivity(localIntent1);
        return;
      }
      while (!FriendListActivity.f(this.a));
      FriendListActivity.g(this.a);
      this.a.b();
      return;
    case 17:
    }
    this.a.b();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     activity.ai
 * JD-Core Version:    0.6.2
 */