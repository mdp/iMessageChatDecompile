.class public final Lcom/b/j;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/b/i;

.field private b:Lcom/b/k;

.field private c:Lcom/b/l;


# direct methods
.method public constructor <init>(Lcom/b/i;)V
    .locals 0

    iput-object p1, p0, Lcom/b/j;->a:Lcom/b/i;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/b/k;
    .locals 1

    iget-object v0, p0, Lcom/b/j;->b:Lcom/b/k;

    return-object v0
.end method

.method public final b()Lcom/b/l;
    .locals 1

    iget-object v0, p0, Lcom/b/j;->c:Lcom/b/l;

    return-object v0
.end method

.method public final run()V
    .locals 5

    const/4 v3, 0x5

    :try_start_0
    iget-object v0, p0, Lcom/b/j;->a:Lcom/b/i;

    invoke-static {v0}, Lcom/b/i;->a(Lcom/b/i;)Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/j;->a:Lcom/b/i;

    invoke-static {v0}, Lcom/b/i;->a(Lcom/b/i;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/b/j;->a:Lcom/b/i;

    invoke-static {v1}, Lcom/b/i;->b(Lcom/b/i;)Lcom/b/q;

    move-result-object v1

    if-nez v1, :cond_1

    if-lt v0, v3, :cond_2

    :cond_1
    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/b/j;->a:Lcom/b/i;

    invoke-static {v0}, Lcom/b/i;->c(Lcom/b/i;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_2
    const-wide/16 v1, 0x3e8

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    :try_start_2
    const-string v1, "client"

    const-string v2, "wait service to start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Client"

    const-string v2, "Network is unreachable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/b/j;->a:Lcom/b/i;

    invoke-static {v1}, Lcom/b/i;->c(Lcom/b/i;)V

    invoke-static {}, Lcom/b/p;->a()Lcom/c/b;

    move-result-object v1

    new-instance v2, Lcom/c/j;

    invoke-direct {v2}, Lcom/c/j;-><init>()V

    invoke-virtual {v2, v1}, Lcom/c/j;->a(Lcom/c/b;)V

    invoke-virtual {v2}, Lcom/c/j;->k()V

    iget-object v1, p0, Lcom/b/j;->a:Lcom/b/i;

    invoke-static {v1}, Lcom/b/i;->b(Lcom/b/i;)Lcom/b/q;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/b/q;->a(Lcom/c/j;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    const-string v0, "Client"

    const-string v1, "over"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_3
    const-string v0, ""

    sput-object v0, Le/c;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/b/j;->a:Lcom/b/i;

    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    invoke-static {v0, v1}, Lcom/b/i;->a(Lcom/b/i;Ljava/net/Socket;)V

    iget-object v0, p0, Lcom/b/j;->a:Lcom/b/i;

    invoke-static {v0}, Lcom/b/i;->a(Lcom/b/i;)Ljava/net/Socket;

    move-result-object v0

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/b/j;->a:Lcom/b/i;

    invoke-static {v2}, Lcom/b/i;->d(Lcom/b/i;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070002

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/b/j;->a:Lcom/b/i;

    invoke-static {v3}, Lcom/b/i;->d(Lcom/b/i;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f08

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    iget-object v0, p0, Lcom/b/j;->a:Lcom/b/i;

    invoke-static {v0}, Lcom/b/i;->a(Lcom/b/i;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Client"

    const-string v1, "link succ"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/b/k;

    iget-object v1, p0, Lcom/b/j;->a:Lcom/b/i;

    invoke-static {v1}, Lcom/b/i;->d(Lcom/b/i;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/b/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/b/j;->b:Lcom/b/k;

    iget-object v0, p0, Lcom/b/j;->b:Lcom/b/k;

    iget-object v1, p0, Lcom/b/j;->a:Lcom/b/i;

    invoke-static {v1}, Lcom/b/i;->b(Lcom/b/i;)Lcom/b/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/k;->a(Lcom/b/q;)V

    new-instance v0, Lcom/b/l;

    iget-object v1, p0, Lcom/b/j;->a:Lcom/b/i;

    invoke-static {v1}, Lcom/b/i;->e(Lcom/b/i;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/b/j;->a:Lcom/b/i;

    invoke-static {v2}, Lcom/b/i;->f(Lcom/b/i;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    iget-object v3, p0, Lcom/b/j;->a:Lcom/b/i;

    invoke-static {v3}, Lcom/b/i;->d(Lcom/b/i;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/l;-><init>(Ljava/util/ArrayList;Ljava/util/concurrent/locks/ReentrantLock;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/b/j;->c:Lcom/b/l;

    iget-object v0, p0, Lcom/b/j;->c:Lcom/b/l;

    iget-object v1, p0, Lcom/b/j;->a:Lcom/b/i;

    invoke-static {v1}, Lcom/b/i;->g(Lcom/b/i;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/b/j;->a:Lcom/b/i;

    invoke-static {v2}, Lcom/b/i;->h(Lcom/b/i;)Lcom/a/f;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/l;->a(Ljava/lang/String;Lcom/a/f;)V

    iget-object v0, p0, Lcom/b/j;->b:Lcom/b/k;

    iget-object v1, p0, Lcom/b/j;->a:Lcom/b/i;

    invoke-static {v1}, Lcom/b/i;->a(Lcom/b/i;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/k;->a(Ljava/net/Socket;)V

    iget-object v0, p0, Lcom/b/j;->c:Lcom/b/l;

    iget-object v1, p0, Lcom/b/j;->a:Lcom/b/i;

    invoke-static {v1}, Lcom/b/i;->a(Lcom/b/i;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/l;->a(Ljava/net/Socket;)V

    iget-object v0, p0, Lcom/b/j;->b:Lcom/b/k;

    invoke-virtual {v0}, Lcom/b/k;->start()V

    iget-object v0, p0, Lcom/b/j;->c:Lcom/b/l;

    invoke-virtual {v0}, Lcom/b/l;->start()V

    new-instance v0, Lcom/c/j;

    invoke-direct {v0}, Lcom/c/j;-><init>()V

    invoke-static {}, Le/a;->a()V

    invoke-static {}, Le/a;->b()Lcom/c/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/j;->a(Lcom/c/b;)V

    iget-object v1, p0, Lcom/b/j;->c:Lcom/b/l;

    invoke-virtual {v1, v0}, Lcom/b/l;->a(Lcom/c/j;)V

    goto/16 :goto_3

    :cond_4
    const-string v0, "Client"

    const-string v1, "internet down"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b/j;->a:Lcom/b/i;

    invoke-static {v0}, Lcom/b/i;->c(Lcom/b/i;)V

    invoke-static {}, Lcom/b/p;->a()Lcom/c/b;

    move-result-object v0

    new-instance v1, Lcom/c/j;

    invoke-direct {v1}, Lcom/c/j;-><init>()V

    invoke-virtual {v1, v0}, Lcom/c/j;->a(Lcom/c/b;)V

    invoke-virtual {v1}, Lcom/c/j;->k()V

    iget-object v0, p0, Lcom/b/j;->a:Lcom/b/i;

    invoke-static {v0}, Lcom/b/i;->b(Lcom/b/i;)Lcom/b/q;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/b/q;->a(Lcom/c/j;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3
.end method
