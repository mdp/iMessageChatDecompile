package android.support.v4.widget;

import android.app.SearchManager;
import android.content.ComponentName;
import android.content.Context;
import android.view.View;
import android.widget.SearchView;
import android.widget.SearchView.OnCloseListener;
import android.widget.SearchView.OnQueryTextListener;

class SearchViewCompatHoneycomb
{
  public static CharSequence getQuery(View paramView)
  {
    return ((SearchView)paramView).getQuery();
  }

  public static boolean isIconified(View paramView)
  {
    return ((SearchView)paramView).isIconified();
  }

  public static boolean isQueryRefinementEnabled(View paramView)
  {
    return ((SearchView)paramView).isQueryRefinementEnabled();
  }

  public static boolean isSubmitButtonEnabled(View paramView)
  {
    return ((SearchView)paramView).isSubmitButtonEnabled();
  }

  public static Object newOnCloseListener(SearchViewCompatHoneycomb.OnCloseListenerCompatBridge paramOnCloseListenerCompatBridge)
  {
    return new SearchViewCompatHoneycomb.2(paramOnCloseListenerCompatBridge);
  }

  public static Object newOnQueryTextListener(SearchViewCompatHoneycomb.OnQueryTextListenerCompatBridge paramOnQueryTextListenerCompatBridge)
  {
    return new SearchViewCompatHoneycomb.1(paramOnQueryTextListenerCompatBridge);
  }

  public static View newSearchView(Context paramContext)
  {
    return new SearchView(paramContext);
  }

  public static void setIconified(View paramView, boolean paramBoolean)
  {
    ((SearchView)paramView).setIconified(paramBoolean);
  }

  public static void setMaxWidth(View paramView, int paramInt)
  {
    ((SearchView)paramView).setMaxWidth(paramInt);
  }

  public static void setOnCloseListener(Object paramObject1, Object paramObject2)
  {
    ((SearchView)paramObject1).setOnCloseListener((SearchView.OnCloseListener)paramObject2);
  }

  public static void setOnQueryTextListener(Object paramObject1, Object paramObject2)
  {
    ((SearchView)paramObject1).setOnQueryTextListener((SearchView.OnQueryTextListener)paramObject2);
  }

  public static void setQuery(View paramView, CharSequence paramCharSequence, boolean paramBoolean)
  {
    ((SearchView)paramView).setQuery(paramCharSequence, paramBoolean);
  }

  public static void setQueryHint(View paramView, CharSequence paramCharSequence)
  {
    ((SearchView)paramView).setQueryHint(paramCharSequence);
  }

  public static void setQueryRefinementEnabled(View paramView, boolean paramBoolean)
  {
    ((SearchView)paramView).setQueryRefinementEnabled(paramBoolean);
  }

  public static void setSearchableInfo(View paramView, ComponentName paramComponentName)
  {
    SearchView localSearchView = (SearchView)paramView;
    localSearchView.setSearchableInfo(((SearchManager)localSearchView.getContext().getSystemService("search")).getSearchableInfo(paramComponentName));
  }

  public static void setSubmitButtonEnabled(View paramView, boolean paramBoolean)
  {
    ((SearchView)paramView).setSubmitButtonEnabled(paramBoolean);
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.SearchViewCompatHoneycomb
 * JD-Core Version:    0.6.2
 */