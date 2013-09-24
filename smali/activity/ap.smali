.class final Lactivity/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lactivity/FriendListActivity;


# direct methods
.method constructor <init>(Lactivity/FriendListActivity;)V
    .locals 0

    iput-object p1, p0, Lactivity/ap;->a:Lactivity/FriendListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5

    if-eqz p3, :cond_0

    const-string v0, "ContactListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "contact Long Down"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/z;

    new-instance v1, Lcom/c/l;

    invoke-direct {v1}, Lcom/c/l;-><init>()V

    invoke-virtual {v0}, Lactivity/z;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/c/l;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lactivity/ap;->a:Lactivity/FriendListActivity;

    iget-object v2, p0, Lactivity/ap;->a:Lactivity/FriendListActivity;

    iget-object v3, p0, Lactivity/ap;->a:Lactivity/FriendListActivity;

    iget-object v3, v3, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    const v4, 0x7f07005f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lactivity/z;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lactivity/FriendListActivity;->a(Lactivity/FriendListActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
