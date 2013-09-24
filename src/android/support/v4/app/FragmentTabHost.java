package android.support.v4.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TabHost;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabHost.TabSpec;
import android.widget.TabWidget;
import java.util.ArrayList;

public class FragmentTabHost extends TabHost
  implements TabHost.OnTabChangeListener
{
  private boolean mAttached;
  private int mContainerId;
  private Context mContext;
  private FragmentManager mFragmentManager;
  private FragmentTabHost.TabInfo mLastTab;
  private TabHost.OnTabChangeListener mOnTabChangeListener;
  private FrameLayout mRealTabContent;
  private final ArrayList mTabs = new ArrayList();

  public FragmentTabHost(Context paramContext)
  {
    super(paramContext, null);
    initFragmentTabHost(paramContext, null);
  }

  public FragmentTabHost(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initFragmentTabHost(paramContext, paramAttributeSet);
  }

  private FragmentTransaction doTabChanged(String paramString, FragmentTransaction paramFragmentTransaction)
  {
    Object localObject1 = null;
    int i = 0;
    Object localObject2;
    if (i < this.mTabs.size())
    {
      localObject2 = (FragmentTabHost.TabInfo)this.mTabs.get(i);
      if (!FragmentTabHost.TabInfo.access$200((FragmentTabHost.TabInfo)localObject2).equals(paramString))
        break label199;
    }
    while (true)
    {
      i++;
      localObject1 = localObject2;
      break;
      if (localObject1 == null)
        throw new IllegalStateException("No tab known for tag " + paramString);
      if (this.mLastTab != localObject1)
      {
        if (paramFragmentTransaction == null)
          paramFragmentTransaction = this.mFragmentManager.beginTransaction();
        if ((this.mLastTab != null) && (FragmentTabHost.TabInfo.access$100(this.mLastTab) != null))
          paramFragmentTransaction.detach(FragmentTabHost.TabInfo.access$100(this.mLastTab));
        if (localObject1 != null)
        {
          if (FragmentTabHost.TabInfo.access$100(localObject1) != null)
            break label187;
          FragmentTabHost.TabInfo.access$102(localObject1, Fragment.instantiate(this.mContext, FragmentTabHost.TabInfo.access$300(localObject1).getName(), FragmentTabHost.TabInfo.access$400(localObject1)));
          paramFragmentTransaction.add(this.mContainerId, FragmentTabHost.TabInfo.access$100(localObject1), FragmentTabHost.TabInfo.access$200(localObject1));
        }
      }
      while (true)
      {
        this.mLastTab = localObject1;
        return paramFragmentTransaction;
        label187: paramFragmentTransaction.attach(FragmentTabHost.TabInfo.access$100(localObject1));
      }
      label199: localObject2 = localObject1;
    }
  }

  private void ensureContent()
  {
    if (this.mRealTabContent == null)
    {
      this.mRealTabContent = ((FrameLayout)findViewById(this.mContainerId));
      if (this.mRealTabContent == null)
        throw new IllegalStateException("No tab content FrameLayout found for id " + this.mContainerId);
    }
  }

  private void initFragmentTabHost(Context paramContext, AttributeSet paramAttributeSet)
  {
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, new int[] { 16842995 }, 0, 0);
    this.mContainerId = localTypedArray.getResourceId(0, 0);
    localTypedArray.recycle();
    super.setOnTabChangedListener(this);
    if (findViewById(16908307) == null)
    {
      LinearLayout localLinearLayout = new LinearLayout(paramContext);
      localLinearLayout.setOrientation(1);
      addView(localLinearLayout, new FrameLayout.LayoutParams(-1, -1));
      TabWidget localTabWidget = new TabWidget(paramContext);
      localTabWidget.setId(16908307);
      localTabWidget.setOrientation(0);
      localLinearLayout.addView(localTabWidget, new LinearLayout.LayoutParams(-1, -2, 0.0F));
      FrameLayout localFrameLayout1 = new FrameLayout(paramContext);
      localFrameLayout1.setId(16908305);
      localLinearLayout.addView(localFrameLayout1, new LinearLayout.LayoutParams(0, 0, 0.0F));
      FrameLayout localFrameLayout2 = new FrameLayout(paramContext);
      this.mRealTabContent = localFrameLayout2;
      this.mRealTabContent.setId(this.mContainerId);
      localLinearLayout.addView(localFrameLayout2, new LinearLayout.LayoutParams(-1, 0, 1.0F));
    }
  }

  public void addTab(TabHost.TabSpec paramTabSpec, Class paramClass, Bundle paramBundle)
  {
    paramTabSpec.setContent(new FragmentTabHost.DummyTabFactory(this.mContext));
    String str = paramTabSpec.getTag();
    FragmentTabHost.TabInfo localTabInfo = new FragmentTabHost.TabInfo(str, paramClass, paramBundle);
    if (this.mAttached)
    {
      FragmentTabHost.TabInfo.access$102(localTabInfo, this.mFragmentManager.findFragmentByTag(str));
      if ((FragmentTabHost.TabInfo.access$100(localTabInfo) != null) && (!FragmentTabHost.TabInfo.access$100(localTabInfo).isDetached()))
      {
        FragmentTransaction localFragmentTransaction = this.mFragmentManager.beginTransaction();
        localFragmentTransaction.detach(FragmentTabHost.TabInfo.access$100(localTabInfo));
        localFragmentTransaction.commit();
      }
    }
    this.mTabs.add(localTabInfo);
    addTab(paramTabSpec);
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    String str = getCurrentTabTag();
    FragmentTransaction localFragmentTransaction1 = null;
    int i = 0;
    if (i < this.mTabs.size())
    {
      FragmentTabHost.TabInfo localTabInfo = (FragmentTabHost.TabInfo)this.mTabs.get(i);
      FragmentTabHost.TabInfo.access$102(localTabInfo, this.mFragmentManager.findFragmentByTag(FragmentTabHost.TabInfo.access$200(localTabInfo)));
      if ((FragmentTabHost.TabInfo.access$100(localTabInfo) != null) && (!FragmentTabHost.TabInfo.access$100(localTabInfo).isDetached()))
      {
        if (!FragmentTabHost.TabInfo.access$200(localTabInfo).equals(str))
          break label98;
        this.mLastTab = localTabInfo;
      }
      while (true)
      {
        i++;
        break;
        label98: if (localFragmentTransaction1 == null)
          localFragmentTransaction1 = this.mFragmentManager.beginTransaction();
        localFragmentTransaction1.detach(FragmentTabHost.TabInfo.access$100(localTabInfo));
      }
    }
    this.mAttached = true;
    FragmentTransaction localFragmentTransaction2 = doTabChanged(str, localFragmentTransaction1);
    if (localFragmentTransaction2 != null)
    {
      localFragmentTransaction2.commit();
      this.mFragmentManager.executePendingTransactions();
    }
  }

  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    this.mAttached = false;
  }

  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    FragmentTabHost.SavedState localSavedState = (FragmentTabHost.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    setCurrentTabByTag(localSavedState.curTab);
  }

  protected Parcelable onSaveInstanceState()
  {
    FragmentTabHost.SavedState localSavedState = new FragmentTabHost.SavedState(super.onSaveInstanceState());
    localSavedState.curTab = getCurrentTabTag();
    return localSavedState;
  }

  public void onTabChanged(String paramString)
  {
    if (this.mAttached)
    {
      FragmentTransaction localFragmentTransaction = doTabChanged(paramString, null);
      if (localFragmentTransaction != null)
        localFragmentTransaction.commit();
    }
    if (this.mOnTabChangeListener != null)
      this.mOnTabChangeListener.onTabChanged(paramString);
  }

  public void setOnTabChangedListener(TabHost.OnTabChangeListener paramOnTabChangeListener)
  {
    this.mOnTabChangeListener = paramOnTabChangeListener;
  }

  public void setup()
  {
    throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
  }

  public void setup(Context paramContext, FragmentManager paramFragmentManager)
  {
    super.setup();
    this.mContext = paramContext;
    this.mFragmentManager = paramFragmentManager;
    ensureContent();
  }

  public void setup(Context paramContext, FragmentManager paramFragmentManager, int paramInt)
  {
    super.setup();
    this.mContext = paramContext;
    this.mFragmentManager = paramFragmentManager;
    this.mContainerId = paramInt;
    ensureContent();
    this.mRealTabContent.setId(paramInt);
    if (getId() == -1)
      setId(16908306);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.FragmentTabHost
 * JD-Core Version:    0.6.2
 */