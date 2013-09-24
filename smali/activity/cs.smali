.class final Lactivity/cs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lactivity/cp;


# direct methods
.method constructor <init>(Lactivity/cp;)V
    .locals 0

    iput-object p1, p0, Lactivity/cs;->a:Lactivity/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    const/high16 v4, 0x1000

    const-string v0, "SearchModule"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Down Search"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lactivity/cs;->a:Lactivity/cp;

    invoke-static {v2}, Lactivity/cp;->b(Lactivity/cp;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lactivity/cs;->a:Lactivity/cp;

    invoke-static {v0}, Lactivity/cp;->b(Lactivity/cp;)Z

    move-result v0

    if-nez v0, :cond_0

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

    iget-object v2, p0, Lactivity/cs;->a:Lactivity/cp;

    invoke-static {v2}, Lactivity/cp;->c(Lactivity/cp;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lactivity/AddToContactActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "user"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lactivity/cs;->a:Lactivity/cp;

    invoke-static {v1}, Lactivity/cp;->c(Lactivity/cp;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    iget-object v0, p0, Lactivity/cs;->a:Lactivity/cp;

    invoke-static {v0}, Lactivity/cp;->e(Lactivity/cp;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    return-void

    :cond_0
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/ch;

    iget-object v1, p0, Lactivity/cs;->a:Lactivity/cp;

    iget-object v1, v1, Lactivity/cp;->a:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/ch;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Lactivity/MyApplication;->b(I)V

    new-instance v1, Lcom/c/l;

    invoke-direct {v1}, Lcom/c/l;-><init>()V

    invoke-virtual {v0}, Lactivity/ch;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/c/l;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lactivity/ch;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/c/l;->a(I)V

    invoke-virtual {v0}, Lactivity/ch;->f()V

    iget-object v2, p0, Lactivity/cs;->a:Lactivity/cp;

    invoke-static {v2}, Lactivity/cp;->d(Lactivity/cp;)Lcom/d/a;

    move-result-object v2

    invoke-virtual {v0}, Lactivity/ch;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/d/a;->d(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lactivity/cs;->a:Lactivity/cp;

    invoke-static {v2}, Lactivity/cp;->c(Lactivity/cp;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lactivity/ChatActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "user"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lactivity/cs;->a:Lactivity/cp;

    invoke-static {v1}, Lactivity/cp;->c(Lactivity/cp;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
