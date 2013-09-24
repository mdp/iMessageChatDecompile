.class public final Lcom/b/e;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/b/d;

.field private b:Lcom/b/f;

.field private c:Lcom/b/g;


# direct methods
.method public constructor <init>(Lcom/b/d;)V
    .locals 5

    iput-object p1, p0, Lcom/b/e;->a:Lcom/b/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Lcom/b/f;

    invoke-static {p1}, Lcom/b/d;->a(Lcom/b/d;)Lcom/b/i;

    move-result-object v1

    invoke-static {p1}, Lcom/b/d;->b(Lcom/b/d;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/b/f;-><init>(Lcom/b/i;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/b/e;->b:Lcom/b/f;

    new-instance v0, Lcom/b/g;

    invoke-static {p1}, Lcom/b/d;->a(Lcom/b/d;)Lcom/b/i;

    move-result-object v1

    invoke-static {p1}, Lcom/b/d;->c(Lcom/b/d;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p1}, Lcom/b/d;->d(Lcom/b/d;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-static {p1}, Lcom/b/d;->b(Lcom/b/d;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/g;-><init>(Lcom/b/i;Ljava/util/ArrayList;Ljava/util/concurrent/locks/ReentrantLock;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/b/e;->c:Lcom/b/g;

    iget-object v0, p0, Lcom/b/e;->b:Lcom/b/f;

    invoke-static {p1}, Lcom/b/d;->e(Lcom/b/d;)Lcom/b/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/f;->a(Lcom/b/q;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/b/f;
    .locals 1

    iget-object v0, p0, Lcom/b/e;->b:Lcom/b/f;

    return-object v0
.end method

.method public final b()Lcom/b/g;
    .locals 1

    iget-object v0, p0, Lcom/b/e;->c:Lcom/b/g;

    return-object v0
.end method

.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/b/e;->b:Lcom/b/f;

    invoke-virtual {v0}, Lcom/b/f;->start()V

    iget-object v0, p0, Lcom/b/e;->c:Lcom/b/g;

    invoke-virtual {v0}, Lcom/b/g;->start()V

    iget-object v0, p0, Lcom/b/e;->a:Lcom/b/d;

    invoke-static {v0}, Lcom/b/d;->f(Lcom/b/d;)V

    return-void
.end method
