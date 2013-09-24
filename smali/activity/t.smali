.class final Lactivity/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lactivity/p;

.field private final synthetic b:Lactivity/o;


# direct methods
.method constructor <init>(Lactivity/p;Lactivity/o;)V
    .locals 0

    iput-object p1, p0, Lactivity/t;->a:Lactivity/p;

    iput-object p2, p0, Lactivity/t;->b:Lactivity/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0049

    if-ne v0, v1, :cond_0

    const-string v0, "ChatMsgViewAdapter"

    const-string v1, "AddToContact Down"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/c/l;

    invoke-direct {v0}, Lcom/c/l;-><init>()V

    iget-object v1, p0, Lactivity/t;->b:Lactivity/o;

    invoke-virtual {v1}, Lactivity/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/l;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lactivity/t;->b:Lactivity/o;

    invoke-virtual {v1}, Lactivity/o;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/c/l;->a(I)V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lactivity/t;->a:Lactivity/p;

    invoke-static {v2}, Lactivity/p;->b(Lactivity/p;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lactivity/AddToContactActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "user"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lactivity/t;->a:Lactivity/p;

    invoke-static {v0}, Lactivity/p;->b(Lactivity/p;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
