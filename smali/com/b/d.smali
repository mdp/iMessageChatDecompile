.class public final Lcom/b/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/b/e;

.field private b:Lcom/b/i;

.field private c:Lcom/b/q;

.field private d:Z

.field private e:Ljava/util/ArrayList;

.field private f:Ljava/util/concurrent/locks/ReentrantLock;

.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/b/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/d;->d:Z

    iput-object p2, p0, Lcom/b/d;->b:Lcom/b/i;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/d;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/b/d;->f:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p1, p0, Lcom/b/d;->g:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/b/d;)Lcom/b/i;
    .locals 1

    iget-object v0, p0, Lcom/b/d;->b:Lcom/b/i;

    return-object v0
.end method

.method static synthetic b(Lcom/b/d;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/b/d;->g:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/b/d;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/b/d;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/b/d;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    iget-object v0, p0, Lcom/b/d;->f:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic e(Lcom/b/d;)Lcom/b/q;
    .locals 1

    iget-object v0, p0, Lcom/b/d;->c:Lcom/b/q;

    return-object v0
.end method

.method static synthetic f(Lcom/b/d;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/d;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/q;)V
    .locals 0

    iput-object p1, p0, Lcom/b/d;->c:Lcom/b/q;

    return-void
.end method

.method public final a(Lcom/c/j;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/b/d;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/d;->a:Lcom/b/e;

    invoke-virtual {v0}, Lcom/b/e;->a()Lcom/b/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/f;->a(Lcom/c/j;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/c/j;

    invoke-direct {v0}, Lcom/c/j;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v4, v1, v2

    aput-byte v5, v1, v5

    const/4 v2, 0x5

    aput-byte v4, v1, v2

    const/4 v2, 0x6

    aput-byte v3, v1, v2

    const/4 v2, 0x7

    aput-byte v3, v1, v2

    const/16 v2, 0x8

    aput-byte v3, v1, v2

    new-instance v2, Lcom/c/b;

    array-length v3, v1

    invoke-direct {v2, v1, v3}, Lcom/c/b;-><init>([BI)V

    invoke-virtual {v0, v2}, Lcom/c/j;->a(Lcom/c/b;)V

    invoke-virtual {v0}, Lcom/c/j;->k()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.way.message"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "message"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/b/d;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    new-instance v0, Lcom/b/e;

    invoke-direct {v0, p0}, Lcom/b/e;-><init>(Lcom/b/d;)V

    iput-object v0, p0, Lcom/b/d;->a:Lcom/b/e;

    iget-object v0, p0, Lcom/b/d;->a:Lcom/b/e;

    invoke-virtual {v0}, Lcom/b/e;->start()V

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Ld/l;
    .locals 1

    iget-object v0, p0, Lcom/b/d;->a:Lcom/b/e;

    invoke-virtual {v0}, Lcom/b/e;->b()Lcom/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/g;->b()Ld/l;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/c/j;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/b/d;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/d;->a:Lcom/b/e;

    invoke-virtual {v0}, Lcom/b/e;->b()Lcom/b/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/g;->a(Lcom/c/j;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/c/j;

    invoke-direct {v0}, Lcom/c/j;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v4, v1, v2

    aput-byte v5, v1, v5

    const/4 v2, 0x5

    aput-byte v4, v1, v2

    const/4 v2, 0x6

    aput-byte v3, v1, v2

    const/4 v2, 0x7

    aput-byte v3, v1, v2

    const/16 v2, 0x8

    aput-byte v3, v1, v2

    new-instance v2, Lcom/c/b;

    array-length v3, v1

    invoke-direct {v2, v1, v3}, Lcom/c/b;-><init>([BI)V

    invoke-virtual {v0, v2}, Lcom/c/j;->a(Lcom/c/b;)V

    invoke-virtual {v0}, Lcom/c/j;->k()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.way.message"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "message"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/b/d;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final c()Ld/h;
    .locals 1

    iget-object v0, p0, Lcom/b/d;->a:Lcom/b/e;

    invoke-virtual {v0}, Lcom/b/e;->a()Lcom/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/f;->a()Ld/h;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/b/d;->a:Lcom/b/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/d;->a:Lcom/b/e;

    invoke-virtual {v0}, Lcom/b/e;->a()Lcom/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/f;->b()V

    iget-object v0, p0, Lcom/b/d;->a:Lcom/b/e;

    invoke-virtual {v0}, Lcom/b/e;->b()Lcom/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/g;->a()V

    :cond_0
    iget-object v0, p0, Lcom/b/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/d;->d:Z

    return-void
.end method
