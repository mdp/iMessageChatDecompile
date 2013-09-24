package android.support.v4.app;

import android.app.Notification;

public abstract class NotificationCompat$Style
{
  CharSequence mBigContentTitle;
  NotificationCompat.Builder mBuilder;
  CharSequence mSummaryText;
  boolean mSummaryTextSet = false;

  public Notification build()
  {
    NotificationCompat.Builder localBuilder = this.mBuilder;
    Notification localNotification = null;
    if (localBuilder != null)
      localNotification = this.mBuilder.build();
    return localNotification;
  }

  public void setBuilder(NotificationCompat.Builder paramBuilder)
  {
    if (this.mBuilder != paramBuilder)
    {
      this.mBuilder = paramBuilder;
      if (this.mBuilder != null)
        this.mBuilder.setStyle(this);
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.NotificationCompat.Style
 * JD-Core Version:    0.6.2
 */