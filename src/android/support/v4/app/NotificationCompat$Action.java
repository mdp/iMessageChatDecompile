package android.support.v4.app;

import android.app.PendingIntent;

public class NotificationCompat$Action
{
  public PendingIntent actionIntent;
  public int icon;
  public CharSequence title;

  public NotificationCompat$Action(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent)
  {
    this.icon = paramInt;
    this.title = paramCharSequence;
    this.actionIntent = paramPendingIntent;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.NotificationCompat.Action
 * JD-Core Version:    0.6.2
 */