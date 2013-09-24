package android.support.v4.net;

import android.os.Build.VERSION;
import java.net.Socket;

public class TrafficStatsCompat
{
  private static final TrafficStatsCompat.TrafficStatsCompatImpl IMPL = new TrafficStatsCompat.BaseTrafficStatsCompatImpl();

  static
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      IMPL = new TrafficStatsCompat.IcsTrafficStatsCompatImpl();
      return;
    }
  }

  public static void clearThreadStatsTag()
  {
    IMPL.clearThreadStatsTag();
  }

  public static int getThreadStatsTag()
  {
    return IMPL.getThreadStatsTag();
  }

  public static void incrementOperationCount(int paramInt)
  {
    IMPL.incrementOperationCount(paramInt);
  }

  public static void incrementOperationCount(int paramInt1, int paramInt2)
  {
    IMPL.incrementOperationCount(paramInt1, paramInt2);
  }

  public static void setThreadStatsTag(int paramInt)
  {
    IMPL.setThreadStatsTag(paramInt);
  }

  public static void tagSocket(Socket paramSocket)
  {
    IMPL.tagSocket(paramSocket);
  }

  public static void untagSocket(Socket paramSocket)
  {
    IMPL.untagSocket(paramSocket);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.net.TrafficStatsCompat
 * JD-Core Version:    0.6.2
 */