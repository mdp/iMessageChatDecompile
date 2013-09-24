.class final Lactivity/cd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lactivity/cc;

.field private final synthetic b:Lactivity/cg;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lactivity/cc;Lactivity/cg;I)V
    .locals 0

    iput-object p1, p0, Lactivity/cd;->a:Lactivity/cc;

    iput-object p2, p0, Lactivity/cd;->b:Lactivity/cg;

    iput p3, p0, Lactivity/cd;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b009c

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lactivity/cd;->a:Lactivity/cc;

    iget-object v1, p0, Lactivity/cd;->a:Lactivity/cc;

    invoke-static {v1}, Lactivity/cc;->b(Lactivity/cc;)Lactivity/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lactivity/MyApplication;->j()Lcom/a/d;

    move-result-object v1

    invoke-static {v0, v1}, Lactivity/cc;->a(Lactivity/cc;Lcom/a/d;)V

    iget-object v0, p0, Lactivity/cd;->a:Lactivity/cc;

    iget-object v1, p0, Lactivity/cd;->a:Lactivity/cc;

    invoke-static {v1}, Lactivity/cc;->b(Lactivity/cc;)Lactivity/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lactivity/MyApplication;->i()Lcom/a/g;

    move-result-object v1

    invoke-static {v0, v1}, Lactivity/cc;->a(Lactivity/cc;Lcom/a/g;)V

    iget-object v0, p0, Lactivity/cd;->a:Lactivity/cc;

    iget-object v1, p0, Lactivity/cd;->a:Lactivity/cc;

    invoke-static {v1}, Lactivity/cc;->b(Lactivity/cc;)Lactivity/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lactivity/MyApplication;->h()Lcom/c/l;

    move-result-object v1

    invoke-static {v0, v1}, Lactivity/cc;->a(Lactivity/cc;Lcom/c/l;)V

    iget-object v0, p0, Lactivity/cd;->a:Lactivity/cc;

    invoke-static {v0}, Lactivity/cc;->c(Lactivity/cc;)Lcom/a/d;

    move-result-object v0

    iget-object v1, p0, Lactivity/cd;->a:Lactivity/cc;

    invoke-static {v1}, Lactivity/cc;->d(Lactivity/cc;)Lcom/c/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/c/l;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lactivity/cd;->b:Lactivity/cg;

    invoke-virtual {v2}, Lactivity/cg;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lactivity/cd;->a:Lactivity/cc;

    invoke-static {v0}, Lactivity/cc;->e(Lactivity/cc;)Lcom/a/g;

    move-result-object v0

    iget-object v1, p0, Lactivity/cd;->b:Lactivity/cg;

    invoke-virtual {v1}, Lactivity/cg;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/g;->a(Ljava/lang/String;)V

    new-instance v0, Lactivity/cg;

    invoke-direct {v0}, Lactivity/cg;-><init>()V

    iget-object v1, p0, Lactivity/cd;->b:Lactivity/cg;

    invoke-virtual {v1}, Lactivity/cg;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lactivity/cg;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lactivity/cd;->a:Lactivity/cc;

    invoke-static {v0}, Lactivity/cc;->a(Lactivity/cc;)Ljava/util/LinkedList;

    move-result-object v0

    iget v1, p0, Lactivity/cd;->c:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lactivity/cd;->a:Lactivity/cc;

    invoke-static {v0, v3}, Lactivity/cc;->a(Lactivity/cc;I)V

    :goto_0
    iget-object v0, p0, Lactivity/cd;->a:Lactivity/cc;

    invoke-virtual {v0}, Lactivity/cc;->notifyDataSetChanged()V

    :cond_0
    return-void

    :cond_1
    const v1, 0x7f0b0095

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lactivity/cd;->a:Lactivity/cc;

    invoke-static {v0}, Lactivity/cc;->f(Lactivity/cc;)I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lactivity/cd;->a:Lactivity/cc;

    invoke-static {v0}, Lactivity/cc;->a(Lactivity/cc;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lactivity/cd;->a:Lactivity/cc;

    invoke-static {v1}, Lactivity/cc;->f(Lactivity/cc;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/cg;

    invoke-virtual {v0}, Lactivity/cg;->h()V

    iget-object v0, p0, Lactivity/cd;->a:Lactivity/cc;

    invoke-static {v0, v3}, Lactivity/cc;->a(Lactivity/cc;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lactivity/cd;->a:Lactivity/cc;

    iget v1, p0, Lactivity/cd;->c:I

    invoke-static {v0, v1}, Lactivity/cc;->a(Lactivity/cc;I)V

    iget-object v0, p0, Lactivity/cd;->b:Lactivity/cg;

    invoke-virtual {v0}, Lactivity/cg;->h()V

    goto :goto_0
.end method
