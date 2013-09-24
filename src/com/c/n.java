package com.c;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.NinePatchDrawable;
import android.media.ThumbnailUtils;
import android.text.SpannableString;
import android.text.style.ImageSpan;

public final class n
{
  public static Bitmap a(Resources paramResources, int paramInt)
  {
    int i = 1;
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inJustDecodeBounds = i;
    BitmapFactory.decodeResource(paramResources, paramInt, localOptions);
    localOptions.inJustDecodeBounds = false;
    int j = localOptions.outHeight;
    int k = localOptions.outWidth;
    int m = (int)(0.6666667F * k);
    int n = (int)(0.6666667F * j);
    int i1 = k / m;
    int i2 = j / n;
    if (i1 < i2);
    while (true)
    {
      if (i1 <= 0);
      while (true)
      {
        localOptions.inSampleSize = i;
        return ThumbnailUtils.extractThumbnail(BitmapFactory.decodeResource(paramResources, paramInt, localOptions), m, n, 2);
        i = i1;
      }
      i1 = i2;
    }
  }

  public static Bitmap a(String paramString, float paramFloat, int paramInt)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inJustDecodeBounds = true;
    BitmapFactory.decodeFile(paramString, localOptions);
    localOptions.inJustDecodeBounds = false;
    int i = localOptions.outHeight;
    int j = localOptions.outWidth;
    int k = (int)(paramFloat * j);
    int m = (int)(paramFloat * i);
    int n = (int)(100.0F * h.a / 480.0F);
    if (k < n)
    {
      m = (int)(m * (1.0F * n / k));
      k = n;
    }
    if (k == 0);
    while (true)
    {
      if (m == 0)
        m = (int)(100.0F * h.a / 480.0F);
      if (n > paramInt);
      for (int i1 = (int)(m * (1.0F * paramInt / n)); ; i1 = m)
      {
        int i2 = j / paramInt;
        int i3 = i / i1;
        if (i2 >= i3);
        while (true)
        {
          if (i3 <= 0)
            i3 = 1;
          localOptions.inSampleSize = i3;
          return ThumbnailUtils.extractThumbnail(BitmapFactory.decodeFile(paramString, localOptions), paramInt, i1, 2);
          i3 = i2;
        }
        paramInt = n;
      }
      n = k;
    }
  }

  public static Bitmap a(String paramString, int paramInt1, int paramInt2)
  {
    Bitmap localBitmap = ThumbnailUtils.createVideoThumbnail(paramString, 3);
    if (localBitmap == null)
      return null;
    return ThumbnailUtils.extractThumbnail(localBitmap, paramInt1, paramInt2, 2);
  }

  public static SpannableString a(Context paramContext, String paramString1, String paramString2)
  {
    Canvas localCanvas = new Canvas();
    Paint localPaint = new Paint();
    localPaint.setColor(-16777216);
    localPaint.setTextSize(24.0F);
    int i = (int)localPaint.measureText(paramString2);
    int j = (int)(i + h.f());
    int k = (int)h.e();
    Bitmap localBitmap = Bitmap.createBitmap(j, k, Bitmap.Config.ARGB_4444);
    NinePatchDrawable localNinePatchDrawable = (NinePatchDrawable)paramContext.getResources().getDrawable(2130838420);
    localNinePatchDrawable.setBounds(0, 0, j, k);
    localCanvas.setBitmap(localBitmap);
    localNinePatchDrawable.draw(localCanvas);
    localCanvas.drawText(paramString2, (j - i) / 2.0F, 7.0F + h.e() / 2.0F, localPaint);
    ImageSpan localImageSpan = new ImageSpan(paramContext, localBitmap);
    SpannableString localSpannableString = new SpannableString(paramString1);
    localSpannableString.setSpan(localImageSpan, 0, paramString1.length(), 33);
    return localSpannableString;
  }
}

/* Location:           /Users/mdp/Downloads/iMessage/classes-dex2jar.jar
 * Qualified Name:     com.c.n
 * JD-Core Version:    0.6.2
 */