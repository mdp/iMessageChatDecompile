package android.support.v4.app;

import android.app.Notification;
import java.util.ArrayList;
import java.util.Iterator;

class NotificationCompat$NotificationCompatImplJellybean
  implements NotificationCompat.NotificationCompatImpl
{
  public Notification build(NotificationCompat.Builder paramBuilder)
  {
    NotificationCompatJellybean localNotificationCompatJellybean = new NotificationCompatJellybean(paramBuilder.mContext, paramBuilder.mNotification, paramBuilder.mContentTitle, paramBuilder.mContentText, paramBuilder.mContentInfo, paramBuilder.mTickerView, paramBuilder.mNumber, paramBuilder.mContentIntent, paramBuilder.mFullScreenIntent, paramBuilder.mLargeIcon, paramBuilder.mProgressMax, paramBuilder.mProgress, paramBuilder.mProgressIndeterminate, paramBuilder.mUseChronometer, paramBuilder.mPriority, paramBuilder.mSubText);
    Iterator localIterator = paramBuilder.mActions.iterator();
    while (localIterator.hasNext())
    {
      NotificationCompat.Action localAction = (NotificationCompat.Action)localIterator.next();
      localNotificationCompatJellybean.addAction(localAction.icon, localAction.title, localAction.actionIntent);
    }
    if (paramBuilder.mStyle != null)
    {
      if (!(paramBuilder.mStyle instanceof NotificationCompat.BigTextStyle))
        break label177;
      NotificationCompat.BigTextStyle localBigTextStyle = (NotificationCompat.BigTextStyle)paramBuilder.mStyle;
      localNotificationCompatJellybean.addBigTextStyle(localBigTextStyle.mBigContentTitle, localBigTextStyle.mSummaryTextSet, localBigTextStyle.mSummaryText, localBigTextStyle.mBigText);
    }
    while (true)
    {
      return localNotificationCompatJellybean.build();
      label177: if ((paramBuilder.mStyle instanceof NotificationCompat.InboxStyle))
      {
        NotificationCompat.InboxStyle localInboxStyle = (NotificationCompat.InboxStyle)paramBuilder.mStyle;
        localNotificationCompatJellybean.addInboxStyle(localInboxStyle.mBigContentTitle, localInboxStyle.mSummaryTextSet, localInboxStyle.mSummaryText, localInboxStyle.mTexts);
      }
      else if ((paramBuilder.mStyle instanceof NotificationCompat.BigPictureStyle))
      {
        NotificationCompat.BigPictureStyle localBigPictureStyle = (NotificationCompat.BigPictureStyle)paramBuilder.mStyle;
        localNotificationCompatJellybean.addBigPictureStyle(localBigPictureStyle.mBigContentTitle, localBigPictureStyle.mSummaryTextSet, localBigPictureStyle.mSummaryText, localBigPictureStyle.mPicture);
      }
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.NotificationCompat.NotificationCompatImplJellybean
 * JD-Core Version:    0.6.2
 */