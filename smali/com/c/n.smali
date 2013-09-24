.class public final Lcom/c/n;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x1

    const v6, 0x3f2aaaab

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, p1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v4, v1

    mul-float/2addr v4, v6

    float-to-int v4, v4

    int-to-float v5, v2

    mul-float/2addr v5, v6

    float-to-int v5, v5

    div-int/2addr v1, v4

    div-int/2addr v2, v5

    if-ge v1, v2, :cond_1

    :goto_0
    if-gtz v1, :cond_0

    :goto_1
    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p0, p1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v4, v5, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;FI)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v2, 0x1

    const/high16 v10, 0x43f0

    const/high16 v9, 0x42c8

    const/high16 v8, 0x3f80

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v2, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v6

    mul-float/2addr v0, p1

    float-to-int v3, v0

    int-to-float v0, v5

    mul-float/2addr v0, p1

    float-to-int v1, v0

    sget v0, Lcom/c/h;->a:F

    mul-float/2addr v0, v9

    div-float/2addr v0, v10

    float-to-int v0, v0

    if-ge v3, v0, :cond_0

    int-to-float v1, v1

    int-to-float v7, v0

    mul-float/2addr v7, v8

    int-to-float v3, v3

    div-float v3, v7, v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    move v3, v0

    :cond_0
    if-nez v3, :cond_5

    :goto_0
    if-nez v1, :cond_1

    sget v1, Lcom/c/h;->a:F

    mul-float/2addr v1, v9

    div-float/2addr v1, v10

    float-to-int v1, v1

    :cond_1
    if-le v0, p2, :cond_4

    int-to-float v1, v1

    int-to-float v3, p2

    mul-float/2addr v3, v8

    int-to-float v0, v0

    div-float v0, v3, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_1
    div-int v3, v6, p2

    div-int v1, v5, v0

    if-lt v3, v1, :cond_3

    :goto_2
    if-gtz v1, :cond_2

    move v1, v2

    :cond_2
    iput v1, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, p2, v0, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move p2, v0

    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x2

    invoke-static {v0, p1, p2, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 10

    const/high16 v9, 0x4000

    const/4 v8, 0x0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/high16 v0, -0x100

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x41c0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v3, v0

    int-to-float v0, v3

    invoke-static {}, Lcom/c/h;->f()F

    move-result v4

    add-float/2addr v0, v4

    float-to-int v4, v0

    invoke-static {}, Lcom/c/h;->e()F

    move-result v0

    float-to-int v5, v0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f020394

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, v8, v8, v4, v5}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    sub-int v0, v4, v3

    int-to-float v0, v0

    div-float/2addr v0, v9

    invoke-static {}, Lcom/c/h;->e()F

    move-result v3

    div-float/2addr v3, v9

    const/high16 v4, 0x40e0

    add-float/2addr v3, v4

    invoke-virtual {v1, p2, v0, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/text/style/ImageSpan;

    invoke-direct {v0, p0, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v1, v0, v8, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method
