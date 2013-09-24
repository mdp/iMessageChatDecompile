package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.content.Loader;
import android.support.v4.content.Loader.OnLoadCompleteListener;
import android.support.v4.util.DebugUtils;
import android.support.v4.util.SparseArrayCompat;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

final class LoaderManagerImpl$LoaderInfo
  implements Loader.OnLoadCompleteListener
{
  final Bundle mArgs;
  LoaderManager.LoaderCallbacks mCallbacks;
  Object mData;
  boolean mDeliveredData;
  boolean mDestroyed;
  boolean mHaveData;
  final int mId;
  boolean mListenerRegistered;
  Loader mLoader;
  LoaderInfo mPendingLoader;
  boolean mReportNextStart;
  boolean mRetaining;
  boolean mRetainingStarted;
  boolean mStarted;

  public LoaderManagerImpl$LoaderInfo(LoaderManagerImpl paramLoaderManagerImpl, int paramInt, Bundle paramBundle, LoaderManager.LoaderCallbacks paramLoaderCallbacks)
  {
    this.mId = paramInt;
    this.mArgs = paramBundle;
    this.mCallbacks = paramLoaderCallbacks;
  }

  final void callOnLoadFinished(Loader paramLoader, Object paramObject)
  {
    String str2;
    if (this.mCallbacks != null)
    {
      if (this.this$0.mActivity == null)
        break label161;
      str2 = this.this$0.mActivity.mFragments.mNoTransactionsBecause;
      this.this$0.mActivity.mFragments.mNoTransactionsBecause = "onLoadFinished";
    }
    label161: for (String str1 = str2; ; str1 = null)
      try
      {
        if (LoaderManagerImpl.DEBUG)
          Log.v("LoaderManager", "  onLoadFinished in " + paramLoader + ": " + paramLoader.dataToString(paramObject));
        this.mCallbacks.onLoadFinished(paramLoader, paramObject);
        if (this.this$0.mActivity != null)
          this.this$0.mActivity.mFragments.mNoTransactionsBecause = str1;
        this.mDeliveredData = true;
        return;
      }
      finally
      {
        if (this.this$0.mActivity != null)
          this.this$0.mActivity.mFragments.mNoTransactionsBecause = str1;
      }
  }

  final void destroy()
  {
    if (LoaderManagerImpl.DEBUG)
      Log.v("LoaderManager", "  Destroying: " + this);
    this.mDestroyed = true;
    boolean bool = this.mDeliveredData;
    this.mDeliveredData = false;
    String str1;
    if ((this.mCallbacks != null) && (this.mLoader != null) && (this.mHaveData) && (bool))
    {
      if (LoaderManagerImpl.DEBUG)
        Log.v("LoaderManager", "  Reseting: " + this);
      if (this.this$0.mActivity == null)
        break label268;
      String str2 = this.this$0.mActivity.mFragments.mNoTransactionsBecause;
      this.this$0.mActivity.mFragments.mNoTransactionsBecause = "onLoaderReset";
      str1 = str2;
    }
    while (true)
      label268: 
      try
      {
        this.mCallbacks.onLoaderReset(this.mLoader);
        if (this.this$0.mActivity != null)
          this.this$0.mActivity.mFragments.mNoTransactionsBecause = str1;
        this.mCallbacks = null;
        this.mData = null;
        this.mHaveData = false;
        if (this.mLoader != null)
        {
          if (this.mListenerRegistered)
          {
            this.mListenerRegistered = false;
            this.mLoader.unregisterListener(this);
          }
          this.mLoader.reset();
        }
        if (this.mPendingLoader != null)
          this = this.mPendingLoader;
      }
      finally
      {
        if (this.this$0.mActivity != null)
          this.this$0.mActivity.mFragments.mNoTransactionsBecause = str1;
      }
  }

  public final void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    while (true)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mId=");
      paramPrintWriter.print(this.mId);
      paramPrintWriter.print(" mArgs=");
      paramPrintWriter.println(this.mArgs);
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mCallbacks=");
      paramPrintWriter.println(this.mCallbacks);
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mLoader=");
      paramPrintWriter.println(this.mLoader);
      if (this.mLoader != null)
        this.mLoader.dump(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
      if ((this.mHaveData) || (this.mDeliveredData))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mHaveData=");
        paramPrintWriter.print(this.mHaveData);
        paramPrintWriter.print("  mDeliveredData=");
        paramPrintWriter.println(this.mDeliveredData);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mData=");
        paramPrintWriter.println(this.mData);
      }
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mStarted=");
      paramPrintWriter.print(this.mStarted);
      paramPrintWriter.print(" mReportNextStart=");
      paramPrintWriter.print(this.mReportNextStart);
      paramPrintWriter.print(" mDestroyed=");
      paramPrintWriter.println(this.mDestroyed);
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mRetaining=");
      paramPrintWriter.print(this.mRetaining);
      paramPrintWriter.print(" mRetainingStarted=");
      paramPrintWriter.print(this.mRetainingStarted);
      paramPrintWriter.print(" mListenerRegistered=");
      paramPrintWriter.println(this.mListenerRegistered);
      if (this.mPendingLoader == null)
        break;
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Pending Loader ");
      paramPrintWriter.print(this.mPendingLoader);
      paramPrintWriter.println(":");
      this = this.mPendingLoader;
      paramString = paramString + "  ";
    }
  }

  final void finishRetain()
  {
    if (this.mRetaining)
    {
      if (LoaderManagerImpl.DEBUG)
        Log.v("LoaderManager", "  Finished Retaining: " + this);
      this.mRetaining = false;
      if ((this.mStarted != this.mRetainingStarted) && (!this.mStarted))
        stop();
    }
    if ((this.mStarted) && (this.mHaveData) && (!this.mReportNextStart))
      callOnLoadFinished(this.mLoader, this.mData);
  }

  public final void onLoadComplete(Loader paramLoader, Object paramObject)
  {
    if (LoaderManagerImpl.DEBUG)
      Log.v("LoaderManager", "onLoadComplete: " + this);
    if (this.mDestroyed)
      if (LoaderManagerImpl.DEBUG)
        Log.v("LoaderManager", "  Ignoring load complete -- destroyed");
    do
    {
      do
      {
        return;
        if (this.this$0.mLoaders.get(this.mId) == this)
          break;
      }
      while (!LoaderManagerImpl.DEBUG);
      Log.v("LoaderManager", "  Ignoring load complete -- not active");
      return;
      LoaderInfo localLoaderInfo1 = this.mPendingLoader;
      if (localLoaderInfo1 != null)
      {
        if (LoaderManagerImpl.DEBUG)
          Log.v("LoaderManager", "  Switching to pending loader: " + localLoaderInfo1);
        this.mPendingLoader = null;
        this.this$0.mLoaders.put(this.mId, null);
        destroy();
        this.this$0.installLoader(localLoaderInfo1);
        return;
      }
      if ((this.mData != paramObject) || (!this.mHaveData))
      {
        this.mData = paramObject;
        this.mHaveData = true;
        if (this.mStarted)
          callOnLoadFinished(paramLoader, paramObject);
      }
      LoaderInfo localLoaderInfo2 = (LoaderInfo)this.this$0.mInactiveLoaders.get(this.mId);
      if ((localLoaderInfo2 != null) && (localLoaderInfo2 != this))
      {
        localLoaderInfo2.mDeliveredData = false;
        localLoaderInfo2.destroy();
        this.this$0.mInactiveLoaders.remove(this.mId);
      }
    }
    while ((this.this$0.mActivity == null) || (this.this$0.hasRunningLoaders()));
    this.this$0.mActivity.mFragments.startPendingDeferredFragments();
  }

  final void reportStart()
  {
    if ((this.mStarted) && (this.mReportNextStart))
    {
      this.mReportNextStart = false;
      if (this.mHaveData)
        callOnLoadFinished(this.mLoader, this.mData);
    }
  }

  final void retain()
  {
    if (LoaderManagerImpl.DEBUG)
      Log.v("LoaderManager", "  Retaining: " + this);
    this.mRetaining = true;
    this.mRetainingStarted = this.mStarted;
    this.mStarted = false;
    this.mCallbacks = null;
  }

  final void start()
  {
    if ((this.mRetaining) && (this.mRetainingStarted))
      this.mStarted = true;
    do
    {
      do
        return;
      while (this.mStarted);
      this.mStarted = true;
      if (LoaderManagerImpl.DEBUG)
        Log.v("LoaderManager", "  Starting: " + this);
      if ((this.mLoader == null) && (this.mCallbacks != null))
        this.mLoader = this.mCallbacks.onCreateLoader(this.mId, this.mArgs);
    }
    while (this.mLoader == null);
    if ((this.mLoader.getClass().isMemberClass()) && (!Modifier.isStatic(this.mLoader.getClass().getModifiers())))
      throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + this.mLoader);
    if (!this.mListenerRegistered)
    {
      this.mLoader.registerListener(this.mId, this);
      this.mListenerRegistered = true;
    }
    this.mLoader.startLoading();
  }

  final void stop()
  {
    if (LoaderManagerImpl.DEBUG)
      Log.v("LoaderManager", "  Stopping: " + this);
    this.mStarted = false;
    if ((!this.mRetaining) && (this.mLoader != null) && (this.mListenerRegistered))
    {
      this.mListenerRegistered = false;
      this.mLoader.unregisterListener(this);
      this.mLoader.stopLoading();
    }
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    localStringBuilder.append("LoaderInfo{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" #");
    localStringBuilder.append(this.mId);
    localStringBuilder.append(" : ");
    DebugUtils.buildShortClassTag(this.mLoader, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.LoaderManagerImpl.LoaderInfo
 * JD-Core Version:    0.6.2
 */