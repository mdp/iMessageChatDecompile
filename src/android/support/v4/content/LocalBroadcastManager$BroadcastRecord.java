package android.support.v4.content;

import android.content.Intent;
import java.util.ArrayList;

class LocalBroadcastManager$BroadcastRecord
{
  final Intent intent;
  final ArrayList receivers;

  LocalBroadcastManager$BroadcastRecord(Intent paramIntent, ArrayList paramArrayList)
  {
    this.intent = paramIntent;
    this.receivers = paramArrayList;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.content.LocalBroadcastManager.BroadcastRecord
 * JD-Core Version:    0.6.2
 */