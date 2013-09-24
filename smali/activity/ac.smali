.class public abstract Lactivity/ac;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/support/v4/view/ViewPager;

.field private c:[I

.field private d:Ljava/util/ArrayList;

.field private e:[Landroid/widget/ImageView;

.field private f:[Landroid/widget/ImageView;

.field private g:[Landroid/widget/LinearLayout;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;[ILjava/util/ArrayList;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput v3, p0, Lactivity/ac;->i:I

    iput-object p1, p0, Lactivity/ac;->a:Landroid/content/Context;

    iput-object p2, p0, Lactivity/ac;->c:[I

    iput-object p3, p0, Lactivity/ac;->d:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030014

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-object v0, p0, Lactivity/ac;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-direct {p0, v0}, Lactivity/ac;->a([I)Lactivity/FacePagerAdapter;

    move-result-object v1

    const v0, 0x7f0b004e

    invoke-virtual {p0, v0}, Lactivity/ac;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lactivity/ac;->b:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lactivity/ac;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lactivity/ac;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lactivity/ac;->b:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lactivity/ad;

    invoke-direct {v1, p0}, Lactivity/ad;-><init>(Lactivity/ac;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lactivity/ac;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, v0, 0x1

    iget-object v0, p0, Lactivity/ac;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v0, v0

    rem-int/lit8 v0, v0, 0x18

    if-nez v0, :cond_0

    iget-object v0, p0, Lactivity/ac;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v0, v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v1, -0x1

    :goto_0
    invoke-direct {p0, v0}, Lactivity/ac;->a(I)V

    invoke-direct {p0}, Lactivity/ac;->b()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private a([I)Lactivity/FacePagerAdapter;
    .locals 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lactivity/ac;->b([I)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    new-instance v0, Lactivity/FacePagerAdapter;

    invoke-direct {v0, v2}, Lactivity/FacePagerAdapter;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_0
    new-instance v4, Lactivity/ab;

    iget-object v5, p0, Lactivity/ac;->a:Landroid/content/Context;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {v4, v5, v0}, Lactivity/ab;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    new-instance v0, Lactivity/ae;

    invoke-direct {v0, p0}, Lactivity/ae;-><init>(Lactivity/ac;)V

    invoke-virtual {v4, v0}, Lactivity/ab;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private a(I)V
    .locals 7

    const/4 v6, -0x2

    const/4 v2, 0x0

    const v0, 0x7f0b004d

    invoke-virtual {p0, v0}, Lactivity/ac;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-array v1, p1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lactivity/ac;->e:[Landroid/widget/ImageView;

    move v1, v2

    :goto_0
    if-lt v1, p1, :cond_0

    iput v2, p0, Lactivity/ac;->h:I

    iget-object v0, p0, Lactivity/ac;->e:[Landroid/widget/ImageView;

    iget v1, p0, Lactivity/ac;->h:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void

    :cond_0
    iget-object v3, p0, Lactivity/ac;->e:[Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lactivity/ac;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v1

    iget-object v3, p0, Lactivity/ac;->e:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    invoke-virtual {p0}, Lactivity/ac;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020025

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lactivity/ac;->e:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v3, p0, Lactivity/ac;->e:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lactivity/ac;->e:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v3, p0, Lactivity/ac;->e:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private a(Lactivity/FacePagerAdapter;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lactivity/ac;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lactivity/ac;->b:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    invoke-virtual {p1}, Lactivity/FacePagerAdapter;->getCount()I

    move-result v0

    invoke-direct {p0, v0}, Lactivity/ac;->a(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lactivity/ac;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->removeAllViews()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lactivity/ac;->a(I)V

    goto :goto_0
.end method

.method static synthetic a(Lactivity/ac;I)V
    .locals 1

    iget-object v0, p0, Lactivity/ac;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lactivity/ac;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-direct {p0, v0}, Lactivity/ac;->a([I)Lactivity/FacePagerAdapter;

    move-result-object v0

    invoke-direct {p0, v0}, Lactivity/ac;->a(Lactivity/FacePagerAdapter;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lactivity/ac;->a(Lactivity/FacePagerAdapter;)V

    goto :goto_0
.end method

.method static synthetic a(Lactivity/ac;)[Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lactivity/ac;->f:[Landroid/widget/ImageView;

    return-object v0
.end method

.method private static b([I)Ljava/util/ArrayList;
    .locals 9

    const/4 v1, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, p0

    move v0, v1

    :goto_0
    if-lt v0, v5, :cond_0

    return-object v4

    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v2, v0

    move v0, v1

    :goto_1
    if-ge v2, v5, :cond_1

    const/16 v3, 0x18

    if-lt v0, v3, :cond_2

    :cond_1
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_0

    :cond_2
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, "imageview"

    add-int/lit8 v3, v2, 0x1

    aget v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "text"

    const-string v8, "Banana"

    invoke-interface {v7, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_1
.end method

.method private b()V
    .locals 10

    const/4 v9, 0x5

    const/4 v8, -0x2

    const/4 v2, 0x0

    const v0, 0x7f0b004f

    invoke-virtual {p0, v0}, Lactivity/ac;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, p0, Lactivity/ac;->c:[I

    array-length v3, v1

    add-int/lit8 v1, v3, 0x1

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lactivity/ac;->f:[Landroid/widget/ImageView;

    add-int/lit8 v1, v3, 0x1

    new-array v1, v1, [Landroid/widget/LinearLayout;

    iput-object v1, p0, Lactivity/ac;->g:[Landroid/widget/LinearLayout;

    move v1, v2

    :goto_0
    add-int/lit8 v4, v3, 0x1

    if-lt v1, v4, :cond_0

    iget-object v0, p0, Lactivity/ac;->f:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lactivity/ac;->g:[Landroid/widget/LinearLayout;

    aget-object v0, v0, v2

    const v1, 0x7f0203a2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iput v2, p0, Lactivity/ac;->i:I

    return-void

    :cond_0
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lactivity/ac;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0203a1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v5, p0, Lactivity/ac;->g:[Landroid/widget/LinearLayout;

    aput-object v4, v5, v1

    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lactivity/ac;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    if-ne v1, v3, :cond_1

    const v6, 0x7f0203a4

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lactivity/ac;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020388

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/c/h;->h()F

    move-result v6

    float-to-int v6, v6

    invoke-static {}, Lcom/c/h;->h()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v6, v9, v7, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    const/16 v6, 0x11

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v6, Lactivity/af;

    invoke-direct {v6, p0, v1}, Lactivity/af;-><init>(Lactivity/ac;I)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lactivity/ac;->f:[Landroid/widget/ImageView;

    aput-object v5, v6, v1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lactivity/ac;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lactivity/ac;->c:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method static synthetic b(Lactivity/ac;I)V
    .locals 0

    iput p1, p0, Lactivity/ac;->i:I

    return-void
.end method

.method static synthetic b(Lactivity/ac;)[Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lactivity/ac;->g:[Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic c(Lactivity/ac;)I
    .locals 1

    iget v0, p0, Lactivity/ac;->i:I

    return v0
.end method

.method static synthetic c(Lactivity/ac;I)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lactivity/ac;->h:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lactivity/ac;->e:[Landroid/widget/ImageView;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lactivity/ac;->e:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lactivity/ac;->e:[Landroid/widget/ImageView;

    iget v1, p0, Lactivity/ac;->h:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iput p1, p0, Lactivity/ac;->h:I

    goto :goto_0
.end method

.method static synthetic d(Lactivity/ac;)I
    .locals 1

    iget v0, p0, Lactivity/ac;->h:I

    return v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(II)V
.end method
