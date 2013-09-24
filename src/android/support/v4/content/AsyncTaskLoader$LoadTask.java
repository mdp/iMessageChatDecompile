package android.support.v4.content;

import java.util.concurrent.CountDownLatch;

final class AsyncTaskLoader$LoadTask extends ModernAsyncTask
  implements Runnable
{
  private CountDownLatch done = new CountDownLatch(1);
  Object result;
  boolean waiting;

  AsyncTaskLoader$LoadTask(AsyncTaskLoader paramAsyncTaskLoader)
  {
  }

  protected final Object doInBackground(Void[] paramArrayOfVoid)
  {
    this.result = this.this$0.onLoadInBackground();
    return this.result;
  }

  protected final void onCancelled()
  {
    try
    {
      this.this$0.dispatchOnCancelled(this, this.result);
      return;
    }
    finally
    {
      this.done.countDown();
    }
  }

  protected final void onPostExecute(Object paramObject)
  {
    try
    {
      this.this$0.dispatchOnLoadComplete(this, paramObject);
      return;
    }
    finally
    {
      this.done.countDown();
    }
  }

  public final void run()
  {
    this.waiting = false;
    this.this$0.executePendingTask();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.content.AsyncTaskLoader.LoadTask
 * JD-Core Version:    0.6.2
 */