package com.umeng.common.net;

import android.os.AsyncTask;

final class e extends AsyncTask
{
  public int a;
  public String b;
  private g d;

  public e(DownloadingService paramDownloadingService, int paramInt, g paramg, String paramString)
  {
    this.a = paramInt;
    this.d = paramg;
    this.b = paramString;
  }

  protected final void onPreExecute()
  {
    super.onPreExecute();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.umeng.common.net.e
 * JD-Core Version:    0.6.2
 */