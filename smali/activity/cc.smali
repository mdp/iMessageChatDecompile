.class public final Lactivity/cc;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final a:I

.field private b:Landroid/content/Context;

.field private c:Ljava/util/LinkedList;

.field private d:Lactivity/MyApplication;

.field private e:Landroid/view/LayoutInflater;

.field private f:I

.field private g:Lcom/c/l;

.field private h:Lcom/a/g;

.field private i:Lcom/a/d;

.field private j:Landroid/os/Handler;

.field private k:[I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Ljava/util/LinkedList;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const v0, 0x1234567

    iput v0, p0, Lactivity/cc;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lactivity/cc;->f:I

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lactivity/cc;->k:[I

    iput-object p2, p0, Lactivity/cc;->b:Landroid/content/Context;

    iput-object p1, p0, Lactivity/cc;->j:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lactivity/MyApplication;

    iput-object v0, p0, Lactivity/cc;->d:Lactivity/MyApplication;

    iput-object p3, p0, Lactivity/cc;->c:Ljava/util/LinkedList;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lactivity/cc;->e:Landroid/view/LayoutInflater;

    return-void

    nop

    :array_0
    .array-data 0x4
        0xa8t 0x3t 0x2t 0x7ft
        0x89t 0x3t 0x2t 0x7ft
        0x8at 0x3t 0x2t 0x7ft
        0x8bt 0x3t 0x2t 0x7ft
        0x8ct 0x3t 0x2t 0x7ft
        0x8dt 0x3t 0x2t 0x7ft
        0x8et 0x3t 0x2t 0x7ft
        0x8ft 0x3t 0x2t 0x7ft
        0x90t 0x3t 0x2t 0x7ft
        0x91t 0x3t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic a(Lactivity/cc;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lactivity/cc;->c:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic a(Lactivity/cc;I)V
    .locals 0

    iput p1, p0, Lactivity/cc;->f:I

    return-void
.end method

.method static synthetic a(Lactivity/cc;Lcom/a/d;)V
    .locals 0

    iput-object p1, p0, Lactivity/cc;->i:Lcom/a/d;

    return-void
.end method

.method static synthetic a(Lactivity/cc;Lcom/a/g;)V
    .locals 0

    iput-object p1, p0, Lactivity/cc;->h:Lcom/a/g;

    return-void
.end method

.method static synthetic a(Lactivity/cc;Lcom/c/l;)V
    .locals 0

    iput-object p1, p0, Lactivity/cc;->g:Lcom/c/l;

    return-void
.end method

.method static synthetic b(Lactivity/cc;)Lactivity/MyApplication;
    .locals 1

    iget-object v0, p0, Lactivity/cc;->d:Lactivity/MyApplication;

    return-object v0
.end method

.method static synthetic c(Lactivity/cc;)Lcom/a/d;
    .locals 1

    iget-object v0, p0, Lactivity/cc;->i:Lcom/a/d;

    return-object v0
.end method

.method static synthetic d(Lactivity/cc;)Lcom/c/l;
    .locals 1

    iget-object v0, p0, Lactivity/cc;->g:Lcom/c/l;

    return-object v0
.end method

.method static synthetic e(Lactivity/cc;)Lcom/a/g;
    .locals 1

    iget-object v0, p0, Lactivity/cc;->h:Lcom/a/g;

    return-object v0
.end method

.method static synthetic f(Lactivity/cc;)I
    .locals 1

    iget v0, p0, Lactivity/cc;->f:I

    return v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lactivity/cc;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lactivity/cc;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lactivity/cc;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/cg;

    invoke-virtual {v0}, Lactivity/cg;->b()I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/16 v9, 0xb

    const/4 v3, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x0

    iget-object v0, p0, Lactivity/cc;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/cg;

    invoke-virtual {v0}, Lactivity/cg;->b()I

    move-result v1

    sget v2, Lactivity/ci;->b:I

    if-ne v1, v2, :cond_5

    if-nez p2, :cond_3

    iget-object v1, p0, Lactivity/cc;->e:Landroid/view/LayoutInflater;

    const v2, 0x7f030028

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lactivity/cf;

    invoke-direct {v2}, Lactivity/cf;-><init>()V

    const v1, 0x7f0b0096

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lactivity/cf;->a:Landroid/widget/ImageView;

    const v1, 0x7f0b0098

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lactivity/cf;->b:Landroid/widget/TextView;

    const v1, 0x7f0b0099

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lactivity/cf;->c:Landroid/widget/TextView;

    const v1, 0x7f0b009a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lactivity/cf;->d:Landroid/widget/TextView;

    const v1, 0x7f0b009b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lactivity/cf;->e:Landroid/widget/TextView;

    const v1, 0x7f0b0095

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v2, Lactivity/cf;->f:Landroid/widget/Button;

    const v1, 0x7f0b009c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v2, Lactivity/cf;->g:Landroid/widget/Button;

    invoke-virtual {v0}, Lactivity/cg;->b()I

    move-result v1

    iput v1, v2, Lactivity/cf;->i:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_0
    iget-object v2, v1, Lactivity/cf;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lactivity/cc;->k:[I

    invoke-virtual {v0}, Lactivity/cg;->d()I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, v1, Lactivity/cf;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lactivity/cg;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lactivity/cf;->b:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    sget v5, Lcom/c/h;->a:F

    const/high16 v6, 0x4387

    mul-float/2addr v5, v6

    const/high16 v6, 0x43f0

    div-float/2addr v5, v6

    invoke-static {v3, v4, v5}, Lcom/c/g;->a(Ljava/lang/String;Landroid/graphics/Paint;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lactivity/cg;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v9, :cond_0

    const/16 v3, 0x10

    invoke-virtual {v2, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v3, v1, Lactivity/cf;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lactivity/cf;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lactivity/cg;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lactivity/cc;->b:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lcom/c/g;->a(Landroid/widget/TextView;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0}, Lactivity/cg;->i()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lactivity/cf;->f:Landroid/widget/Button;

    const v3, 0x7f020414

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v2, v1, Lactivity/cf;->g:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, v1, Lactivity/cf;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v2, v1, Lactivity/cf;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    new-instance v2, Lactivity/cd;

    invoke-direct {v2, p0, v0, p1}, Lactivity/cd;-><init>(Lactivity/cc;Lactivity/cg;I)V

    iget-object v0, v1, Lactivity/cf;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lactivity/cf;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lactivity/ce;

    invoke-direct {v0, p0}, Lactivity/ce;-><init>(Lactivity/cc;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    :goto_2
    return-object p2

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lactivity/cf;

    goto/16 :goto_0

    :cond_4
    iget-object v2, v1, Lactivity/cf;->f:Landroid/widget/Button;

    const v3, 0x7f020415

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v2, v1, Lactivity/cf;->g:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, v1, Lactivity/cf;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0}, Lactivity/cg;->e()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, v1, Lactivity/cf;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lactivity/cg;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lactivity/cf;->e:Landroid/widget/TextView;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v1, Lactivity/cf;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lactivity/cg;->b()I

    move-result v1

    sget v2, Lactivity/ci;->a:I

    if-ne v1, v2, :cond_7

    if-nez p2, :cond_6

    iget-object v1, p0, Lactivity/cc;->e:Landroid/view/LayoutInflater;

    const v2, 0x7f03002d

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lactivity/cf;

    invoke-direct {v2}, Lactivity/cf;-><init>()V

    const v1, 0x7f0b00c3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-static {v2, v1}, Lactivity/cf;->a(Lactivity/cf;Landroid/widget/LinearLayout;)V

    const v1, 0x7f0b00c4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lactivity/cf;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Lactivity/cg;->b()I

    move-result v1

    iput v1, v2, Lactivity/cf;->i:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_3
    iget-object v1, v1, Lactivity/cf;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Lactivity/cg;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lactivity/cf;

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Lactivity/cg;->b()I

    move-result v1

    sget v2, Lactivity/ci;->c:I

    if-ne v1, v2, :cond_2

    if-nez p2, :cond_8

    iget-object v1, p0, Lactivity/cc;->e:Landroid/view/LayoutInflater;

    const v2, 0x7f030029

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lactivity/cf;

    invoke-direct {v2}, Lactivity/cf;-><init>()V

    const v1, 0x7f0b009d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lactivity/cf;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lactivity/cg;->b()I

    move-result v1

    iput v1, v2, Lactivity/cf;->i:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_4
    iget-object v1, v1, Lactivity/cf;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lactivity/cg;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lactivity/cf;

    goto :goto_4
.end method

.method public final getViewTypeCount()I
    .locals 1

    sget v0, Lactivity/ci;->d:I

    return v0
.end method
