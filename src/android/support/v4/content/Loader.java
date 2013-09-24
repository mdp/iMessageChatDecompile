package android.support.v4.content;

import android.content.Context;
import android.support.v4.util.DebugUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class Loader
{
  boolean mAbandoned = false;
  boolean mContentChanged = false;
  Context mContext;
  int mId;
  Loader.OnLoadCompleteListener mListener;
  boolean mReset = true;
  boolean mStarted = false;

  public Loader(Context paramContext)
  {
    this.mContext = paramContext.getApplicationContext();
  }

  public void abandon()
  {
    this.mAbandoned = true;
    onAbandon();
  }

  public String dataToString(Object paramObject)
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    DebugUtils.buildShortClassTag(paramObject, localStringBuilder);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }

  public void deliverResult(Object paramObject)
  {
    if (this.mListener != null)
      this.mListener.onLoadComplete(this, paramObject);
  }

  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mId=");
    paramPrintWriter.print(this.mId);
    paramPrintWriter.print(" mListener=");
    paramPrintWriter.println(this.mListener);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mStarted=");
    paramPrintWriter.print(this.mStarted);
    paramPrintWriter.print(" mContentChanged=");
    paramPrintWriter.print(this.mContentChanged);
    paramPrintWriter.print(" mAbandoned=");
    paramPrintWriter.print(this.mAbandoned);
    paramPrintWriter.print(" mReset=");
    paramPrintWriter.println(this.mReset);
  }

  public void forceLoad()
  {
    onForceLoad();
  }

  public Context getContext()
  {
    return this.mContext;
  }

  public int getId()
  {
    return this.mId;
  }

  public boolean isAbandoned()
  {
    return this.mAbandoned;
  }

  public boolean isReset()
  {
    return this.mReset;
  }

  public boolean isStarted()
  {
    return this.mStarted;
  }

  protected void onAbandon()
  {
  }

  public void onContentChanged()
  {
    if (this.mStarted)
    {
      forceLoad();
      return;
    }
    this.mContentChanged = true;
  }

  protected void onForceLoad()
  {
  }

  protected void onReset()
  {
  }

  protected void onStartLoading()
  {
  }

  protected void onStopLoading()
  {
  }

  public void registerListener(int paramInt, Loader.OnLoadCompleteListener paramOnLoadCompleteListener)
  {
    if (this.mListener != null)
      throw new IllegalStateException("There is already a listener registered");
    this.mListener = paramOnLoadCompleteListener;
    this.mId = paramInt;
  }

  public void reset()
  {
    onReset();
    this.mReset = true;
    this.mStarted = false;
    this.mAbandoned = false;
    this.mContentChanged = false;
  }

  public final void startLoading()
  {
    this.mStarted = true;
    this.mReset = false;
    this.mAbandoned = false;
    onStartLoading();
  }

  public void stopLoading()
  {
    this.mStarted = false;
    onStopLoading();
  }

  public boolean takeContentChanged()
  {
    boolean bool = this.mContentChanged;
    this.mContentChanged = false;
    return bool;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    DebugUtils.buildShortClassTag(this, localStringBuilder);
    localStringBuilder.append(" id=");
    localStringBuilder.append(this.mId);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }

  public void unregisterListener(Loader.OnLoadCompleteListener paramOnLoadCompleteListener)
  {
    if (this.mListener == null)
      throw new IllegalStateException("No listener register");
    if (this.mListener != paramOnLoadCompleteListener)
      throw new IllegalArgumentException("Attempting to unregister the wrong listener");
    this.mListener = null;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.content.Loader
 * JD-Core Version:    0.6.2
 */