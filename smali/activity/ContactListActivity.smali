.class public Lactivity/ContactListActivity;
.super Lactivity/MyActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:I

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/ListView;

.field private o:Lactivity/v;

.field private p:Ljava/util/List;

.field private q:Ljava/lang/String;

.field private r:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lactivity/MyActivity;-><init>()V

    const v0, 0x1234568

    iput v0, p0, Lactivity/ContactListActivity;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lactivity/ContactListActivity;->p:Ljava/util/List;

    new-instance v0, Lactivity/x;

    invoke-direct {v0, p0}, Lactivity/x;-><init>(Lactivity/ContactListActivity;)V

    iput-object v0, p0, Lactivity/ContactListActivity;->r:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lactivity/ContactListActivity;)V
    .locals 0

    invoke-direct {p0}, Lactivity/ContactListActivity;->b()V

    return-void
.end method

.method static synthetic a(Lactivity/ContactListActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lactivity/ContactListActivity;->q:Ljava/lang/String;

    return-void
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lactivity/ContactListActivity;->c:Lcom/a/a;

    invoke-virtual {v0}, Lcom/a/a;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lactivity/ContactListActivity;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Lactivity/z;

    invoke-direct {v1}, Lactivity/z;-><init>()V

    sget v2, Lactivity/aa;->a:I

    invoke-virtual {v1, v2}, Lactivity/z;->a(I)V

    iget-object v2, p0, Lactivity/ContactListActivity;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lactivity/z;->c(Ljava/lang/String;)V

    iget-object v2, p0, Lactivity/ContactListActivity;->p:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lactivity/ContactListActivity;->n:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lactivity/ContactListActivity;->n:Landroid/widget/ListView;

    iget-object v2, p0, Lactivity/ContactListActivity;->o:Lactivity/v;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lactivity/ContactListActivity;->n:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v0, p0, Lactivity/ContactListActivity;->n:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x100

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lactivity/ContactListActivity;->n:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v0, p0, Lactivity/ContactListActivity;->o:Lactivity/v;

    invoke-virtual {v0}, Lactivity/v;->notifyDataSetChanged()V

    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/z;

    invoke-virtual {v0}, Lactivity/z;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lactivity/ContactListActivity;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lactivity/z;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lactivity/ContactListActivity;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    sget v2, Lactivity/aa;->b:I

    invoke-virtual {v0, v2}, Lactivity/z;->a(I)V

    iget-object v2, p0, Lactivity/ContactListActivity;->p:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
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

.method public final b(B)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lactivity/ContactListActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b0043
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lactivity/MyActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lactivity/ContactListActivity;->requestWindowFeature(I)Z

    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lactivity/ContactListActivity;->setContentView(I)V

    const-string v0, ""

    iput-object v0, p0, Lactivity/ContactListActivity;->q:Ljava/lang/String;

    new-instance v0, Lactivity/v;

    iget-object v1, p0, Lactivity/ContactListActivity;->r:Landroid/os/Handler;

    iget-object v2, p0, Lactivity/ContactListActivity;->p:Ljava/util/List;

    invoke-direct {v0, v1, p0, v2}, Lactivity/v;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lactivity/ContactListActivity;->o:Lactivity/v;

    const v0, 0x7f0b0043

    invoke-virtual {p0, v0}, Lactivity/ContactListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/ContactListActivity;->m:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/ContactListActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0044

    invoke-virtual {p0, v0}, Lactivity/ContactListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lactivity/ContactListActivity;->n:Landroid/widget/ListView;

    iget-object v0, p0, Lactivity/ContactListActivity;->n:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setClickable(Z)V

    iget-object v0, p0, Lactivity/ContactListActivity;->n:Landroid/widget/ListView;

    new-instance v1, Lactivity/y;

    invoke-direct {v1, p0}, Lactivity/y;-><init>(Lactivity/ContactListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-direct {p0}, Lactivity/ContactListActivity;->b()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lactivity/MyActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lactivity/MyActivity;->onPause()V

    iget-object v0, p0, Lactivity/ContactListActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lactivity/MyActivity;->onResume()V

    iget-object v0, p0, Lactivity/ContactListActivity;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/a/a;->b(Landroid/content/Context;)V

    return-void
.end method
