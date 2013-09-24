package com.c;

import activity.z;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.media.ThumbnailUtils;
import android.text.SpannableString;
import android.text.style.ImageSpan;
import android.widget.TextView;
import com.a.a;
import java.io.File;
import java.util.ArrayList;

public final class g
{
  public static String a(String paramString, Paint paramPaint, float paramFloat)
  {
    float f = paramPaint.measureText(paramString);
    if ((paramString != null) && (paramString.length() > 0))
      if (f <= paramFloat);
    int j;
    for (int i = paramString.length(); ; i = j)
    {
      j = i - 1;
      if ((paramPaint.measureText(paramString.substring(0, i) + "...") <= paramFloat) || (j <= 0))
      {
        paramString = paramString.substring(0, j) + "...";
        return paramString;
        return null;
      }
    }
  }

  public static String a(String paramString1, a parama, String paramString2)
  {
    int i = paramString1.length();
    String str1 = "";
    int j = 0;
    if (j >= i)
      return str1;
    int k = paramString1.indexOf("||", j);
    if (k == -1)
      k = i;
    if (str1.length() > 0)
      str1 = str1 + paramString2;
    String str2 = paramString1.substring(j, k);
    z localz = parama.b(str2);
    if (localz == null);
    for (str1 = str1 + str2; ; str1 = str1 + localz.b())
    {
      j = k + 2;
      break;
    }
  }

  public static void a(TextView paramTextView, String paramString, Context paramContext)
  {
    paramTextView.setText("");
    int k;
    for (int i = 0; ; i = k + 8)
    {
      if (i >= paramString.length());
      int j;
      do
      {
        c(paramTextView, paramString.substring(i), paramContext);
        return;
        j = paramString.indexOf("STARTFILE:", i);
        k = paramString.indexOf(":ENDFILE", i);
      }
      while ((j == -1) || (k == -1));
      c(paramTextView, paramString.substring(i, j), paramContext);
      String str = paramString.substring(j + 10, k);
      paramTextView.append(str.substring(1 + str.lastIndexOf("/"), str.length()));
    }
  }

  public static void b(TextView paramTextView, String paramString, Context paramContext)
  {
    paramTextView.setText("");
    int i = 0;
    if (i >= paramString.length());
    int j;
    int k;
    do
    {
      c(paramTextView, paramString.substring(i), paramContext);
      return;
      j = paramString.indexOf("STARTFILE:", i);
      k = paramString.indexOf(":ENDFILE", i);
    }
    while ((j == -1) || (k == -1));
    c(paramTextView, paramString.substring(i, j), paramContext);
    String str1 = paramString.substring(j + 10, k);
    File localFile = new File(str1);
    boolean bool1 = localFile.isFile();
    Bitmap localBitmap1 = null;
    String str3;
    if (bool1)
    {
      str3 = localFile.toString();
      if (e.a(str3, paramContext.getResources().getStringArray(2131034967)))
        localBitmap1 = n.a(str1, 0.3F * h.a / 480.0F, (int)(250.0F * h.a / 480.0F));
    }
    else
    {
      label158: if (localBitmap1 != null)
        break label249;
      paramTextView.append(str1.substring(1 + str1.lastIndexOf("/"), str1.length()));
    }
    while (true)
    {
      i = k + 8;
      break;
      boolean bool2 = e.a(str3, paramContext.getResources().getStringArray(2131034969));
      localBitmap1 = null;
      if (!bool2)
        break label158;
      localBitmap1 = n.a(str1, (int)(100.0F * h.a / 480.0F), (int)(150.0F * h.a / 480.0F));
      break label158;
      label249: Bitmap localBitmap2 = Bitmap.createBitmap(localBitmap1.getWidth(), localBitmap1.getHeight(), Bitmap.Config.RGB_565);
      Canvas localCanvas = new Canvas();
      Paint localPaint = new Paint();
      localCanvas.setBitmap(localBitmap2);
      localCanvas.drawBitmap(localBitmap1, 0.0F, 0.0F, localPaint);
      ImageSpan localImageSpan = new ImageSpan(paramContext, localBitmap2);
      String str2 = "STARTFILE:" + str1 + ":ENDFILE";
      SpannableString localSpannableString = new SpannableString(str2);
      localSpannableString.setSpan(localImageSpan, 0, str2.length(), 33);
      paramTextView.append(localSpannableString);
    }
  }

  private static void c(TextView paramTextView, String paramString, Context paramContext)
  {
    int i = 0;
    if (i >= paramString.length())
      return;
    int j = 0;
    int k = 0;
    int m = i;
    String[] arrayOfString;
    int n;
    label79: int i2;
    int i3;
    while (true)
    {
      if ((k >= o.b.size()) || (j != 0))
      {
        if (j != 0)
          break label340;
        paramTextView.append(paramString.substring(m, m + 1));
        i = m + 1;
        break;
      }
      arrayOfString = (String[])o.b.get(k);
      n = 0;
      if ((n < arrayOfString.length) && (j == 0))
        break label122;
      int i1 = j;
      i2 = m;
      i3 = i1;
      label104: k++;
      int i4 = i3;
      m = i2;
      j = i4;
    }
    label122: String str = arrayOfString[n];
    Resources localResources;
    int i5;
    BitmapFactory.Options localOptions;
    int i8;
    int i9;
    int i10;
    int i11;
    if (paramString.startsWith(str, m))
    {
      localResources = paramContext.getResources();
      i5 = ((int[])o.a.get(k))[n];
      float f1 = h.g();
      float f2 = h.g();
      localOptions = new BitmapFactory.Options();
      localOptions.inJustDecodeBounds = true;
      BitmapFactory.decodeResource(localResources, i5, localOptions);
      localOptions.inJustDecodeBounds = false;
      int i6 = localOptions.outHeight;
      int i7 = localOptions.outWidth;
      i8 = (int)f1;
      i9 = (int)f2;
      i10 = i7 / i8;
      i11 = i6 / i9;
      if (i10 >= i11)
        break label346;
    }
    while (true)
    {
      if (i10 <= 0)
        i10 = 1;
      localOptions.inSampleSize = i10;
      ImageSpan localImageSpan = new ImageSpan(paramContext, ThumbnailUtils.extractThumbnail(BitmapFactory.decodeResource(localResources, i5, localOptions), i8, i9, 2));
      SpannableString localSpannableString = new SpannableString("tttt");
      localSpannableString.setSpan(localImageSpan, 0, 4, 33);
      paramTextView.append(localSpannableString);
      i2 = m + str.length();
      i3 = 1;
      break label104;
      n++;
      break label79;
      label340: i = m;
      break;
      label346: i10 = i11;
    }
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.c.g
 * JD-Core Version:    0.6.2
 */