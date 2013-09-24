.class final Lactivity/by;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lactivity/bx;

.field private final synthetic b:Lactivity/ch;


# direct methods
.method constructor <init>(Lactivity/bx;Lactivity/ch;)V
    .locals 0

    iput-object p1, p0, Lactivity/by;->a:Lactivity/bx;

    iput-object p2, p0, Lactivity/by;->b:Lactivity/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lactivity/by;->a:Lactivity/bx;

    invoke-static {v0}, Lactivity/bx;->a(Lactivity/bx;)Lactivity/MyApplication;

    move-result-object v0

    iget-object v1, p0, Lactivity/by;->b:Lactivity/ch;

    invoke-virtual {v1}, Lactivity/ch;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lactivity/MyApplication;->b(I)V

    new-instance v0, Lcom/c/l;

    invoke-direct {v0}, Lcom/c/l;-><init>()V

    iget-object v1, p0, Lactivity/by;->b:Lactivity/ch;

    invoke-virtual {v1}, Lactivity/ch;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/l;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lactivity/by;->b:Lactivity/ch;

    invoke-virtual {v1}, Lactivity/ch;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/c/l;->a(I)V

    iget-object v1, p0, Lactivity/by;->b:Lactivity/ch;

    invoke-virtual {v1}, Lactivity/ch;->f()V

    iget-object v1, p0, Lactivity/by;->a:Lactivity/bx;

    invoke-static {v1}, Lactivity/bx;->b(Lactivity/bx;)Lcom/d/a;

    move-result-object v1

    iget-object v2, p0, Lactivity/by;->b:Lactivity/ch;

    invoke-virtual {v2}, Lactivity/ch;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/d/a;->d(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lactivity/by;->a:Lactivity/bx;

    invoke-static {v2}, Lactivity/bx;->c(Lactivity/bx;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lactivity/ChatActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "user"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lactivity/by;->a:Lactivity/bx;

    invoke-static {v0}, Lactivity/bx;->c(Lactivity/bx;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
