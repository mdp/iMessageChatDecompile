.class public final Lactivity/m;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Ljava/util/List;

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lactivity/m;->a:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lactivity/m;->b:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lactivity/m;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lactivity/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lactivity/m;->a:Ljava/util/List;

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

    iget-object v0, p0, Lactivity/m;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/l;

    invoke-virtual {v0}, Lactivity/l;->e()I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lactivity/m;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/l;

    invoke-virtual {v0}, Lactivity/l;->d()Z

    move-result v4

    invoke-virtual {v0}, Lactivity/l;->e()I

    move-result v5

    if-nez p2, :cond_8

    new-instance v3, Lactivity/n;

    invoke-direct {v3}, Lactivity/n;-><init>()V

    if-ne v5, v9, :cond_2

    iget-object v1, p0, Lactivity/m;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f03000b

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f0b0039

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lactivity/n;->b:Landroid/widget/TextView;

    move-object v1, v2

    :goto_0
    iput v5, v3, Lactivity/n;->e:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v1

    move-object v1, v3

    :goto_1
    iget v2, v1, Lactivity/n;->e:I

    if-ne v2, v9, :cond_9

    invoke-virtual {v0}, Lactivity/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v2, v1, Lactivity/n;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_2
    iget v0, v1, Lactivity/n;->e:I

    packed-switch v0, :pswitch_data_0

    :goto_3
    return-object p2

    :cond_2
    const/4 v1, 0x1

    if-ne v5, v1, :cond_3

    iget-object v1, p0, Lactivity/m;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f030005

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f0b002d

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lactivity/n;->b:Landroid/widget/TextView;

    const v1, 0x7f0b002c

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lactivity/n;->c:Landroid/widget/ImageView;

    const v1, 0x7f0b002b

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lactivity/n;->d:Landroid/widget/ImageView;

    const v1, 0x7f0b002a

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v3, Lactivity/n;->a:Landroid/widget/LinearLayout;

    move-object v1, v2

    goto :goto_0

    :cond_3
    if-ne v5, v8, :cond_4

    iget-object v1, p0, Lactivity/m;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f030006

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f0b0032

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lactivity/n;->b:Landroid/widget/TextView;

    const v1, 0x7f0b0030

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lactivity/n;->c:Landroid/widget/ImageView;

    const v1, 0x7f0b002f

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lactivity/n;->d:Landroid/widget/ImageView;

    const v1, 0x7f0b002e

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v3, Lactivity/n;->a:Landroid/widget/LinearLayout;

    move-object v1, v2

    goto/16 :goto_0

    :cond_4
    if-nez v5, :cond_5

    iget-object v1, p0, Lactivity/m;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f030004

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f0b0029

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lactivity/n;->b:Landroid/widget/TextView;

    const v1, 0x7f0b0028

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lactivity/n;->c:Landroid/widget/ImageView;

    const v1, 0x7f0b0027

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lactivity/n;->d:Landroid/widget/ImageView;

    const v1, 0x7f0b0026

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v3, Lactivity/n;->a:Landroid/widget/LinearLayout;

    move-object v1, v2

    goto/16 :goto_0

    :cond_5
    if-eq v5, v10, :cond_6

    const/4 v1, 0x6

    if-eq v5, v1, :cond_6

    const/4 v1, 0x7

    if-eq v5, v1, :cond_6

    const/16 v1, 0x8

    if-eq v5, v1, :cond_6

    const/16 v1, 0x9

    if-ne v5, v1, :cond_7

    :cond_6
    iget-object v1, p0, Lactivity/m;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f030003

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f0b0025

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lactivity/n;->b:Landroid/widget/TextView;

    move-object v1, v2

    goto/16 :goto_0

    :cond_7
    :goto_4
    goto/32 :goto_4

    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lactivity/n;

    goto/16 :goto_1

    :cond_9
    if-eq v5, v10, :cond_1

    iget-object v2, v1, Lactivity/n;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lactivity/l;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lactivity/m;->c:Landroid/content/Context;

    invoke-static {v2, v0, v3}, Lcom/c/g;->b(Landroid/widget/TextView;Ljava/lang/String;Landroid/content/Context;)V

    if-eqz v4, :cond_a

    iget-object v0, v1, Lactivity/n;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lactivity/n;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lactivity/n;->a:Landroid/widget/LinearLayout;

    const v2, 0xc7d6eb0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_2

    :cond_a
    iget-object v0, v1, Lactivity/n;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lactivity/n;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lactivity/n;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, v1, Lactivity/n;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lactivity/m;->c:Landroid/content/Context;

    const v2, 0x7f070054

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :pswitch_1
    iget-object v0, v1, Lactivity/n;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lactivity/m;->c:Landroid/content/Context;

    const v2, 0x7f070055

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method
