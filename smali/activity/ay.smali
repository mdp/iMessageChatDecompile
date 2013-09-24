.class public final Lactivity/ay;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/support/v4/view/ViewPager;

.field private b:Ljava/util/List;

.field private c:[Landroid/widget/ImageView;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v7, -0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput v6, p0, Lactivity/ay;->d:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001b

    invoke-virtual {v0, v1, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0b0056

    invoke-virtual {p0, v0}, Lactivity/ay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lactivity/ay;->a:Landroid/support/v4/view/ViewPager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lactivity/ay;->b:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001c

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f03001d

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v3, 0x7f03001e

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lactivity/ay;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lactivity/ay;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lactivity/ay;->a:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lactivity/MyPagerAdapter;

    iget-object v3, p0, Lactivity/ay;->b:Ljava/util/List;

    invoke-direct {v1, v3}, Lactivity/MyPagerAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lactivity/ay;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lactivity/ay;->a:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lactivity/az;

    invoke-direct {v1, p0}, Lactivity/az;-><init>(Lactivity/ay;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const v0, 0x7f0b004d

    invoke-virtual {p0, v0}, Lactivity/ay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, p0, Lactivity/ay;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lactivity/ay;->d:I

    iget v1, p0, Lactivity/ay;->d:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lactivity/ay;->c:[Landroid/widget/ImageView;

    move v1, v2

    :goto_0
    iget v3, p0, Lactivity/ay;->d:I

    if-lt v1, v3, :cond_0

    iput v2, p0, Lactivity/ay;->e:I

    iget-object v0, p0, Lactivity/ay;->c:[Landroid/widget/ImageView;

    iget v1, p0, Lactivity/ay;->e:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void

    :cond_0
    iget-object v3, p0, Lactivity/ay;->c:[Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v1

    iget-object v3, p0, Lactivity/ay;->c:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    invoke-virtual {p0}, Lactivity/ay;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020025

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lactivity/ay;->c:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v3, p0, Lactivity/ay;->c:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lactivity/ay;->c:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v3, p0, Lactivity/ay;->c:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lactivity/ay;I)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lactivity/ay;->e:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lactivity/ay;->c:[Landroid/widget/ImageView;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lactivity/ay;->c:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lactivity/ay;->c:[Landroid/widget/ImageView;

    iget v1, p0, Lactivity/ay;->e:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iput p1, p0, Lactivity/ay;->e:I

    goto :goto_0
.end method
