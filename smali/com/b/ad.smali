.class public final Lcom/b/ad;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljavax/net/ssl/SSLSocket;

.field private b:Lcom/b/ae;

.field private c:Ljava/util/ArrayList;

.field private d:Lcom/b/q;

.field private e:Lcom/b/q;

.field private f:Ljava/util/ArrayList;

.field private g:Ljava/util/concurrent/locks/ReentrantLock;

.field private h:Landroid/content/Context;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/ad;->i:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/ad;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/b/ad;->g:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p1, p0, Lcom/b/ad;->h:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/ad;->c:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/b/ad;)Ljavax/net/ssl/SSLSocket;
    .locals 1

    iget-object v0, p0, Lcom/b/ad;->a:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method static synthetic a(Lcom/b/ad;Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    iput-object p1, p0, Lcom/b/ad;->a:Ljavax/net/ssl/SSLSocket;

    return-void
.end method

.method static synthetic b(Lcom/b/ad;)Lcom/b/q;
    .locals 1

    iget-object v0, p0, Lcom/b/ad;->d:Lcom/b/q;

    return-object v0
.end method

.method static synthetic c(Lcom/b/ad;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/b/ad;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/b/ad;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/b/ad;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/b/ad;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    iget-object v0, p0, Lcom/b/ad;->g:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic f(Lcom/b/ad;)Lcom/b/q;
    .locals 1

    iget-object v0, p0, Lcom/b/ad;->e:Lcom/b/q;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/b/q;Lcom/b/q;)V
    .locals 0

    iput-object p1, p0, Lcom/b/ad;->d:Lcom/b/q;

    iput-object p2, p0, Lcom/b/ad;->e:Lcom/b/q;

    return-void
.end method

.method public final a(Lcom/c/j;)V
    .locals 3

    iget-object v0, p0, Lcom/b/ad;->b:Lcom/b/ae;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/ad;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "client"

    const-string v1, "down"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/b/ad;->b:Lcom/b/ae;

    invoke-virtual {v0}, Lcom/b/ae;->a()Lcom/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/b/ad;->b:Lcom/b/ae;

    invoke-virtual {v1}, Lcom/b/ae;->b()Lcom/b/c;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/b/a;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/b/c;->b()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/b/a;->b()V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/b/c;->a()V

    :cond_3
    iget-object v0, p0, Lcom/b/ad;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "client"

    const-string v1, "down"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/b/ad;->b:Lcom/b/ae;

    invoke-virtual {v0}, Lcom/b/ae;->b()Lcom/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/c;->a(Lcom/c/j;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/b/ad;->b:Lcom/b/ae;

    if-eqz v0, :cond_0

    const-string v0, "Apple"

    const-string v1, " Apple Thread start t"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/b/ad;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/ad;->b:Lcom/b/ae;

    :cond_0
    new-instance v0, Lcom/b/ae;

    invoke-direct {v0, p0}, Lcom/b/ae;-><init>(Lcom/b/ad;)V

    iput-object v0, p0, Lcom/b/ad;->b:Lcom/b/ae;

    iget-object v0, p0, Lcom/b/ad;->b:Lcom/b/ae;

    invoke-virtual {v0}, Lcom/b/ae;->start()V

    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/b/ad;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/ad;->i:Z

    iget-object v0, p0, Lcom/b/ad;->a:Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/b/ad;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v1, p0, Lcom/b/ad;->a:Ljavax/net/ssl/SSLSocket;

    :cond_0
    iget-object v0, p0, Lcom/b/ad;->b:Lcom/b/ae;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/b/ad;->b:Lcom/b/ae;

    invoke-virtual {v0}, Lcom/b/ae;->b()Lcom/b/c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/ad;->b:Lcom/b/ae;

    invoke-virtual {v0}, Lcom/b/ae;->b()Lcom/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/c;->a()V

    :cond_1
    iget-object v0, p0, Lcom/b/ad;->b:Lcom/b/ae;

    invoke-virtual {v0}, Lcom/b/ae;->a()Lcom/b/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/b/ad;->b:Lcom/b/ae;

    invoke-virtual {v0}, Lcom/b/ae;->a()Lcom/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a;->b()V

    :cond_2
    iput-object v1, p0, Lcom/b/ad;->b:Lcom/b/ae;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/b/ad;->b:Lcom/b/ae;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/b/ad;->b:Lcom/b/ae;

    invoke-virtual {v0}, Lcom/b/ae;->a()Lcom/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/b/ad;->b:Lcom/b/ae;

    invoke-virtual {v1}, Lcom/b/ae;->b()Lcom/b/c;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/b/a;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/b/c;->b()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/b/a;->b()V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/b/c;->a()V

    :cond_3
    const-string v0, "client"

    const-string v1, "down"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/b/ad;->b:Lcom/b/ae;

    invoke-virtual {v0}, Lcom/b/ae;->b()Lcom/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/c;->c()V

    goto :goto_0
.end method
