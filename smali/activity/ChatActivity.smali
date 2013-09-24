.class public Lactivity/ChatActivity;
.super Lactivity/MyActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/ListView;

.field private C:Landroid/widget/RelativeLayout;

.field private D:Landroid/widget/RelativeLayout;

.field private E:Lactivity/p;

.field private F:Lactivity/m;

.field private G:Ljava/util/List;

.field private H:Ljava/util/List;

.field private I:Lcom/c/l;

.field private J:Lcom/c/l;

.field private K:J

.field private L:I

.field private M:Landroid/support/v4/view/ViewPager;

.field private N:Landroid/widget/GridView;

.field private O:Ljava/util/ArrayList;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Landroid/widget/ProgressBar;

.field private S:Landroid/widget/LinearLayout;

.field private T:Z

.field private U:J

.field private V:I

.field private W:Z

.field private X:Landroid/widget/TextView;

.field private Y:Lactivity/ac;

.field private Z:Landroid/widget/RelativeLayout;

.field private final a:I

.field private aa:Landroid/widget/TextView;

.field private ab:I

.field private ac:Landroid/os/Handler;

.field private final m:I

.field private final n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Landroid/widget/Button;

.field private s:Landroid/widget/Button;

.field private t:Landroid/widget/Button;

.field private u:Landroid/widget/Button;

.field private v:Landroid/widget/Button;

.field private w:Landroid/widget/Button;

.field private x:Landroid/widget/Button;

.field private y:Landroid/widget/Button;

.field private z:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lactivity/MyActivity;-><init>()V

    const v0, 0x11010

    iput v0, p0, Lactivity/ChatActivity;->a:I

    const v0, 0x11011

    iput v0, p0, Lactivity/ChatActivity;->m:I

    const v0, 0x11012

    iput v0, p0, Lactivity/ChatActivity;->n:I

    const v0, 0x12900

    iput v0, p0, Lactivity/ChatActivity;->o:I

    iput v1, p0, Lactivity/ChatActivity;->p:I

    const/16 v0, 0x17

    iput v0, p0, Lactivity/ChatActivity;->q:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lactivity/ChatActivity;->G:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lactivity/ChatActivity;->H:Ljava/util/List;

    iput-wide v2, p0, Lactivity/ChatActivity;->K:J

    iput v1, p0, Lactivity/ChatActivity;->L:I

    iput-boolean v1, p0, Lactivity/ChatActivity;->T:Z

    iput-wide v2, p0, Lactivity/ChatActivity;->U:J

    iput v1, p0, Lactivity/ChatActivity;->V:I

    iput-boolean v1, p0, Lactivity/ChatActivity;->W:Z

    new-instance v0, Lactivity/a;

    invoke-direct {v0, p0}, Lactivity/a;-><init>(Lactivity/ChatActivity;)V

    iput-object v0, p0, Lactivity/ChatActivity;->ac:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lactivity/ChatActivity;)Lcom/c/l;
    .locals 1

    iget-object v0, p0, Lactivity/ChatActivity;->J:Lcom/c/l;

    return-object v0
.end method

.method static synthetic a(Lactivity/ChatActivity;I)V
    .locals 0

    iput p1, p0, Lactivity/ChatActivity;->V:I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 14

    const/high16 v13, 0x4000

    const/4 v12, 0x0

    const/4 v11, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lactivity/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050357

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/c/e;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v0, 0x3e99999a

    const/16 v1, 0xfa

    invoke-static {p1, v0, v1}, Lcom/c/n;->a(Ljava/lang/String;FI)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    :goto_1
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

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    move v3, v2

    move v2, v0

    :goto_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {p0}, Lactivity/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x7f020394

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, v11, v11, v3, v2}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    invoke-virtual {v5, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    if-nez v1, :cond_3

    sub-int v0, v4, v8

    int-to-float v0, v0

    div-float/2addr v0, v13

    invoke-static {}, Lcom/c/h;->d()F

    move-result v1

    div-float/2addr v1, v13

    const/high16 v2, 0x40e0

    add-float/2addr v1, v2

    invoke-virtual {v5, v7, v0, v1, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_3
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

    iget-object v0, p0, Lactivity/ChatActivity;->z:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lactivity/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050359

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/c/e;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v0, 0x96

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Lcom/c/n;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    :cond_2
    invoke-static {}, Lcom/c/h;->d()F

    move-result v0

    float-to-int v0, v0

    move v2, v0

    move v3, v4

    goto :goto_2

    :cond_3
    invoke-virtual {v5, v1, v12, v12, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_4
    move-object v1, v0

    goto/16 :goto_1
.end method

.method static synthetic b(Lactivity/ChatActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lactivity/ChatActivity;->aa:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lactivity/ChatActivity;I)V
    .locals 0

    iput p1, p0, Lactivity/ChatActivity;->L:I

    return-void
.end method

.method private b(Lactivity/o;)V
    .locals 6

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lactivity/ChatActivity;->l:J

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

    iget-object v4, p0, Lactivity/ChatActivity;->d:Lcom/a/d;

    iget-object v5, p0, Lactivity/ChatActivity;->J:Lcom/c/l;

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

.method static synthetic c(Lactivity/ChatActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lactivity/ChatActivity;->X:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lactivity/ChatActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lactivity/ChatActivity;->M:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic e(Lactivity/ChatActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lactivity/ChatActivity;->Z:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private e(I)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    const-string v0, "send Rage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x5a

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lactivity/ChatActivity;->S:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lactivity/ChatActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 p1, 0x64

    :goto_0
    iget-object v0, p0, Lactivity/ChatActivity;->R:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lactivity/ChatActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lactivity/ChatActivity;->S:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic f(Lactivity/ChatActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lactivity/ChatActivity;->O:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic g(Lactivity/ChatActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lactivity/ChatActivity;->z:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic h(Lactivity/ChatActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lactivity/ChatActivity;->w:Landroid/widget/Button;

    return-object v0
.end method

.method private h()V
    .locals 13

    const-string v0, "ChatActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "firstListView "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lactivity/ChatActivity;->V:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lactivity/ChatActivity;->V:I

    add-int/lit8 v4, v0, 0x1

    iget-object v0, p0, Lactivity/ChatActivity;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v1, Lactivity/o;

    invoke-direct {v1}, Lactivity/o;-><init>()V

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lactivity/o;->d(I)V

    iget-object v0, p0, Lactivity/ChatActivity;->I:Lcom/c/l;

    invoke-virtual {v0}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lactivity/o;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lactivity/ChatActivity;->c:Lcom/a/a;

    iget-object v2, p0, Lactivity/ChatActivity;->I:Lcom/c/l;

    invoke-virtual {v2}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/a/a;->b(Ljava/lang/String;)Lactivity/z;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lactivity/ChatActivity;->b:Landroid/content/Context;

    const v2, 0x7f070050

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lactivity/o;->d(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    iget-boolean v2, p0, Lactivity/ChatActivity;->W:Z

    if-nez v2, :cond_0

    const/4 v0, 0x1

    iget-object v2, p0, Lactivity/ChatActivity;->G:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move v1, v0

    iget-object v0, p0, Lactivity/ChatActivity;->d:Lcom/a/d;

    iget-object v2, p0, Lactivity/ChatActivity;->J:Lcom/c/l;

    invoke-virtual {v2}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lactivity/ChatActivity;->I:Lcom/c/l;

    invoke-virtual {v3}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/a/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v2, 0x1

    const/4 v0, 0x1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_9

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v0

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    int-to-float v0, v2

    const/high16 v2, 0x3f80

    mul-float/2addr v0, v2

    int-to-float v2, v3

    div-float/2addr v0, v2

    const/high16 v2, 0x42c8

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lactivity/ChatActivity;->e(I)V

    iget-object v0, p0, Lactivity/ChatActivity;->B:Landroid/widget/ListView;

    iget-object v2, p0, Lactivity/ChatActivity;->E:Lactivity/p;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lactivity/ChatActivity;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v4, v0, :cond_5

    add-int/lit8 v0, v4, -0x1

    :goto_3
    iget-boolean v2, p0, Lactivity/ChatActivity;->T:Z

    if-eqz v2, :cond_6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lactivity/ChatActivity;->T:Z

    iget-object v0, p0, Lactivity/ChatActivity;->B:Landroid/widget/ListView;

    iget-object v2, p0, Lactivity/ChatActivity;->B:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    :goto_4
    iget-object v0, p0, Lactivity/ChatActivity;->B:Landroid/widget/ListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lactivity/ChatActivity;->B:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v0, p0, Lactivity/ChatActivity;->E:Lactivity/p;

    invoke-virtual {v0}, Lactivity/p;->notifyDataSetChanged()V

    iget-object v0, p0, Lactivity/ChatActivity;->B:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setClickable(Z)V

    iget-object v0, p0, Lactivity/ChatActivity;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lactivity/ChatActivity;->t:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_5
    return-void

    :cond_2
    iget-object v0, p0, Lactivity/ChatActivity;->b:Landroid/content/Context;

    const v2, 0x7f070051

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lactivity/o;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/o;

    invoke-virtual {v0}, Lactivity/o;->m()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Lactivity/o;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/a/e;->a(Ljava/lang/String;)J

    move-result-wide v7

    iget-wide v9, p0, Lactivity/ChatActivity;->K:J

    sub-long v9, v7, v9

    const-wide/32 v11, 0x493e0

    cmp-long v9, v9, v11

    if-lez v9, :cond_4

    new-instance v9, Lactivity/o;

    invoke-direct {v9}, Lactivity/o;-><init>()V

    invoke-virtual {v9, v6}, Lactivity/o;->c(Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-virtual {v9, v6}, Lactivity/o;->a(Z)V

    const/4 v6, 0x2

    invoke-virtual {v9, v6}, Lactivity/o;->d(I)V

    const-string v6, "Error"

    invoke-virtual {v9, v6}, Lactivity/o;->d(Ljava/lang/String;)V

    iput-wide v7, p0, Lactivity/ChatActivity;->K:J

    iget-object v6, p0, Lactivity/ChatActivity;->G:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v6, p0, Lactivity/ChatActivity;->G:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lactivity/o;->n()I

    move-result v6

    invoke-virtual {v0}, Lactivity/o;->l()I

    move-result v7

    packed-switch v6, :pswitch_data_0

    :goto_6
    :pswitch_0
    invoke-virtual {v0}, Lactivity/o;->l()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    invoke-virtual {v0}, Lactivity/o;->g()I

    move-result v6

    const/16 v7, 0x64

    if-eq v6, v7, :cond_1

    invoke-virtual {v0}, Lactivity/o;->n()I

    move-result v6

    const/4 v7, 0x7

    if-eq v6, v7, :cond_1

    const/4 v6, 0x1

    if-ne v2, v6, :cond_8

    invoke-virtual {v0}, Lactivity/o;->g()I

    move-result v0

    :goto_7
    add-int/lit8 v2, v3, 0x64

    move v3, v2

    move v2, v0

    goto/16 :goto_1

    :pswitch_1
    packed-switch v7, :pswitch_data_1

    goto :goto_6

    :pswitch_2
    new-instance v6, Lactivity/o;

    invoke-direct {v6}, Lactivity/o;-><init>()V

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lactivity/o;->d(I)V

    iget-object v7, p0, Lactivity/ChatActivity;->G:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :pswitch_3
    packed-switch v7, :pswitch_data_2

    goto :goto_6

    :pswitch_4
    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Lactivity/o;->d(I)V

    goto :goto_6

    :pswitch_5
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lactivity/o;->d(I)V

    goto :goto_6

    :cond_5
    move v0, v4

    goto/16 :goto_3

    :cond_6
    iget-object v2, p0, Lactivity/ChatActivity;->B:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_4

    :cond_7
    iget-object v0, p0, Lactivity/ChatActivity;->t:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_5

    :cond_8
    move v0, v2

    goto :goto_7

    :cond_9
    move v3, v0

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic i(Lactivity/ChatActivity;)I
    .locals 1

    iget v0, p0, Lactivity/ChatActivity;->L:I

    return v0
.end method

.method private i()V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lactivity/ChatActivity;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    invoke-direct {p0}, Lactivity/ChatActivity;->m()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v2, Lactivity/NewMessageActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "msg"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lactivity/ChatActivity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lactivity/ChatActivity;->H:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/l;

    invoke-virtual {v0}, Lactivity/l;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lactivity/l;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lactivity/l;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private j()V
    .locals 6

    const/4 v5, 0x0

    :goto_0
    iget-object v0, p0, Lactivity/ChatActivity;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v5, p0, Lactivity/ChatActivity;->L:I

    invoke-direct {p0}, Lactivity/ChatActivity;->k()V

    invoke-virtual {p0}, Lactivity/ChatActivity;->e()V

    return-void

    :cond_0
    iget-object v0, p0, Lactivity/ChatActivity;->H:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/l;

    invoke-virtual {v0}, Lactivity/l;->e()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lactivity/l;->e()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lactivity/l;->e()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lactivity/l;->e()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lactivity/ChatActivity;->d:Lcom/a/d;

    iget-object v2, p0, Lactivity/ChatActivity;->J:Lcom/c/l;

    invoke-virtual {v2}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lactivity/l;->f()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/a/d;->a(Ljava/lang/String;J)V

    :cond_2
    iget-object v0, p0, Lactivity/ChatActivity;->H:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic j(Lactivity/ChatActivity;)V
    .locals 0

    invoke-direct {p0}, Lactivity/ChatActivity;->k()V

    return-void
.end method

.method static synthetic k(Lactivity/ChatActivity;)Lactivity/m;
    .locals 1

    iget-object v0, p0, Lactivity/ChatActivity;->F:Lactivity/m;

    return-object v0
.end method

.method private k()V
    .locals 6

    const/16 v5, 0xff

    const/16 v4, 0x64

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lactivity/ChatActivity;->L:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " ( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lactivity/ChatActivity;->L:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lactivity/ChatActivity;->v:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v1, p0, Lactivity/ChatActivity;->u:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v1, p0, Lactivity/ChatActivity;->u:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lactivity/ChatActivity;->v:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_0
    iget-object v1, p0, Lactivity/ChatActivity;->v:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lactivity/ChatActivity;->b:Landroid/content/Context;

    const v4, 0x7f070052

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lactivity/ChatActivity;->u:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lactivity/ChatActivity;->b:Landroid/content/Context;

    const v4, 0x7f070053

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string v0, ""

    iget-object v1, p0, Lactivity/ChatActivity;->v:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v1, p0, Lactivity/ChatActivity;->u:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v1, p0, Lactivity/ChatActivity;->u:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lactivity/ChatActivity;->v:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method private l()V
    .locals 7

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lactivity/ChatActivity;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    invoke-virtual {p0}, Lactivity/ChatActivity;->e()V

    iput v2, p0, Lactivity/ChatActivity;->L:I

    invoke-direct {p0}, Lactivity/ChatActivity;->k()V

    return-void

    :cond_0
    iget-object v0, p0, Lactivity/ChatActivity;->H:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/l;

    invoke-virtual {v0}, Lactivity/l;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lactivity/ChatActivity;->d:Lcom/a/d;

    iget-object v4, p0, Lactivity/ChatActivity;->J:Lcom/c/l;

    invoke-virtual {v4}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lactivity/l;->f()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/a/d;->a(Ljava/lang/String;J)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private m()V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    iput v1, p0, Lactivity/ChatActivity;->L:I

    iget-object v0, p0, Lactivity/ChatActivity;->s:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lactivity/ChatActivity;->t:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lactivity/ChatActivity;->y:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lactivity/ChatActivity;->w:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lactivity/ChatActivity;->C:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lactivity/ChatActivity;->D:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lactivity/ChatActivity;->B:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setClickable(Z)V

    invoke-virtual {p0}, Lactivity/ChatActivity;->e()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    const/4 v3, 0x1

    iget-object v0, p0, Lactivity/ChatActivity;->d:Lcom/a/d;

    iget-object v1, p0, Lactivity/ChatActivity;->J:Lcom/c/l;

    invoke-virtual {v1}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lactivity/ChatActivity;->I:Lcom/c/l;

    invoke-virtual {v2}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    move v1, v3

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    const-string v0, "SendMsgBar"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v0, v1

    const/high16 v1, 0x3f80

    mul-float/2addr v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lactivity/ChatActivity;->e(I)V

    return-void

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/o;

    invoke-virtual {v0}, Lactivity/o;->m()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lactivity/o;->l()I

    move-result v5

    if-ne v5, v3, :cond_0

    invoke-virtual {v0}, Lactivity/o;->g()I

    move-result v5

    const/16 v6, 0x64

    if-eq v5, v6, :cond_0

    invoke-virtual {v0}, Lactivity/o;->n()I

    move-result v5

    const/4 v6, 0x7

    if-eq v5, v6, :cond_0

    if-ne v1, v3, :cond_2

    invoke-virtual {v0}, Lactivity/o;->g()I

    move-result v0

    :goto_2
    add-int/lit8 v1, v2, 0x64

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v2, v3

    move v1, v3

    goto :goto_1
.end method

.method public final a(B)V
    .locals 3

    invoke-virtual {p0}, Lactivity/ChatActivity;->e()V

    const-string v0, "UpdateChatUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lactivity/ChatActivity;->B:Landroid/widget/ListView;

    iget-object v1, p0, Lactivity/ChatActivity;->B:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final a(Lactivity/o;)V
    .locals 5

    iget-object v0, p0, Lactivity/ChatActivity;->g:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->b()Lcom/b/i;

    move-result-object v0

    iget-object v1, p0, Lactivity/ChatActivity;->g:Lactivity/MyApplication;

    invoke-virtual {v1}, Lactivity/MyApplication;->d()Lcom/b/d;

    move-result-object v1

    new-instance v2, Lcom/b/y;

    invoke-direct {v2, p1}, Lcom/b/y;-><init>(Lactivity/o;)V

    new-instance v3, Lcom/c/j;

    invoke-direct {v3}, Lcom/c/j;-><init>()V

    invoke-virtual {p1}, Lactivity/o;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/c/j;->a(Ljava/lang/String;Lcom/b/y;)V

    invoke-virtual {v2}, Lcom/b/y;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lactivity/o;->b(I)V

    invoke-virtual {v1, v3}, Lcom/b/d;->b(Lcom/c/j;)V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x32

    invoke-virtual {p1, v1}, Lactivity/o;->b(I)V

    invoke-virtual {v0, v3}, Lcom/b/i;->b(Lcom/c/j;)V

    goto :goto_0
.end method

.method public final a_()V
    .locals 2

    iget-object v0, p0, Lactivity/ChatActivity;->r:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lactivity/ChatActivity;->r:Landroid/widget/Button;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method protected final b()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/c/a;->a:Ljava/lang/String;

    iput-object v1, p0, Lactivity/ChatActivity;->P:Ljava/lang/String;

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

    iget-object v3, p0, Lactivity/ChatActivity;->P:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lactivity/ChatActivity;->P:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lactivity/ChatActivity;->P:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lactivity/ChatActivity;->P:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.videoQuality"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v1, 0x11011

    invoke-virtual {p0, v0, v1}, Lactivity/ChatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final b(B)V
    .locals 0

    return-void
.end method

.method public final b(I)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070041

    invoke-virtual {p0, v1}, Lactivity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070042

    invoke-virtual {p0, v1}, Lactivity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070043

    invoke-virtual {p0, v1}, Lactivity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lactivity/d;

    invoke-direct {v2, p0, p1}, Lactivity/d;-><init>(Lactivity/ChatActivity;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070044

    invoke-virtual {p0, v1}, Lactivity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lactivity/ChatActivity;->r:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lactivity/ChatActivity;->r:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public final c(I)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070041

    invoke-virtual {p0, v1}, Lactivity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070045

    invoke-virtual {p0, v1}, Lactivity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070043

    invoke-virtual {p0, v1}, Lactivity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lactivity/e;

    invoke-direct {v2, p0, p1}, Lactivity/e;-><init>(Lactivity/ChatActivity;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070044

    invoke-virtual {p0, v1}, Lactivity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final e()V
    .locals 15

    const-wide/16 v13, 0x0

    const/4 v9, 0x1

    iget-object v0, p0, Lactivity/ChatActivity;->d:Lcom/a/d;

    iget-object v1, p0, Lactivity/ChatActivity;->J:Lcom/c/l;

    invoke-virtual {v1}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lactivity/ChatActivity;->I:Lcom/c/l;

    invoke-virtual {v2}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v13, p0, Lactivity/ChatActivity;->K:J

    iget-object v0, p0, Lactivity/ChatActivity;->y:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lactivity/ChatActivity;->d:Lcom/a/d;

    iget-object v1, p0, Lactivity/ChatActivity;->J:Lcom/c/l;

    invoke-virtual {v1}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lactivity/ChatActivity;->I:Lcom/c/l;

    invoke-virtual {v2}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lactivity/ChatActivity;->H:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v8, v9

    move v7, v9

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    int-to-float v0, v7

    const/high16 v1, 0x3f80

    mul-float/2addr v0, v1

    int-to-float v1, v8

    div-float/2addr v0, v1

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lactivity/ChatActivity;->e(I)V

    const-string v0, "ChatActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "firstListView "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lactivity/ChatActivity;->V:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lactivity/ChatActivity;->V:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lactivity/ChatActivity;->B:Landroid/widget/ListView;

    iget-object v2, p0, Lactivity/ChatActivity;->F:Lactivity/m;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-boolean v1, p0, Lactivity/ChatActivity;->T:Z

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lactivity/ChatActivity;->T:Z

    iget-object v0, p0, Lactivity/ChatActivity;->B:Landroid/widget/ListView;

    iget-object v1, p0, Lactivity/ChatActivity;->B:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :goto_2
    iget-object v0, p0, Lactivity/ChatActivity;->B:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x100

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lactivity/ChatActivity;->B:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v0, p0, Lactivity/ChatActivity;->F:Lactivity/m;

    invoke-virtual {v0}, Lactivity/m;->notifyDataSetChanged()V

    iget-object v0, p0, Lactivity/ChatActivity;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lactivity/ChatActivity;->m()V

    :cond_1
    :goto_3
    return-void

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lactivity/o;

    invoke-virtual {v6}, Lactivity/o;->m()J

    move-result-wide v0

    cmp-long v0, v0, v13

    if-eqz v0, :cond_0

    new-instance v0, Lactivity/l;

    invoke-virtual {v6}, Lactivity/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lactivity/o;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lactivity/o;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lactivity/o;->i()Z

    move-result v4

    invoke-virtual {v6}, Lactivity/o;->l()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lactivity/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v6}, Lactivity/o;->m()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lactivity/l;->a(J)V

    invoke-virtual {v6}, Lactivity/o;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Lactivity/l;->b(I)V

    invoke-virtual {v6}, Lactivity/o;->l()I

    move-result v1

    if-ne v1, v9, :cond_7

    invoke-virtual {v6}, Lactivity/o;->g()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_7

    invoke-virtual {v6}, Lactivity/o;->n()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_7

    if-ne v7, v9, :cond_6

    invoke-virtual {v6}, Lactivity/o;->g()I

    move-result v1

    :goto_4
    add-int/lit8 v2, v8, 0x64

    move v7, v1

    move v1, v2

    :goto_5
    invoke-virtual {v0}, Lactivity/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/a/e;->a(Ljava/lang/String;)J

    move-result-wide v3

    iget-wide v5, p0, Lactivity/ChatActivity;->K:J

    sub-long v5, v3, v5

    const-wide/32 v11, 0x493e0

    cmp-long v5, v5, v11

    if-lez v5, :cond_3

    new-instance v5, Lactivity/l;

    invoke-direct {v5}, Lactivity/l;-><init>()V

    invoke-virtual {v5, v2}, Lactivity/l;->a(Ljava/lang/String;)V

    invoke-virtual {v5}, Lactivity/l;->g()V

    const/4 v2, 0x2

    invoke-virtual {v5, v2}, Lactivity/l;->a(I)V

    const-string v2, "Error"

    invoke-virtual {v5, v2}, Lactivity/l;->b(Ljava/lang/String;)V

    iput-wide v3, p0, Lactivity/ChatActivity;->K:J

    iget-object v2, p0, Lactivity/ChatActivity;->H:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v2, p0, Lactivity/ChatActivity;->H:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lactivity/l;->h()I

    move-result v2

    invoke-virtual {v0}, Lactivity/l;->e()I

    move-result v3

    packed-switch v2, :pswitch_data_0

    :goto_6
    :pswitch_0
    move v8, v1

    goto/16 :goto_0

    :pswitch_1
    packed-switch v3, :pswitch_data_1

    :goto_7
    move v8, v1

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Lactivity/l;

    invoke-direct {v0}, Lactivity/l;-><init>()V

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lactivity/l;->a(I)V

    iget-object v2, p0, Lactivity/ChatActivity;->H:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :pswitch_3
    packed-switch v3, :pswitch_data_2

    goto :goto_6

    :pswitch_4
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lactivity/l;->a(I)V

    goto :goto_6

    :cond_4
    iget-object v1, p0, Lactivity/ChatActivity;->B:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_2

    :cond_5
    invoke-direct {p0}, Lactivity/ChatActivity;->h()V

    goto/16 :goto_3

    :cond_6
    move v1, v7

    goto :goto_4

    :cond_7
    move v1, v8

    goto :goto_5

    :cond_8
    move v8, v9

    move v7, v9

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public final f()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lactivity/ChatActivity;->Z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lactivity/ChatActivity;->M:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const/4 v0, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lactivity/ChatActivity;->getContentResolver()Landroid/content/ContentResolver;

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

    iput-object v0, p0, Lactivity/ChatActivity;->Q:Ljava/lang/String;

    iget-object v0, p0, Lactivity/ChatActivity;->Q:Ljava/lang/String;

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "Video Path"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lactivity/ChatActivity;->Q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lactivity/ChatActivity;->Q:Ljava/lang/String;

    invoke-direct {p0, v0}, Lactivity/ChatActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lactivity/ChatActivity;->P:Ljava/lang/String;

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "Photo Path"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lactivity/ChatActivity;->P:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lactivity/ChatActivity;->P:Ljava/lang/String;

    invoke-direct {p0, v0}, Lactivity/ChatActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
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

    invoke-direct {p0, v0}, Lactivity/ChatActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    move-object v3, p0

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lactivity/ChatActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x11010
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/16 v6, 0x8

    const/4 v4, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lactivity/ChatActivity;->z:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lactivity/ChatActivity;->z:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object v2, v0

    move v0, v1

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lactivity/ChatActivity;->a_()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lactivity/o;

    invoke-direct {v0}, Lactivity/o;-><init>()V

    iget-object v3, p0, Lactivity/ChatActivity;->I:Lcom/c/l;

    invoke-virtual {v3}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lactivity/o;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/a/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lactivity/o;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lactivity/o;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lactivity/ChatActivity;->I:Lcom/c/l;

    invoke-virtual {v2}, Lcom/c/l;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Lactivity/o;->c(I)V

    invoke-virtual {v0}, Lactivity/o;->h()V

    invoke-virtual {v0}, Lactivity/o;->j()V

    invoke-virtual {v0, v1}, Lactivity/o;->a(Z)V

    invoke-virtual {v0, v8}, Lactivity/o;->d(I)V

    invoke-virtual {v0, v6}, Lactivity/o;->e(I)V

    invoke-direct {p0, v0}, Lactivity/ChatActivity;->b(Lactivity/o;)V

    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->a(Lactivity/o;)V

    const-string v1, "setRate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lactivity/o;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lactivity/ChatActivity;->d:Lcom/a/d;

    iget-object v2, p0, Lactivity/ChatActivity;->J:Lcom/c/l;

    invoke-virtual {v2}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/a/d;->a(Ljava/lang/String;Lactivity/o;)V

    invoke-virtual {p0}, Lactivity/ChatActivity;->e()V

    iget-object v0, p0, Lactivity/ChatActivity;->B:Landroid/widget/ListView;

    iget-object v1, p0, Lactivity/ChatActivity;->B:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v0, p0, Lactivity/ChatActivity;->E:Lactivity/p;

    invoke-virtual {v0}, Lactivity/p;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_2
    const-string v3, "STARTFILE:"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const-string v4, ":ENDFILE"

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v3, v7, :cond_1

    if-eq v0, v7, :cond_1

    if-lez v3, :cond_3

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v3, v0, 0x8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    add-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, 0x8

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x8

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    add-int/lit8 v0, v0, 0x8

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lactivity/ChatActivity;->finish()V

    goto/16 :goto_0

    :sswitch_2
    invoke-direct {p0}, Lactivity/ChatActivity;->j()V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lactivity/ChatActivity;->s:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lactivity/ChatActivity;->t:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lactivity/ChatActivity;->y:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lactivity/ChatActivity;->w:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lactivity/ChatActivity;->B:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setClickable(Z)V

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lactivity/ChatActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lactivity/ChatActivity;->C:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lactivity/ChatActivity;->D:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lactivity/ChatActivity;->f()V

    invoke-virtual {p0}, Lactivity/ChatActivity;->e()V

    invoke-direct {p0}, Lactivity/ChatActivity;->k()V

    goto/16 :goto_0

    :sswitch_4
    invoke-direct {p0}, Lactivity/ChatActivity;->m()V

    goto/16 :goto_0

    :sswitch_5
    invoke-direct {p0}, Lactivity/ChatActivity;->l()V

    goto/16 :goto_0

    :sswitch_6
    invoke-direct {p0}, Lactivity/ChatActivity;->i()V

    goto/16 :goto_0

    :sswitch_7
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lactivity/AddToContactActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "user"

    iget-object v2, p0, Lactivity/ChatActivity;->I:Lcom/c/l;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lactivity/ChatActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lactivity/ChatActivity;->M:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lactivity/ChatActivity;->Z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lactivity/ChatActivity;->M:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v6}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    iget-object v0, p0, Lactivity/ChatActivity;->Z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lactivity/ChatActivity;->M:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p0}, Lactivity/ChatActivity;->f()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0011 -> :sswitch_1
        0x7f0b0012 -> :sswitch_2
        0x7f0b0014 -> :sswitch_3
        0x7f0b0019 -> :sswitch_4
        0x7f0b001d -> :sswitch_8
        0x7f0b001e -> :sswitch_0
        0x7f0b001f -> :sswitch_9
        0x7f0b0021 -> :sswitch_6
        0x7f0b0022 -> :sswitch_5
        0x7f0b0049 -> :sswitch_7
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lactivity/MyActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v5}, Lactivity/ChatActivity;->requestWindowFeature(I)Z

    iget-object v0, p0, Lactivity/ChatActivity;->h:Lcom/d/a;

    invoke-virtual {v0}, Lcom/d/a;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lactivity/ChatActivity;->i:Ljava/lang/String;

    iget-object v0, p0, Lactivity/ChatActivity;->i:Ljava/lang/String;

    const-string v1, "||"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->setContentView(I)V

    iput-boolean v5, p0, Lactivity/ChatActivity;->W:Z

    const v0, 0x7f0b0064

    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lactivity/ChatActivity;->aa:Landroid/widget/TextView;

    iget-object v0, p0, Lactivity/ChatActivity;->aa:Landroid/widget/TextView;

    new-instance v1, Lactivity/f;

    invoke-direct {v1, p0}, Lactivity/f;-><init>(Lactivity/ChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lactivity/ChatActivity;->aa:Landroid/widget/TextView;

    const v1, 0x7f070057

    invoke-virtual {p0, v1}, Lactivity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0063

    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lactivity/ChatActivity;->X:Landroid/widget/TextView;

    iget-object v0, p0, Lactivity/ChatActivity;->i:Ljava/lang/String;

    iget-object v1, p0, Lactivity/ChatActivity;->c:Lcom/a/a;

    const-string v2, ","

    invoke-static {v0, v1, v2}, Lcom/c/g;->a(Ljava/lang/String;Lcom/a/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lactivity/ChatActivity;->X:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {}, Lcom/c/h;->i()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcom/c/g;->a(Ljava/lang/String;Landroid/graphics/Paint;F)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lactivity/ChatActivity;->X:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "& more"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Lactivity/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/c/l;

    iput-object v0, p0, Lactivity/ChatActivity;->I:Lcom/c/l;

    iget-object v0, p0, Lactivity/ChatActivity;->I:Lcom/c/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/c/l;

    invoke-direct {v0}, Lcom/c/l;-><init>()V

    iput-object v0, p0, Lactivity/ChatActivity;->I:Lcom/c/l;

    iget-object v0, p0, Lactivity/ChatActivity;->I:Lcom/c/l;

    iget-object v1, p0, Lactivity/ChatActivity;->h:Lcom/d/a;

    invoke-virtual {v1}, Lcom/d/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lactivity/ChatActivity;->e:Lcom/a/g;

    iget-object v1, p0, Lactivity/ChatActivity;->I:Lcom/c/l;

    invoke-virtual {v0, v1}, Lcom/a/g;->a(Lcom/c/l;)V

    :cond_0
    new-instance v0, Lcom/c/l;

    invoke-direct {v0}, Lcom/c/l;-><init>()V

    iput-object v0, p0, Lactivity/ChatActivity;->J:Lcom/c/l;

    iget-object v0, p0, Lactivity/ChatActivity;->J:Lcom/c/l;

    iget-object v1, p0, Lactivity/ChatActivity;->h:Lcom/d/a;

    invoke-virtual {v1}, Lcom/d/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lactivity/ChatActivity;->e:Lcom/a/g;

    iget-object v1, p0, Lactivity/ChatActivity;->J:Lcom/c/l;

    invoke-virtual {v0, v1}, Lcom/a/g;->a(Lcom/c/l;)V

    new-instance v0, Lactivity/p;

    iget-object v1, p0, Lactivity/ChatActivity;->ac:Landroid/os/Handler;

    iget-object v2, p0, Lactivity/ChatActivity;->G:Ljava/util/List;

    invoke-direct {v0, v1, p0, v2}, Lactivity/p;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lactivity/ChatActivity;->E:Lactivity/p;

    new-instance v0, Lactivity/m;

    iget-object v1, p0, Lactivity/ChatActivity;->H:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lactivity/m;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lactivity/ChatActivity;->F:Lactivity/m;

    iget-object v0, p0, Lactivity/ChatActivity;->d:Lcom/a/d;

    iget-object v1, p0, Lactivity/ChatActivity;->J:Lcom/c/l;

    invoke-virtual {v1}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lactivity/ChatActivity;->I:Lcom/c/l;

    invoke-virtual {v2}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0b0018

    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lactivity/ChatActivity;->R:Landroid/widget/ProgressBar;

    const v0, 0x7f0b0016

    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lactivity/ChatActivity;->S:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lactivity/ChatActivity;->S:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lactivity/ChatActivity;->R:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    const v0, 0x7f0b001a

    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lactivity/ChatActivity;->B:Landroid/widget/ListView;

    new-instance v0, Lactivity/j;

    invoke-direct {v0, p0}, Lactivity/j;-><init>(Lactivity/ChatActivity;)V

    iget-object v1, p0, Lactivity/ChatActivity;->B:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/ChatActivity;->r:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/ChatActivity;->r:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0011

    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/ChatActivity;->s:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/ChatActivity;->s:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0012

    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/ChatActivity;->y:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/ChatActivity;->y:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/ChatActivity;->u:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/ChatActivity;->u:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0021

    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/ChatActivity;->v:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/ChatActivity;->v:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0015

    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lactivity/ChatActivity;->A:Landroid/widget/TextView;

    const v0, 0x7f0b0013

    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    iput v0, p0, Lactivity/ChatActivity;->ab:I

    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/ChatActivity;->x:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/ChatActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lactivity/ChatActivity;->c:Lcom/a/a;

    iget-object v1, p0, Lactivity/ChatActivity;->I:Lcom/c/l;

    invoke-virtual {v1}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a;->b(Ljava/lang/String;)Lactivity/z;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lactivity/z;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-boolean v1, p0, Lactivity/ChatActivity;->W:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lactivity/ChatActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {}, Lcom/c/h;->a()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/c/g;->a(Ljava/lang/String;Landroid/graphics/Paint;F)Ljava/lang/String;

    move-result-object v0

    :goto_2
    const-string v1, "ChatName "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lactivity/ChatActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b001f

    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lactivity/ChatActivity;->z:Landroid/widget/EditText;

    iget-object v0, p0, Lactivity/ChatActivity;->z:Landroid/widget/EditText;

    new-instance v1, Lactivity/k;

    invoke-direct {v1, p0}, Lactivity/k;-><init>(Lactivity/ChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lactivity/ChatActivity;->C:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lactivity/ChatActivity;->D:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/ChatActivity;->t:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/ChatActivity;->t:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0019

    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/ChatActivity;->w:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/ChatActivity;->w:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lactivity/b;

    invoke-direct {v0, p0}, Lactivity/b;-><init>(Lactivity/ChatActivity;)V

    invoke-virtual {p0}, Lactivity/ChatActivity;->a_()V

    iget-object v1, p0, Lactivity/ChatActivity;->z:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lactivity/ChatActivity;->z:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lactivity/ChatActivity;->B:Landroid/widget/ListView;

    new-instance v1, Lactivity/c;

    invoke-direct {v1, p0}, Lactivity/c;-><init>(Lactivity/ChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-boolean v5, p0, Lactivity/ChatActivity;->T:Z

    const/4 v0, 0x5

    new-array v0, v0, [I

    const v1, 0x7f0203cf

    aput v1, v0, v6

    const v1, 0x7f0203d0

    aput v1, v0, v5

    const v1, 0x7f0203d1

    aput v1, v0, v7

    const/4 v1, 0x3

    const v2, 0x7f0203d2

    aput v2, v0, v1

    const v1, 0x7f0203d3

    aput v1, v0, v3

    new-instance v1, Lactivity/i;

    sget-object v2, Lcom/c/o;->a:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p0, v0, v2}, Lactivity/i;-><init>(Lactivity/ChatActivity;Landroid/content/Context;[ILjava/util/ArrayList;)V

    iput-object v1, p0, Lactivity/ChatActivity;->Y:Lactivity/ac;

    const v0, 0x7f0b0024

    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lactivity/ChatActivity;->Z:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lactivity/ChatActivity;->Z:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lactivity/ChatActivity;->Y:Lactivity/ac;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lactivity/ChatActivity;->Z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f0b0023

    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lactivity/ChatActivity;->M:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lactivity/ChatActivity;->M:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lactivity/ChatActivity;->O:Ljava/util/ArrayList;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lactivity/ChatActivity;->N:Landroid/widget/GridView;

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

    const v3, 0x7f070046

    invoke-virtual {p0, v3}, Lactivity/ChatActivity;->getString(I)Ljava/lang/String;

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

    const v3, 0x7f070047

    invoke-virtual {p0, v3}, Lactivity/ChatActivity;->getString(I)Ljava/lang/String;

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

    const v3, 0x7f070048

    invoke-virtual {p0, v3}, Lactivity/ChatActivity;->getString(I)Ljava/lang/String;

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

    const v3, 0x7f070049

    invoke-virtual {p0, v3}, Lactivity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f03000c

    new-array v4, v7, [Ljava/lang/String;

    const-string v1, "image"

    aput-object v1, v4, v6

    const-string v1, "TITLE"

    aput-object v1, v4, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iget-object v1, p0, Lactivity/ChatActivity;->N:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lactivity/ChatActivity;->N:Landroid/widget/GridView;

    new-instance v1, Lactivity/g;

    invoke-direct {v1, p0}, Lactivity/g;-><init>(Lactivity/ChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lactivity/ChatActivity;->O:Ljava/util/ArrayList;

    iget-object v1, p0, Lactivity/ChatActivity;->N:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lactivity/h;

    invoke-direct {v0, p0}, Lactivity/h;-><init>(Lactivity/ChatActivity;)V

    iget-object v1, p0, Lactivity/ChatActivity;->M:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    return-void

    :cond_1
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->setContentView(I)V

    iput-boolean v6, p0, Lactivity/ChatActivity;->W:Z

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lactivity/ChatActivity;->I:Lcom/c/l;

    invoke-virtual {v0}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    const v0, 0x7f070056

    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    nop

    :array_0
    .array-data 0x4
        0x3at 0x0t 0xbt 0x7ft
        0x3bt 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lactivity/MyActivity;->onPause()V

    iget-object v0, p0, Lactivity/ChatActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-virtual {p0}, Lactivity/ChatActivity;->e()V

    iget-object v0, p0, Lactivity/ChatActivity;->c:Lcom/a/a;

    iget-object v1, p0, Lactivity/ChatActivity;->I:Lcom/c/l;

    invoke-virtual {v1}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a;->b(Ljava/lang/String;)Lactivity/z;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lactivity/z;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-boolean v1, p0, Lactivity/ChatActivity;->W:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lactivity/ChatActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {}, Lcom/c/h;->a()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/c/g;->a(Ljava/lang/String;Landroid/graphics/Paint;F)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "ChatName "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lactivity/ChatActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-super {p0}, Lactivity/MyActivity;->onResume()V

    iget-object v0, p0, Lactivity/ChatActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/a/a;->b(Landroid/content/Context;)V

    return-void

    :cond_0
    iget-object v0, p0, Lactivity/ChatActivity;->I:Lcom/c/l;

    invoke-virtual {v0}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f070056

    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
