.class public final Lactivity/cu;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;

.field private c:Lactivity/MyApplication;

.field private d:Landroid/view/LayoutInflater;

.field private e:Landroid/os/Handler;

.field private f:Lcom/d/a;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lactivity/cu;->a:Landroid/content/Context;

    iput-object p1, p0, Lactivity/cu;->e:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lactivity/MyApplication;

    iput-object v0, p0, Lactivity/cu;->c:Lactivity/MyApplication;

    new-instance v0, Lcom/d/a;

    const-string v1, "saveUser"

    invoke-direct {v0, p2, v1}, Lcom/d/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lactivity/cu;->f:Lcom/d/a;

    iput-object p3, p0, Lactivity/cu;->b:Ljava/util/List;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lactivity/cu;->d:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Lactivity/cu;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lactivity/cu;->e:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lactivity/cu;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lactivity/cu;->b:Ljava/util/List;

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

    iget-object v0, p0, Lactivity/cu;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/cx;

    invoke-virtual {v0}, Lactivity/cx;->b()I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    const v5, 0x7f0b00c6

    const v4, 0x7f0b00c5

    iget-object v0, p0, Lactivity/cu;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/cx;

    new-instance v3, Lactivity/cv;

    invoke-direct {v3, p0, p1}, Lactivity/cv;-><init>(Lactivity/cu;I)V

    invoke-virtual {v0}, Lactivity/cx;->b()I

    move-result v1

    sget v2, Lactivity/cy;->b:I

    if-ne v1, v2, :cond_2

    if-nez p2, :cond_1

    iget-object v1, p0, Lactivity/cu;->d:Landroid/view/LayoutInflater;

    const v2, 0x7f03002e

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lactivity/cw;

    invoke-direct {v2}, Lactivity/cw;-><init>()V

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lactivity/cw;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lactivity/cx;->b()I

    move-result v1

    iput v1, v2, Lactivity/cw;->c:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v2, Lactivity/cw;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_0
    iget-object v2, v1, Lactivity/cw;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lactivity/cx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lactivity/cw;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_1
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lactivity/cw;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lactivity/cx;->b()I

    move-result v1

    sget v2, Lactivity/cy;->c:I

    if-ne v1, v2, :cond_4

    if-nez p2, :cond_3

    iget-object v1, p0, Lactivity/cu;->d:Landroid/view/LayoutInflater;

    const v2, 0x7f030030

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lactivity/cw;

    invoke-direct {v2}, Lactivity/cw;-><init>()V

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lactivity/cw;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v2, Lactivity/cw;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Lactivity/cx;->b()I

    move-result v1

    iput v1, v2, Lactivity/cw;->c:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_2
    iget-object v2, v1, Lactivity/cw;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lactivity/cx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lactivity/cw;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lactivity/cw;

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lactivity/cx;->b()I

    move-result v1

    sget v2, Lactivity/cy;->d:I

    if-ne v1, v2, :cond_0

    if-nez p2, :cond_5

    iget-object v1, p0, Lactivity/cu;->d:Landroid/view/LayoutInflater;

    const v2, 0x7f03002f

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lactivity/cw;

    invoke-direct {v2}, Lactivity/cw;-><init>()V

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lactivity/cw;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lactivity/cx;->b()I

    move-result v1

    iput v1, v2, Lactivity/cw;->c:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v2, Lactivity/cw;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_3
    iget-object v2, v1, Lactivity/cw;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lactivity/cx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lactivity/cw;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lactivity/cw;

    goto :goto_3
.end method

.method public final getViewTypeCount()I
    .locals 1

    sget v0, Lactivity/cy;->e:I

    return v0
.end method
