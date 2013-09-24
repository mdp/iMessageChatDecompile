.class public final Lcom/b/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/net/Socket;

.field private b:Lcom/b/j;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/util/ArrayList;

.field private f:Lcom/b/q;

.field private g:Ljava/lang/String;

.field private h:Lcom/a/f;

.field private i:Ljava/util/ArrayList;

.field private j:Ljava/util/concurrent/locks/ReentrantLock;

.field private k:Landroid/content/Context;

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/i;->l:Z

    iput-object p2, p0, Lcom/b/i;->c:Ljava/lang/String;

    iput p3, p0, Lcom/b/i;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/i;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/b/i;->j:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p1, p0, Lcom/b/i;->k:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/i;->e:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/b/i;)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/b/i;->a:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic a(Lcom/b/i;Ljava/net/Socket;)V
    .locals 0

    iput-object p1, p0, Lcom/b/i;->a:Ljava/net/Socket;

    return-void
.end method

.method static synthetic b(Lcom/b/i;)Lcom/b/q;
    .locals 1

    iget-object v0, p0, Lcom/b/i;->f:Lcom/b/q;

    return-object v0
.end method

.method static synthetic c(Lcom/b/i;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/i;->l:Z

    return-void
.end method

.method static synthetic d(Lcom/b/i;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/b/i;->k:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/b/i;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/b/i;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lcom/b/i;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    iget-object v0, p0, Lcom/b/i;->j:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic g(Lcom/b/i;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/b/i;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/b/i;)Lcom/a/f;
    .locals 1

    iget-object v0, p0, Lcom/b/i;->h:Lcom/a/f;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/b/q;)V
    .locals 0

    iput-object p1, p0, Lcom/b/i;->f:Lcom/b/q;

    return-void
.end method

.method public final a(Lcom/c/j;)V
    .locals 1

    iget-object v0, p0, Lcom/b/i;->b:Lcom/b/j;

    invoke-virtual {v0}, Lcom/b/j;->b()Lcom/b/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/l;->a(Lcom/c/j;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/b/i;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/b/i;->h:Lcom/a/f;

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/b/i;->l:Z

    return v0
.end method

.method public final b(Lcom/c/j;)V
    .locals 3

    iget-object v0, p0, Lcom/b/i;->b:Lcom/b/j;

    invoke-virtual {v0}, Lcom/b/j;->a()Lcom/b/k;

    move-result-object v0

    iget-object v1, p0, Lcom/b/i;->b:Lcom/b/j;

    invoke-virtual {v1}, Lcom/b/j;->b()Lcom/b/l;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/b/k;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/b/l;->c()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_0
    iget-boolean v2, p0, Lcom/b/i;->l:Z

    if-nez v2, :cond_3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/b/k;->b()V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/b/l;->b()V

    :cond_2
    iget-object v0, p0, Lcom/b/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "client"

    const-string v1, "down"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/b/i;->b()Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/b/i;->b:Lcom/b/j;

    invoke-virtual {v0}, Lcom/b/j;->b()Lcom/b/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/l;->b(Lcom/c/j;)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/b/i;->l:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/b/i;->l:Z

    new-instance v0, Lcom/b/j;

    invoke-direct {v0, p0}, Lcom/b/j;-><init>(Lcom/b/i;)V

    iput-object v0, p0, Lcom/b/i;->b:Lcom/b/j;

    iget-object v0, p0, Lcom/b/i;->b:Lcom/b/j;

    invoke-virtual {v0}, Lcom/b/j;->start()V

    :cond_0
    return v1
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/b/i;->b:Lcom/b/j;

    invoke-virtual {v0}, Lcom/b/j;->b()Lcom/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/l;->a()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/b/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/i;->l:Z

    iget-object v0, p0, Lcom/b/i;->b:Lcom/b/j;

    invoke-virtual {v0}, Lcom/b/j;->b()Lcom/b/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/i;->b:Lcom/b/j;

    invoke-virtual {v0}, Lcom/b/j;->b()Lcom/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/l;->b()V

    :cond_0
    iget-object v0, p0, Lcom/b/i;->b:Lcom/b/j;

    invoke-virtual {v0}, Lcom/b/j;->a()Lcom/b/k;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/i;->b:Lcom/b/j;

    invoke-virtual {v0}, Lcom/b/j;->a()Lcom/b/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/k;->b()V

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/b/i;->a:Ljava/net/Socket;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/b/i;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/i;->a:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
