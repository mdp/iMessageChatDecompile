.class public Lactivity/NewMessageActivity;
.super Lactivity/MyActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Lcom/c/l;

.field private D:Lcom/c/l;

.field private E:Lactivity/o;

.field private F:Z

.field private G:Z

.field private H:Ljava/util/ArrayList;

.field private I:Ljava/util/ArrayList;

.field private J:Landroid/support/v4/view/ViewPager;

.field private K:Landroid/widget/GridView;

.field private L:Ljava/util/ArrayList;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Lactivity/ac;

.field private P:Landroid/widget/RelativeLayout;

.field private Q:I

.field private R:Landroid/os/Handler;

.field private final a:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/EditText;

.field private v:Landroid/widget/EditText;

.field private w:Landroid/widget/Button;

.field private x:Landroid/widget/Button;

.field private y:Landroid/widget/Button;

.field private z:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lactivity/MyActivity;-><init>()V

    const v0, 0x11000

    iput v0, p0, Lactivity/NewMessageActivity;->a:I

    const v0, 0x11001

    iput v0, p0, Lactivity/NewMessageActivity;->m:I

    const v0, 0x11002

    iput v0, p0, Lactivity/NewMessageActivity;->n:I

    iput v1, p0, Lactivity/NewMessageActivity;->o:I

    iput v1, p0, Lactivity/NewMessageActivity;->p:I

    const v0, 0x11900

    iput v0, p0, Lactivity/NewMessageActivity;->q:I

    iput v1, p0, Lactivity/NewMessageActivity;->r:I

    const/16 v0, 0x17

    iput v0, p0, Lactivity/NewMessageActivity;->s:I

    iput-boolean v1, p0, Lactivity/NewMessageActivity;->F:Z

    iput-boolean v1, p0, Lactivity/NewMessageActivity;->G:Z

    new-instance v0, Lactivity/bi;

    invoke-direct {v0, p0}, Lactivity/bi;-><init>(Lactivity/NewMessageActivity;)V

    iput-object v0, p0, Lactivity/NewMessageActivity;->R:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lactivity/NewMessageActivity;)I
    .locals 1

    iget v0, p0, Lactivity/NewMessageActivity;->Q:I

    return v0
.end method

.method static synthetic a(Lactivity/NewMessageActivity;I)V
    .locals 0

    iput p1, p0, Lactivity/NewMessageActivity;->p:I

    return-void
.end method

.method static synthetic a(Lactivity/NewMessageActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lactivity/NewMessageActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lactivity/NewMessageActivity;->b:Landroid/content/Context;

    const v2, 0x7f070043

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lactivity/bq;

    invoke-direct {v2, p0}, Lactivity/bq;-><init>(Lactivity/NewMessageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lactivity/NewMessageActivity;->b:Landroid/content/Context;

    const v2, 0x7f070044

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lactivity/NewMessageActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lactivity/NewMessageActivity;->A:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lactivity/NewMessageActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lactivity/NewMessageActivity;->F:Z

    return-void
.end method

.method private a(Lactivity/o;)V
    .locals 6

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lactivity/NewMessageActivity;->l:J

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const/16 v1, 0x10

    new-array v1, v1, [B

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    const/4 v2, 0x3

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    const/4 v3, 0x2

    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/4 v3, 0x1

    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const/4 v3, 0x0

    aget-byte v3, v1, v3

    or-int/2addr v2, v3

    int-to-long v2, v2

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    iget-object v4, p0, Lactivity/NewMessageActivity;->d:Lcom/a/d;

    iget-object v5, p0, Lactivity/NewMessageActivity;->C:Lcom/c/l;

    invoke-virtual {v5}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Lcom/a/d;->b(Ljava/lang/String;J)Lactivity/o;

    move-result-object v4

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v1}, Lactivity/o;->a([B)V

    invoke-virtual {p1, v2, v3}, Lactivity/o;->a(J)V

    return-void
.end method

.method static synthetic b(Lactivity/NewMessageActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lactivity/NewMessageActivity;->H:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lactivity/NewMessageActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lactivity/NewMessageActivity;->G:Z

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/high16 v4, 0x43f0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lactivity/NewMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050357

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/c/e;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v0, 0x3e80

    sget v1, Lcom/c/h;->a:F

    const/high16 v2, 0x437a

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    float-to-int v1, v1

    invoke-static {p1, v0, v1}, Lcom/c/n;->a(Ljava/lang/String;FI)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    :goto_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5}, Landroid/graphics/Canvas;-><init>()V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    const/high16 v2, -0x100

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x41a0

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-static {}, Lcom/c/h;->c()F

    move-result v2

    invoke-static {v0, v6, v2}, Lcom/c/g;->a(Ljava/lang/String;Landroid/graphics/Paint;F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v8, v0

    int-to-float v0, v8

    invoke-static {}, Lcom/c/h;->f()F

    move-result v2

    add-float/2addr v0, v2

    float-to-int v4, v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    move v3, v2

    move v2, v0

    :goto_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {p0}, Lactivity/NewMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x7f020394

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, v11, v11, v3, v2}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    invoke-virtual {v5, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    if-nez v1, :cond_2

    sub-int v0, v4, v8

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    div-int/lit8 v1, v2, 0x2

    add-int/lit8 v1, v1, 0x7

    int-to-float v1, v1

    invoke-virtual {v5, v7, v0, v1, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_2
    new-instance v0, Landroid/text/style/ImageSpan;

    invoke-direct {v0, p0, v9}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "STARTFILE:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":ENDFILE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v3, 0x21

    invoke-virtual {v2, v0, v11, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lactivity/NewMessageActivity;->v:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lactivity/NewMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050359

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/c/e;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v0, Lcom/c/h;->a:F

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    div-float/2addr v0, v4

    float-to-int v0, v0

    sget v1, Lcom/c/h;->a:F

    const/high16 v2, 0x4316

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    float-to-int v1, v1

    invoke-static {p1, v0, v1}, Lcom/c/n;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/c/h;->d()F

    move-result v0

    float-to-int v0, v0

    move v2, v0

    move v3, v4

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v5, v1, v12, v12, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto/16 :goto_0
.end method

.method static synthetic c(Lactivity/NewMessageActivity;)V
    .locals 0

    invoke-direct {p0}, Lactivity/NewMessageActivity;->h()V

    return-void
.end method

.method static synthetic d(Lactivity/NewMessageActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lactivity/NewMessageActivity;->z:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lactivity/NewMessageActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lactivity/NewMessageActivity;->u:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lactivity/NewMessageActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lactivity/NewMessageActivity;->A:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lactivity/NewMessageActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lactivity/NewMessageActivity;->v:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic h(Lactivity/NewMessageActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lactivity/NewMessageActivity;->J:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private h()V
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lactivity/NewMessageActivity;->p:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lactivity/NewMessageActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lactivity/NewMessageActivity;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lactivity/NewMessageActivity;->b:Landroid/content/Context;

    const v2, 0x7f070085

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lactivity/NewMessageActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lactivity/NewMessageActivity;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lactivity/NewMessageActivity;->b:Landroid/content/Context;

    const v2, 0x7f070086

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lactivity/NewMessageActivity;->t:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lactivity/NewMessageActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lactivity/NewMessageActivity;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lactivity/NewMessageActivity;->b:Landroid/content/Context;

    const v2, 0x7f070087

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic i(Lactivity/NewMessageActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lactivity/NewMessageActivity;->P:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic j(Lactivity/NewMessageActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lactivity/NewMessageActivity;->L:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(B)V
    .locals 0

    return-void
.end method

.method public final a(I)V
    .locals 0

    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lactivity/NewMessageActivity;->p:I

    invoke-direct {p0}, Lactivity/NewMessageActivity;->h()V

    iget-object v0, p0, Lactivity/NewMessageActivity;->g:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->b()Lcom/b/i;

    move-result-object v0

    new-instance v1, Lcom/b/u;

    invoke-direct {v1, p1}, Lcom/b/u;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/c/j;

    invoke-direct {v1}, Lcom/c/j;-><init>()V

    invoke-virtual {v1, p1, p0}, Lcom/c/j;->a(Ljava/lang/String;Lactivity/NewMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/b/i;->b(Lcom/c/j;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 4

    iput p2, p0, Lactivity/NewMessageActivity;->Q:I

    iget-object v0, p0, Lactivity/NewMessageActivity;->R:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    if-nez p2, :cond_0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "msg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lactivity/NewMessageActivity;->R:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method

.method protected final b()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/c/a;->a:Ljava/lang/String;

    iput-object v1, p0, Lactivity/NewMessageActivity;->M:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lactivity/NewMessageActivity;->M:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lactivity/NewMessageActivity;->M:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lactivity/NewMessageActivity;->M:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lactivity/NewMessageActivity;->M:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.videoQuality"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v1, 0x11001

    invoke-virtual {p0, v0, v1}, Lactivity/NewMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final b(B)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lactivity/NewMessageActivity;->p:I

    :cond_0
    invoke-direct {p0}, Lactivity/NewMessageActivity;->h()V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-boolean v0, p0, Lactivity/NewMessageActivity;->F:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lactivity/NewMessageActivity;->G:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lactivity/NewMessageActivity;->x:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lactivity/NewMessageActivity;->x:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lactivity/NewMessageActivity;->x:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lactivity/NewMessageActivity;->x:Landroid/widget/Button;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public final f()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lactivity/NewMessageActivity;->J:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    iget-object v0, p0, Lactivity/NewMessageActivity;->P:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const/4 v0, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lactivity/NewMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lactivity/NewMessageActivity;->N:Ljava/lang/String;

    iget-object v0, p0, Lactivity/NewMessageActivity;->N:Ljava/lang/String;

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "Video Path"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lactivity/NewMessageActivity;->N:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lactivity/NewMessageActivity;->N:Ljava/lang/String;

    invoke-direct {p0, v0}, Lactivity/NewMessageActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lactivity/NewMessageActivity;->M:Ljava/lang/String;

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "Photo Path"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lactivity/NewMessageActivity;->M:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lactivity/NewMessageActivity;->M:Ljava/lang/String;

    invoke-direct {p0, v0}, Lactivity/NewMessageActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    if-eqz p3, :cond_0

    const-string v0, "user"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/c/l;

    const-string v1, "Contact back"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lactivity/NewMessageActivity;->c:Lcom/a/a;

    invoke-virtual {v0}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a;->b(Ljava/lang/String;)Lactivity/z;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "Contact back"

    invoke-virtual {v0}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lactivity/NewMessageActivity;->u:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lactivity/z;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lactivity/NewMessageActivity;->u:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {}, Lcom/c/h;->b()F

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/c/g;->a(Ljava/lang/String;Landroid/graphics/Paint;F)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lactivity/NewMessageActivity;->u:Landroid/widget/EditText;

    invoke-virtual {v1}, Lactivity/z;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/c/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :sswitch_3
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v5, v6

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "ht"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lactivity/NewMessageActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    move-object v3, p0

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lactivity/NewMessageActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x11000 -> :sswitch_3
        0x11001 -> :sswitch_1
        0x11002 -> :sswitch_0
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    const/16 v8, 0xa

    const/4 v3, 0x2

    const/4 v7, -0x1

    const/16 v6, 0x8

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lactivity/NewMessageActivity;->finish()V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lactivity/NewMessageActivity;->A:Ljava/lang/String;

    iget-object v0, p0, Lactivity/NewMessageActivity;->v:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lactivity/NewMessageActivity;->B:Ljava/lang/String;

    move v0, v1

    :goto_1
    iget-object v3, p0, Lactivity/NewMessageActivity;->B:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_2

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lactivity/NewMessageActivity;->B:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    iget-object v0, p0, Lactivity/NewMessageActivity;->b:Landroid/content/Context;

    const v1, 0x7f07008c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lactivity/NewMessageActivity;->b:Landroid/content/Context;

    const v2, 0x7f07008d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lactivity/NewMessageActivity;->B:Ljava/lang/String;

    const-string v4, "STARTFILE:"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lactivity/NewMessageActivity;->B:Ljava/lang/String;

    const-string v5, ":ENDFILE"

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v3, v7, :cond_0

    if-eq v0, v7, :cond_0

    if-lez v3, :cond_3

    iget-object v4, p0, Lactivity/NewMessageActivity;->B:Ljava/lang/String;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v8, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lactivity/NewMessageActivity;->B:Ljava/lang/String;

    invoke-virtual {v5, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lactivity/NewMessageActivity;->B:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lactivity/NewMessageActivity;->B:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v3, v0, 0x8

    iget-object v4, p0, Lactivity/NewMessageActivity;->B:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v3, p0, Lactivity/NewMessageActivity;->B:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x8

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v8, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lactivity/NewMessageActivity;->B:Ljava/lang/String;

    add-int/lit8 v5, v0, 0x8

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lactivity/NewMessageActivity;->B:Ljava/lang/String;

    add-int/lit8 v5, v0, 0x8

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lactivity/NewMessageActivity;->B:Ljava/lang/String;

    :cond_4
    add-int/lit8 v0, v0, 0x8

    goto/16 :goto_1

    :cond_5
    new-instance v0, Lcom/c/l;

    invoke-direct {v0}, Lcom/c/l;-><init>()V

    iput-object v0, p0, Lactivity/NewMessageActivity;->D:Lcom/c/l;

    iget-object v0, p0, Lactivity/NewMessageActivity;->D:Lcom/c/l;

    invoke-virtual {v0, v2}, Lcom/c/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lactivity/NewMessageActivity;->e:Lcom/a/g;

    iget-object v3, p0, Lactivity/NewMessageActivity;->D:Lcom/c/l;

    invoke-virtual {v0, v3}, Lcom/a/g;->a(Lcom/c/l;)V

    iget-object v0, p0, Lactivity/NewMessageActivity;->E:Lactivity/o;

    invoke-virtual {v0, v2}, Lactivity/o;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lactivity/NewMessageActivity;->E:Lactivity/o;

    invoke-static {}, Lcom/a/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lactivity/o;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lactivity/NewMessageActivity;->E:Lactivity/o;

    iget-object v3, p0, Lactivity/NewMessageActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lactivity/o;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lactivity/NewMessageActivity;->E:Lactivity/o;

    iget-object v3, p0, Lactivity/NewMessageActivity;->D:Lcom/c/l;

    invoke-virtual {v3}, Lcom/c/l;->b()I

    move-result v3

    invoke-virtual {v0, v3}, Lactivity/o;->c(I)V

    iget-object v0, p0, Lactivity/NewMessageActivity;->E:Lactivity/o;

    invoke-virtual {v0}, Lactivity/o;->h()V

    iget-object v0, p0, Lactivity/NewMessageActivity;->E:Lactivity/o;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lactivity/o;->d(I)V

    iget-object v0, p0, Lactivity/NewMessageActivity;->E:Lactivity/o;

    invoke-virtual {v0}, Lactivity/o;->j()V

    iget-object v0, p0, Lactivity/NewMessageActivity;->E:Lactivity/o;

    invoke-virtual {v0, v6}, Lactivity/o;->e(I)V

    iget-object v0, p0, Lactivity/NewMessageActivity;->E:Lactivity/o;

    invoke-direct {p0, v0}, Lactivity/NewMessageActivity;->a(Lactivity/o;)V

    iget-object v0, p0, Lactivity/NewMessageActivity;->E:Lactivity/o;

    iget-object v3, p0, Lactivity/NewMessageActivity;->g:Lactivity/MyApplication;

    invoke-virtual {v3}, Lactivity/MyApplication;->b()Lcom/b/i;

    move-result-object v3

    iget-object v4, p0, Lactivity/NewMessageActivity;->g:Lactivity/MyApplication;

    invoke-virtual {v4}, Lactivity/MyApplication;->d()Lcom/b/d;

    move-result-object v4

    new-instance v5, Lcom/b/y;

    invoke-direct {v5, v0}, Lcom/b/y;-><init>(Lactivity/o;)V

    new-instance v6, Lcom/c/j;

    invoke-direct {v6}, Lcom/c/j;-><init>()V

    invoke-virtual {v0}, Lactivity/o;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/c/j;->a(Ljava/lang/String;Lcom/b/y;)V

    invoke-virtual {v5}, Lcom/b/y;->b()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v0, v1}, Lactivity/o;->b(I)V

    invoke-virtual {v0}, Lactivity/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v5}, Lcom/c/j;->a(Ljava/lang/String;Lcom/b/y;)V

    invoke-virtual {v4, v6}, Lcom/b/d;->b(Lcom/c/j;)V

    :goto_2
    iget-object v0, p0, Lactivity/NewMessageActivity;->d:Lcom/a/d;

    iget-object v1, p0, Lactivity/NewMessageActivity;->C:Lcom/c/l;

    invoke-virtual {v1}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lactivity/NewMessageActivity;->E:Lactivity/o;

    invoke-virtual {v0, v1, v3}, Lcom/a/d;->a(Ljava/lang/String;Lactivity/o;)V

    iget-object v0, p0, Lactivity/NewMessageActivity;->h:Lcom/d/a;

    invoke-virtual {v0, v2}, Lcom/d/a;->d(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lactivity/ChatActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "user"

    iget-object v2, p0, Lactivity/NewMessageActivity;->D:Lcom/c/l;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lactivity/NewMessageActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lactivity/NewMessageActivity;->finish()V

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lactivity/o;->b(I)V

    invoke-virtual {v3, v6}, Lcom/b/i;->b(Lcom/c/j;)V

    goto :goto_2

    :pswitch_3
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lactivity/NewMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lactivity/NewMessageActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lactivity/ContactListActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v1}, Lactivity/NewMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lactivity/NewMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lactivity/NewMessageActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lactivity/NewMessageActivity;->J:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lactivity/NewMessageActivity;->P:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    iget-object v0, p0, Lactivity/NewMessageActivity;->J:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v6}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    iget-object v0, p0, Lactivity/NewMessageActivity;->P:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lactivity/NewMessageActivity;->J:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lactivity/NewMessageActivity;->f()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b007a
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/16 v9, 0x8

    const/4 v8, -0x1

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lactivity/MyActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v6}, Lactivity/NewMessageActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lactivity/NewMessageActivity;->setContentView(I)V

    iput v5, p0, Lactivity/NewMessageActivity;->p:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lactivity/NewMessageActivity;->H:Ljava/util/ArrayList;

    iget-object v0, p0, Lactivity/NewMessageActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lactivity/NewMessageActivity;->I:Ljava/util/ArrayList;

    iget-object v0, p0, Lactivity/NewMessageActivity;->I:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const v0, 0x7f0b007a

    invoke-virtual {p0, v0}, Lactivity/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/NewMessageActivity;->w:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/NewMessageActivity;->w:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0080

    invoke-virtual {p0, v0}, Lactivity/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/NewMessageActivity;->x:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/NewMessageActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b007f

    invoke-virtual {p0, v0}, Lactivity/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/NewMessageActivity;->y:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/NewMessageActivity;->y:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b007c

    invoke-virtual {p0, v0}, Lactivity/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/NewMessageActivity;->z:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/NewMessageActivity;->z:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0078

    invoke-virtual {p0, v0}, Lactivity/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lactivity/NewMessageActivity;->t:Landroid/widget/TextView;

    const v0, 0x7f0b007b

    invoke-virtual {p0, v0}, Lactivity/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lactivity/NewMessageActivity;->u:Landroid/widget/EditText;

    iget-object v0, p0, Lactivity/NewMessageActivity;->u:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lactivity/NewMessageActivity;->u:Landroid/widget/EditText;

    new-instance v1, Lactivity/bj;

    invoke-direct {v1, p0}, Lactivity/bj;-><init>(Lactivity/NewMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lactivity/NewMessageActivity;->u:Landroid/widget/EditText;

    new-instance v1, Lactivity/bk;

    invoke-direct {v1, p0}, Lactivity/bk;-><init>(Lactivity/NewMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0b0081

    invoke-virtual {p0, v0}, Lactivity/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lactivity/NewMessageActivity;->v:Landroid/widget/EditText;

    iget-object v0, p0, Lactivity/NewMessageActivity;->v:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lactivity/NewMessageActivity;->v:Landroid/widget/EditText;

    new-instance v1, Lactivity/bl;

    invoke-direct {v1, p0}, Lactivity/bl;-><init>(Lactivity/NewMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0}, Lactivity/NewMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "msg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lactivity/NewMessageActivity;->v:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move v1, v5

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_2

    :cond_0
    iget-object v2, p0, Lactivity/NewMessageActivity;->v:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lactivity/NewMessageActivity;->c()V

    :goto_1
    invoke-virtual {p0}, Lactivity/NewMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "touser"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lactivity/NewMessageActivity;->c:Lcom/a/a;

    invoke-virtual {v1, v0}, Lcom/a/a;->b(Ljava/lang/String;)Lactivity/z;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lactivity/NewMessageActivity;->u:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_2
    new-instance v0, Lactivity/bm;

    invoke-direct {v0, p0}, Lactivity/bm;-><init>(Lactivity/NewMessageActivity;)V

    iget-object v1, p0, Lactivity/NewMessageActivity;->v:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lactivity/NewMessageActivity;->g:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->h()Lcom/c/l;

    move-result-object v0

    iput-object v0, p0, Lactivity/NewMessageActivity;->C:Lcom/c/l;

    new-instance v0, Lactivity/o;

    invoke-direct {v0}, Lactivity/o;-><init>()V

    iput-object v0, p0, Lactivity/NewMessageActivity;->E:Lactivity/o;

    const/4 v0, 0x5

    new-array v0, v0, [I

    const v1, 0x7f0203cf

    aput v1, v0, v5

    const v1, 0x7f0203d0

    aput v1, v0, v6

    const v1, 0x7f0203d1

    aput v1, v0, v7

    const/4 v1, 0x3

    const v2, 0x7f0203d2

    aput v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x7f0203d3

    aput v2, v0, v1

    new-instance v1, Lactivity/bp;

    sget-object v2, Lcom/c/o;->a:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p0, v0, v2}, Lactivity/bp;-><init>(Lactivity/NewMessageActivity;Landroid/content/Context;[ILjava/util/ArrayList;)V

    iput-object v1, p0, Lactivity/NewMessageActivity;->O:Lactivity/ac;

    const v0, 0x7f0b0024

    invoke-virtual {p0, v0}, Lactivity/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lactivity/NewMessageActivity;->P:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lactivity/NewMessageActivity;->P:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lactivity/NewMessageActivity;->O:Lactivity/ac;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lactivity/NewMessageActivity;->P:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f0b0023

    invoke-virtual {p0, v0}, Lactivity/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lactivity/NewMessageActivity;->J:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lactivity/NewMessageActivity;->J:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v9}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lactivity/NewMessageActivity;->L:Ljava/util/ArrayList;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lactivity/NewMessageActivity;->K:Landroid/widget/GridView;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "image"

    const v3, 0x7f020011

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TITLE"

    iget-object v3, p0, Lactivity/NewMessageActivity;->b:Landroid/content/Context;

    const v4, 0x7f070046

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "image"

    const v3, 0x7f020012

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TITLE"

    iget-object v3, p0, Lactivity/NewMessageActivity;->b:Landroid/content/Context;

    const v4, 0x7f070047

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "image"

    const v3, 0x7f020010

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TITLE"

    iget-object v3, p0, Lactivity/NewMessageActivity;->b:Landroid/content/Context;

    const v4, 0x7f070048

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "image"

    const v3, 0x7f02000f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TITLE"

    iget-object v3, p0, Lactivity/NewMessageActivity;->b:Landroid/content/Context;

    const v4, 0x7f070049

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f03000c

    new-array v4, v7, [Ljava/lang/String;

    const-string v1, "image"

    aput-object v1, v4, v5

    const-string v1, "TITLE"

    aput-object v1, v4, v6

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iget-object v1, p0, Lactivity/NewMessageActivity;->K:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lactivity/NewMessageActivity;->K:Landroid/widget/GridView;

    new-instance v1, Lactivity/bn;

    invoke-direct {v1, p0}, Lactivity/bn;-><init>(Lactivity/NewMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lactivity/NewMessageActivity;->L:Ljava/util/ArrayList;

    iget-object v1, p0, Lactivity/NewMessageActivity;->K:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lactivity/bo;

    invoke-direct {v0, p0}, Lactivity/bo;-><init>(Lactivity/NewMessageActivity;)V

    iget-object v1, p0, Lactivity/NewMessageActivity;->J:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    invoke-direct {p0}, Lactivity/NewMessageActivity;->h()V

    return-void

    :cond_2
    const-string v2, "STARTFILE:"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const-string v3, ":ENDFILE"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-eq v2, v8, :cond_0

    if-eq v3, v8, :cond_0

    iget-object v4, p0, Lactivity/NewMessageActivity;->v:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v2, 0xa

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lactivity/NewMessageActivity;->b(Ljava/lang/String;)V

    add-int/lit8 v1, v3, 0x8

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lactivity/NewMessageActivity;->e()V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lactivity/NewMessageActivity;->u:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lactivity/z;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lactivity/NewMessageActivity;->u:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {}, Lcom/c/h;->b()F

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/c/g;->a(Ljava/lang/String;Landroid/graphics/Paint;F)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lactivity/NewMessageActivity;->u:Landroid/widget/EditText;

    invoke-virtual {v1}, Lactivity/z;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/c/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :array_0
    .array-data 0x4
        0x3at 0x0t 0xbt 0x7ft
        0x3bt 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lactivity/MyActivity;->onPause()V

    iget-object v0, p0, Lactivity/NewMessageActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lactivity/MyActivity;->onResume()V

    iget-object v0, p0, Lactivity/NewMessageActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/a/a;->b(Landroid/content/Context;)V

    return-void
.end method
