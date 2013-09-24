.class public final Lcom/c/g;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Landroid/graphics/Paint;F)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    cmpl-float v0, v0, p2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v2, "..."

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    cmpl-float v0, v0, p2

    if-lez v0, :cond_0

    if-gtz v1, :cond_3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_1
    return-object p0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/a/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v0, ""

    move v3, v1

    :goto_0
    if-lt v3, v2, :cond_0

    return-object v0

    :cond_0
    const-string v1, "||"

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/a/a;->b(Ljava/lang/String;)Lactivity/z;

    move-result-object v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v1, 0x2

    move v3, v1

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lactivity/z;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Landroid/widget/TextView;Ljava/lang/String;Landroid/content/Context;)V
    .locals 5

    const/4 v4, -0x1

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/c/g;->c(Landroid/widget/TextView;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    :cond_1
    const-string v1, "STARTFILE:"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const-string v2, ":ENDFILE"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v4, :cond_0

    if-eq v2, v4, :cond_0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/c/g;->c(Landroid/widget/TextView;Ljava/lang/String;Landroid/content/Context;)V

    add-int/lit8 v0, v1, 0xa

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v2, 0x8

    goto :goto_0
.end method

.method public static b(Landroid/widget/TextView;Ljava/lang/String;Landroid/content/Context;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/high16 v7, 0x43f0

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/c/g;->c(Landroid/widget/TextView;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    :cond_1
    const-string v2, "STARTFILE:"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const-string v3, ":ENDFILE"

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-eq v2, v9, :cond_0

    if-eq v3, v9, :cond_0

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/c/g;->c(Landroid/widget/TextView;Ljava/lang/String;Landroid/content/Context;)V

    add-int/lit8 v0, v2, 0xa

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050357

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/c/e;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget v0, Lcom/c/h;->a:F

    const v4, 0x3e99999a

    mul-float/2addr v0, v4

    div-float/2addr v0, v7

    sget v4, Lcom/c/h;->a:F

    const/high16 v5, 0x437a

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    float-to-int v4, v4

    invoke-static {v2, v0, v4}, Lcom/c/n;->a(Ljava/lang/String;FI)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :goto_2
    add-int/lit8 v0, v3, 0x8

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050359

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/c/e;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget v0, Lcom/c/h;->a:F

    const/high16 v4, 0x42c8

    mul-float/2addr v0, v4

    div-float/2addr v0, v7

    float-to-int v0, v0

    sget v4, Lcom/c/h;->a:F

    const/high16 v5, 0x4316

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    float-to-int v4, v4

    invoke-static {v2, v0, v4}, Lcom/c/n;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5}, Landroid/graphics/Canvas;-><init>()V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v5, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v0, v8, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/text/style/ImageSpan;

    invoke-direct {v0, p2, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "STARTFILE:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":ENDFILE"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v5, 0x21

    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private static c(Landroid/widget/TextView;Ljava/lang/String;Landroid/content/Context;)V
    .locals 15

    const/4 v1, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v2, 0x0

    move v4, v3

    move v3, v2

    move v2, v1

    :goto_1
    sget-object v1, Lcom/c/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    if-eqz v4, :cond_2

    :cond_1
    if-nez v4, :cond_7

    add-int/lit8 v1, v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/c/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v5, 0x0

    :goto_2
    array-length v6, v1

    if-ge v5, v6, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    move v14, v4

    move v4, v2

    move v2, v14

    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v14, v2

    move v2, v4

    move v4, v14

    goto :goto_1

    :cond_4
    aget-object v6, v1, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v4, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v1, Lcom/c/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aget v8, v1, v5

    invoke-static {}, Lcom/c/h;->g()F

    move-result v1

    invoke-static {}, Lcom/c/h;->g()F

    move-result v5

    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v7, v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v10, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v11, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    float-to-int v12, v1

    float-to-int v13, v5

    div-int v1, v11, v12

    div-int v5, v10, v13

    if-ge v1, v5, :cond_8

    :goto_4
    if-gtz v1, :cond_5

    const/4 v1, 0x1

    :cond_5
    iput v1, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {v7, v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v5, 0x2

    invoke-static {v1, v12, v13, v5}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v5, Landroid/text/style/ImageSpan;

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/text/SpannableString;

    const-string v7, "tttt"

    invoke-direct {v1, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/16 v9, 0x21

    invoke-virtual {v1, v5, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v2, v1

    move v14, v4

    move v4, v2

    move v2, v14

    goto :goto_3

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    move v1, v2

    goto/16 :goto_0

    :cond_8
    move v1, v5

    goto :goto_4
.end method
