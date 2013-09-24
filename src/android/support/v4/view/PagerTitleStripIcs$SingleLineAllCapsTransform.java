package android.support.v4.view;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.text.method.SingleLineTransformationMethod;
import android.view.View;
import java.util.Locale;

class PagerTitleStripIcs$SingleLineAllCapsTransform extends SingleLineTransformationMethod
{
  private static final String TAG = "SingleLineAllCapsTransform";
  private Locale mLocale;

  public PagerTitleStripIcs$SingleLineAllCapsTransform(Context paramContext)
  {
    this.mLocale = paramContext.getResources().getConfiguration().locale;
  }

  public CharSequence getTransformation(CharSequence paramCharSequence, View paramView)
  {
    CharSequence localCharSequence = super.getTransformation(paramCharSequence, paramView);
    if (localCharSequence != null)
      return localCharSequence.toString().toUpperCase(this.mLocale);
    return null;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.PagerTitleStripIcs.SingleLineAllCapsTransform
 * JD-Core Version:    0.6.2
 */