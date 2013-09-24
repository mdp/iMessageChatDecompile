package android.support.v4.app;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

class TaskStackBuilder$TaskStackBuilderImplBase
  implements TaskStackBuilder.TaskStackBuilderImpl
{
  public PendingIntent getPendingIntent(Context paramContext, Intent[] paramArrayOfIntent, int paramInt1, int paramInt2, Bundle paramBundle)
  {
    Intent localIntent = new Intent(paramArrayOfIntent[(-1 + paramArrayOfIntent.length)]);
    localIntent.addFlags(268435456);
    return PendingIntent.getActivity(paramContext, paramInt1, localIntent, paramInt2);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.TaskStackBuilder.TaskStackBuilderImplBase
 * JD-Core Version:    0.6.2
 */