.class public final Lactivity/v;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final a:I

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;

.field private d:Lactivity/MyApplication;

.field private e:Landroid/view/LayoutInflater;

.field private f:Landroid/os/Handler;

.field private g:[I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lactivity/v;->a:I

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lactivity/v;->g:[I

    iput-object p2, p0, Lactivity/v;->b:Landroid/content/Context;

    iput-object p1, p0, Lactivity/v;->f:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lactivity/MyApplication;

    iput-object v0, p0, Lactivity/v;->d:Lactivity/MyApplication;

    iput-object p3, p0, Lactivity/v;->c:Ljava/util/List;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lactivity/v;->e:Landroid/view/LayoutInflater;

    return-void

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


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lactivity/v;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lactivity/v;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    iget-object v0, p0, Lactivity/v;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/z;

    invoke-virtual {v0}, Lactivity/z;->c()I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Lactivity/v;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/z;

    invoke-virtual {v0}, Lactivity/z;->c()I

    move-result v1

    sget v2, Lactivity/aa;->b:I

    if-ne v1, v2, :cond_1

    if-nez p2, :cond_0

    iget-object v1, p0, Lactivity/v;->e:Landroid/view/LayoutInflater;

    const v2, 0x7f03000e

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lactivity/w;

    invoke-direct {v2}, Lactivity/w;-><init>()V

    const v1, 0x7f0b003c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lactivity/w;->a:Landroid/widget/ImageView;

    const v1, 0x7f0b003e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lactivity/w;->b:Landroid/widget/TextView;

    const v1, 0x7f0b003f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lactivity/w;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lactivity/z;->c()I

    move-result v1

    iput v1, v2, Lactivity/w;->f:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_0
    iget-object v2, v1, Lactivity/w;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lactivity/v;->g:[I

    invoke-virtual {v0}, Lactivity/z;->e()I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, v1, Lactivity/w;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lactivity/z;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lactivity/w;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lactivity/z;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lactivity/w;

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    iget-object v1, p0, Lactivity/v;->e:Landroid/view/LayoutInflater;

    const v2, 0x7f03002c

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lactivity/w;

    invoke-direct {v2}, Lactivity/w;-><init>()V

    const v1, 0x7f0b00be

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Lactivity/w;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f0b00c2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lactivity/w;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lactivity/z;->c()I

    move-result v1

    iput v1, v2, Lactivity/w;->f:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_2
    iget-object v1, v1, Lactivity/w;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lactivity/z;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lactivity/w;

    goto :goto_2
.end method

.method public final getViewTypeCount()I
    .locals 1

    sget v0, Lactivity/aa;->c:I

    return v0
.end method
