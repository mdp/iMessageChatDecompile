package com.umeng.common.net;

import android.widget.Toast;
import com.umeng.common.c;

final class p
  implements Runnable
{
  p(b paramb)
  {
  }

  public final void run()
  {
    DownloadingService localDownloadingService = this.a.a;
    c.a(b.a(this.a));
    Toast.makeText(localDownloadingService, c.d("umeng_common_download_failed"), 0).show();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.umeng.common.net.p
 * JD-Core Version:    0.6.2
 */