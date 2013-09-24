package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.widget.RemoteViews;
import java.util.ArrayList;

public class NotificationCompat$Builder
{
  ArrayList mActions = new ArrayList();
  CharSequence mContentInfo;
  PendingIntent mContentIntent;
  CharSequence mContentText;
  CharSequence mContentTitle;
  Context mContext;
  PendingIntent mFullScreenIntent;
  Bitmap mLargeIcon;
  Notification mNotification = new Notification();
  int mNumber;
  int mPriority;
  int mProgress;
  boolean mProgressIndeterminate;
  int mProgressMax;
  NotificationCompat.Style mStyle;
  CharSequence mSubText;
  RemoteViews mTickerView;
  boolean mUseChronometer;

  public NotificationCompat$Builder(Context paramContext)
  {
    this.mContext = paramContext;
    this.mNotification.when = System.currentTimeMillis();
    this.mNotification.audioStreamType = -1;
    this.mPriority = 0;
  }

  private void setFlag(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      Notification localNotification2 = this.mNotification;
      localNotification2.flags = (paramInt | localNotification2.flags);
      return;
    }
    Notification localNotification1 = this.mNotification;
    localNotification1.flags &= (paramInt ^ 0xFFFFFFFF);
  }

  public Builder addAction(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent)
  {
    this.mActions.add(new NotificationCompat.Action(paramInt, paramCharSequence, paramPendingIntent));
    return this;
  }

  public Notification build()
  {
    return NotificationCompat.access$000().build(this);
  }

  public Notification getNotification()
  {
    return NotificationCompat.access$000().build(this);
  }

  public Builder setAutoCancel(boolean paramBoolean)
  {
    setFlag(16, paramBoolean);
    return this;
  }

  public Builder setContent(RemoteViews paramRemoteViews)
  {
    this.mNotification.contentView = paramRemoteViews;
    return this;
  }

  public Builder setContentInfo(CharSequence paramCharSequence)
  {
    this.mContentInfo = paramCharSequence;
    return this;
  }

  public Builder setContentIntent(PendingIntent paramPendingIntent)
  {
    this.mContentIntent = paramPendingIntent;
    return this;
  }

  public Builder setContentText(CharSequence paramCharSequence)
  {
    this.mContentText = paramCharSequence;
    return this;
  }

  public Builder setContentTitle(CharSequence paramCharSequence)
  {
    this.mContentTitle = paramCharSequence;
    return this;
  }

  public Builder setDefaults(int paramInt)
  {
    this.mNotification.defaults = paramInt;
    if ((paramInt & 0x4) != 0)
    {
      Notification localNotification = this.mNotification;
      localNotification.flags = (0x1 | localNotification.flags);
    }
    return this;
  }

  public Builder setDeleteIntent(PendingIntent paramPendingIntent)
  {
    this.mNotification.deleteIntent = paramPendingIntent;
    return this;
  }

  public Builder setFullScreenIntent(PendingIntent paramPendingIntent, boolean paramBoolean)
  {
    this.mFullScreenIntent = paramPendingIntent;
    setFlag(128, paramBoolean);
    return this;
  }

  public Builder setLargeIcon(Bitmap paramBitmap)
  {
    this.mLargeIcon = paramBitmap;
    return this;
  }

  public Builder setLights(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = 1;
    this.mNotification.ledARGB = paramInt1;
    this.mNotification.ledOnMS = paramInt2;
    this.mNotification.ledOffMS = paramInt3;
    int j;
    Notification localNotification;
    int k;
    if ((this.mNotification.ledOnMS != 0) && (this.mNotification.ledOffMS != 0))
    {
      j = i;
      localNotification = this.mNotification;
      k = 0xFFFFFFFE & this.mNotification.flags;
      if (j == 0)
        break label92;
    }
    while (true)
    {
      localNotification.flags = (k | i);
      return this;
      j = 0;
      break;
      label92: i = 0;
    }
  }

  public Builder setNumber(int paramInt)
  {
    this.mNumber = paramInt;
    return this;
  }

  public Builder setOngoing(boolean paramBoolean)
  {
    setFlag(2, paramBoolean);
    return this;
  }

  public Builder setOnlyAlertOnce(boolean paramBoolean)
  {
    setFlag(8, paramBoolean);
    return this;
  }

  public Builder setPriority(int paramInt)
  {
    this.mPriority = paramInt;
    return this;
  }

  public Builder setProgress(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    this.mProgressMax = paramInt1;
    this.mProgress = paramInt2;
    this.mProgressIndeterminate = paramBoolean;
    return this;
  }

  public Builder setSmallIcon(int paramInt)
  {
    this.mNotification.icon = paramInt;
    return this;
  }

  public Builder setSmallIcon(int paramInt1, int paramInt2)
  {
    this.mNotification.icon = paramInt1;
    this.mNotification.iconLevel = paramInt2;
    return this;
  }

  public Builder setSound(Uri paramUri)
  {
    this.mNotification.sound = paramUri;
    this.mNotification.audioStreamType = -1;
    return this;
  }

  public Builder setSound(Uri paramUri, int paramInt)
  {
    this.mNotification.sound = paramUri;
    this.mNotification.audioStreamType = paramInt;
    return this;
  }

  public Builder setStyle(NotificationCompat.Style paramStyle)
  {
    if (this.mStyle != paramStyle)
    {
      this.mStyle = paramStyle;
      if (this.mStyle != null)
        this.mStyle.setBuilder(this);
    }
    return this;
  }

  public Builder setSubText(CharSequence paramCharSequence)
  {
    this.mSubText = paramCharSequence;
    return this;
  }

  public Builder setTicker(CharSequence paramCharSequence)
  {
    this.mNotification.tickerText = paramCharSequence;
    return this;
  }

  public Builder setTicker(CharSequence paramCharSequence, RemoteViews paramRemoteViews)
  {
    this.mNotification.tickerText = paramCharSequence;
    this.mTickerView = paramRemoteViews;
    return this;
  }

  public Builder setUsesChronometer(boolean paramBoolean)
  {
    this.mUseChronometer = paramBoolean;
    return this;
  }

  public Builder setVibrate(long[] paramArrayOfLong)
  {
    this.mNotification.vibrate = paramArrayOfLong;
    return this;
  }

  public Builder setWhen(long paramLong)
  {
    this.mNotification.when = paramLong;
    return this;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.NotificationCompat.Builder
 * JD-Core Version:    0.6.2
 */