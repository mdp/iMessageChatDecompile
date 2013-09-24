package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.Html;
import android.text.Spanned;
import android.util.Log;
import java.util.ArrayList;

public class ShareCompat$IntentReader
{
  private static final String TAG = "IntentReader";
  private Activity mActivity;
  private ComponentName mCallingActivity;
  private String mCallingPackage;
  private Intent mIntent;
  private ArrayList mStreams;

  private ShareCompat$IntentReader(Activity paramActivity)
  {
    this.mActivity = paramActivity;
    this.mIntent = paramActivity.getIntent();
    this.mCallingPackage = ShareCompat.getCallingPackage(paramActivity);
    this.mCallingActivity = ShareCompat.getCallingActivity(paramActivity);
  }

  public static IntentReader from(Activity paramActivity)
  {
    return new IntentReader(paramActivity);
  }

  public ComponentName getCallingActivity()
  {
    return this.mCallingActivity;
  }

  public Drawable getCallingActivityIcon()
  {
    if (this.mCallingActivity == null)
      return null;
    PackageManager localPackageManager = this.mActivity.getPackageManager();
    try
    {
      Drawable localDrawable = localPackageManager.getActivityIcon(this.mCallingActivity);
      return localDrawable;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      Log.e("IntentReader", "Could not retrieve icon for calling activity", localNameNotFoundException);
    }
    return null;
  }

  public Drawable getCallingApplicationIcon()
  {
    if (this.mCallingPackage == null)
      return null;
    PackageManager localPackageManager = this.mActivity.getPackageManager();
    try
    {
      Drawable localDrawable = localPackageManager.getApplicationIcon(this.mCallingPackage);
      return localDrawable;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      Log.e("IntentReader", "Could not retrieve icon for calling application", localNameNotFoundException);
    }
    return null;
  }

  public CharSequence getCallingApplicationLabel()
  {
    if (this.mCallingPackage == null)
      return null;
    PackageManager localPackageManager = this.mActivity.getPackageManager();
    try
    {
      CharSequence localCharSequence = localPackageManager.getApplicationLabel(localPackageManager.getApplicationInfo(this.mCallingPackage, 0));
      return localCharSequence;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      Log.e("IntentReader", "Could not retrieve label for calling application", localNameNotFoundException);
    }
    return null;
  }

  public String getCallingPackage()
  {
    return this.mCallingPackage;
  }

  public String[] getEmailBcc()
  {
    return this.mIntent.getStringArrayExtra("android.intent.extra.BCC");
  }

  public String[] getEmailCc()
  {
    return this.mIntent.getStringArrayExtra("android.intent.extra.CC");
  }

  public String[] getEmailTo()
  {
    return this.mIntent.getStringArrayExtra("android.intent.extra.EMAIL");
  }

  public String getHtmlText()
  {
    String str = this.mIntent.getStringExtra("android.intent.extra.HTML_TEXT");
    if (this.mIntent == null)
    {
      CharSequence localCharSequence = getText();
      if ((localCharSequence instanceof Spanned))
        return Html.toHtml((Spanned)localCharSequence);
      if (localCharSequence != null)
        return ShareCompat.access$000().escapeHtml(localCharSequence);
    }
    return str;
  }

  public Uri getStream()
  {
    return (Uri)this.mIntent.getParcelableExtra("android.intent.extra.STREAM");
  }

  public Uri getStream(int paramInt)
  {
    if ((this.mStreams == null) && (isMultipleShare()))
      this.mStreams = this.mIntent.getParcelableArrayListExtra("android.intent.extra.STREAM");
    if (this.mStreams != null)
      return (Uri)this.mStreams.get(paramInt);
    if (paramInt == 0)
      return (Uri)this.mIntent.getParcelableExtra("android.intent.extra.STREAM");
    throw new IndexOutOfBoundsException("Stream items available: " + getStreamCount() + " index requested: " + paramInt);
  }

  public int getStreamCount()
  {
    if ((this.mStreams == null) && (isMultipleShare()))
      this.mStreams = this.mIntent.getParcelableArrayListExtra("android.intent.extra.STREAM");
    if (this.mStreams != null)
      return this.mStreams.size();
    if (this.mIntent.hasExtra("android.intent.extra.STREAM"))
      return 1;
    return 0;
  }

  public String getSubject()
  {
    return this.mIntent.getStringExtra("android.intent.extra.SUBJECT");
  }

  public CharSequence getText()
  {
    return this.mIntent.getCharSequenceExtra("android.intent.extra.TEXT");
  }

  public String getType()
  {
    return this.mIntent.getType();
  }

  public boolean isMultipleShare()
  {
    return this.mIntent.getAction().equals("android.intent.action.SEND_MULTIPLE");
  }

  public boolean isShareIntent()
  {
    String str = this.mIntent.getAction();
    return (str.equals("android.intent.action.SEND")) || (str.equals("android.intent.action.SEND_MULTIPLE"));
  }

  public boolean isSingleShare()
  {
    return this.mIntent.getAction().equals("android.intent.action.SEND");
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.ShareCompat.IntentReader
 * JD-Core Version:    0.6.2
 */