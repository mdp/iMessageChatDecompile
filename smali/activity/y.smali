.class final Lactivity/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lactivity/ContactListActivity;


# direct methods
.method constructor <init>(Lactivity/ContactListActivity;)V
    .locals 0

    iput-object p1, p0, Lactivity/y;->a:Lactivity/ContactListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    if-eqz p3, :cond_0

    const-string v0, "ContactListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "contact Down"

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

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/c/l;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "user"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lactivity/y;->a:Lactivity/ContactListActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lactivity/ContactListActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lactivity/y;->a:Lactivity/ContactListActivity;

    invoke-virtual {v0}, Lactivity/ContactListActivity;->finish()V

    :cond_0
    return-void
.end method
