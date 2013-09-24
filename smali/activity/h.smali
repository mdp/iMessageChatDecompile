.class final Lactivity/h;
.super Landroid/support/v4/view/PagerAdapter;


# instance fields
.field final synthetic a:Lactivity/ChatActivity;


# direct methods
.method constructor <init>(Lactivity/ChatActivity;)V
    .locals 0

    iput-object p1, p0, Lactivity/h;->a:Lactivity/ChatActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lactivity/h;->a:Lactivity/ChatActivity;

    invoke-static {v0}, Lactivity/ChatActivity;->f(Lactivity/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lactivity/h;->a:Lactivity/ChatActivity;

    invoke-static {v0}, Lactivity/ChatActivity;->f(Lactivity/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lactivity/h;->a:Lactivity/ChatActivity;

    invoke-static {v0}, Lactivity/ChatActivity;->f(Lactivity/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lactivity/h;->a:Lactivity/ChatActivity;

    invoke-static {v0}, Lactivity/ChatActivity;->f(Lactivity/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
