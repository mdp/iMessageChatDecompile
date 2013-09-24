.class public final Lactivity/ab;
.super Landroid/widget/GridView;


# instance fields
.field private a:Ljava/util/List;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lactivity/ab;->b:Landroid/content/Context;

    iput-object p2, p0, Lactivity/ab;->a:Ljava/util/List;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lactivity/ab;->setNumColumns(I)V

    invoke-virtual {p0, v6}, Lactivity/ab;->setBackgroundColor(I)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lactivity/ab;->setHorizontalSpacing(I)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lactivity/ab;->setVerticalSpacing(I)V

    invoke-virtual {p0, v7}, Lactivity/ab;->setStretchMode(I)V

    const/4 v0, 0x5

    invoke-virtual {p0, v6, v0, v6, v6}, Lactivity/ab;->setPadding(IIII)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lactivity/ab;->setSelector(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lactivity/ab;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lactivity/ab;->setGravity(I)V

    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lactivity/ab;->b:Landroid/content/Context;

    iget-object v2, p0, Lactivity/ab;->a:Ljava/util/List;

    const v3, 0x7f030013

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "imageview"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    const-string v6, "text"

    aput-object v6, v4, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-virtual {p0, v0}, Lactivity/ab;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :array_0
    .array-data 0x4
        0x4at 0x0t 0xbt 0x7ft
        0x4bt 0x0t 0xbt 0x7ft
    .end array-data
.end method
