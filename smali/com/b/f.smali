.class public final Lcom/b/f;
.super Ljava/lang/Thread;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Ljava/util/concurrent/locks/ReentrantLock;

.field private c:Ld/h;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/c/b;

.field private k:Lcom/c/b;

.field private l:Lcom/c/b;

.field private m:I

.field private n:Lcom/b/i;

.field private o:Lcom/b/q;

.field private p:Z

.field private q:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/b/i;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/f;->p:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/f;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/b/f;->b:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ld/h;

    invoke-direct {v0}, Ld/h;-><init>()V

    iput-object v0, p0, Lcom/b/f;->c:Ld/h;

    iput-object p1, p0, Lcom/b/f;->n:Lcom/b/i;

    iput-object p2, p0, Lcom/b/f;->q:Landroid/content/Context;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, -0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "\""

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v3, :cond_0

    if-eq v1, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    const/16 v5, 0x8

    const-string v1, "name="

    invoke-static {p1, v1}, Lcom/b/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/b/f;->d:Ljava/lang/String;

    const-string v1, "mime-type="

    invoke-static {p1, v1}, Lcom/b/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/b/f;->e:Ljava/lang/String;

    const-string v1, "uti-type="

    invoke-static {p1, v1}, Lcom/b/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/b/f;->f:Ljava/lang/String;

    const-string v1, "mmcs-owner="

    invoke-static {p1, v1}, Lcom/b/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/c/b;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/c/b;-><init>([BI)V

    iput-object v2, p0, Lcom/b/f;->l:Lcom/c/b;

    const-string v2, "mmcs-url="

    invoke-static {p1, v2}, Lcom/b/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/b/f;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/b/f;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/b/f;->i:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/b/f;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/b/f;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/b/f;->i:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/b/f;->i:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/b/f;->h:Ljava/lang/String;

    const-string v2, "decryption-key="

    invoke-static {p1, v2}, Lcom/b/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/c/b;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v3, v4, v2}, Lcom/c/b;-><init>([BI)V

    iput-object v3, p0, Lcom/b/f;->j:Lcom/c/b;

    iget-object v2, p0, Lcom/b/f;->j:Lcom/c/b;

    invoke-virtual {v2}, Lcom/c/b;->c()V

    const-string v2, "file-size="

    invoke-static {p1, v2}, Lcom/b/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mmcs-signature-hex="

    invoke-static {p1, v3}, Lcom/b/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/c/b;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/c/b;-><init>([BI)V

    iput-object v4, p0, Lcom/b/f;->k:Lcom/c/b;

    iget-object v4, p0, Lcom/b/f;->k:Lcom/c/b;

    invoke-virtual {v4}, Lcom/c/b;->c()V

    const-string v4, "Rec Attach"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Sig "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Rec Attach"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Len "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Rec Attach"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "url "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/b/f;->i:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Rec Attach"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mmcs_owner "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/b/f;->m:I

    iget-object v1, p0, Lcom/b/f;->c:Ld/h;

    iget-object v2, p0, Lcom/b/f;->k:Lcom/c/b;

    iget-object v3, p0, Lcom/b/f;->l:Lcom/c/b;

    invoke-virtual {v1, v2, v3}, Ld/h;->a(Lcom/c/b;Lcom/c/b;)V

    new-instance v1, Lcom/c/j;

    invoke-direct {v1}, Lcom/c/j;-><init>()V

    iget-object v2, p0, Lcom/b/f;->c:Ld/h;

    invoke-virtual {v2}, Ld/h;->c()Lcom/c/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/c/j;->a(Lcom/c/b;)V

    iget-object v2, p0, Lcom/b/f;->n:Lcom/b/i;

    invoke-virtual {v2, v1}, Lcom/b/i;->b(Lcom/c/j;)V

    move v1, v0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x28

    if-lt v1, v3, :cond_0

    :goto_1
    return v0

    :cond_0
    iget-object v1, p0, Lcom/b/f;->c:Ld/h;

    invoke-virtual {v1}, Ld/h;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public final a()Ld/h;
    .locals 1

    iget-object v0, p0, Lcom/b/f;->c:Ld/h;

    return-object v0
.end method

.method public final a(Lcom/b/q;)V
    .locals 0

    iput-object p1, p0, Lcom/b/f;->o:Lcom/b/q;

    return-void
.end method

.method public final a(Lcom/c/j;)V
    .locals 1

    iget-object v0, p0, Lcom/b/f;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/b/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/b/f;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/f;->p:Z

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 13

    const/4 v9, 0x0

    const-string v1, "attach recive"

    const-string v2, " start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/b/f;->p:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    const-string v1, "attach recive"

    const-string v2, " over"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/b/f;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v1, p0, Lcom/b/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/b/f;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-boolean v1, p0, Lcom/b/f;->p:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/f;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :cond_2
    iget-object v1, p0, Lcom/b/f;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/c/j;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/c/j;->m()Lcom/b/w;

    move-result-object v1

    iget-object v2, p0, Lcom/b/f;->a:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/b/f;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/b/w;->f()Ljava/util/ArrayList;

    move-result-object v12

    move v10, v9

    :goto_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v10, v1, :cond_4

    move v1, v2

    :cond_3
    invoke-virtual {v7, v1}, Lcom/c/j;->a(Z)V

    iget-object v1, p0, Lcom/b/f;->o:Lcom/b/q;

    invoke-interface {v1, v7}, Lcom/b/q;->a(Lcom/c/j;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit p0

    throw v1

    :cond_4
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    const-string v1, "In Thread:"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "data: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v9

    move v1, v2

    :goto_3
    if-lez v11, :cond_6

    :cond_5
    if-eqz v1, :cond_3

    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move v2, v1

    goto :goto_2

    :cond_6
    new-instance v1, Ld/i;

    invoke-direct {v1}, Ld/i;-><init>()V

    invoke-direct {p0, v8}, Lcom/b/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/b/f;->c:Ld/h;

    invoke-virtual {v2}, Ld/h;->a()Lcom/c/b;

    move-result-object v3

    iget-object v2, p0, Lcom/b/f;->c:Ld/h;

    invoke-virtual {v2}, Ld/h;->b()Lcom/c/b;

    move-result-object v2

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/c/b;->a()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2}, Lcom/c/b;->b()I

    move-result v2

    invoke-direct {v4, v5, v6, v2}, Ljava/lang/String;-><init>([BII)V

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/c/b;->a()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3}, Lcom/c/b;->b()I

    move-result v3

    invoke-direct {v2, v5, v6, v3}, Ljava/lang/String;-><init>([BII)V

    iget-object v3, p0, Lcom/b/f;->k:Lcom/c/b;

    invoke-virtual {v3}, Lcom/c/b;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/b/f;->i:Ljava/lang/String;

    iget v6, p0, Lcom/b/f;->m:I

    invoke-virtual/range {v1 .. v6}, Ld/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    const/16 v2, 0x20

    new-array v2, v2, [B

    iget-object v3, p0, Lcom/b/f;->j:Lcom/c/b;

    invoke-virtual {v3}, Lcom/c/b;->a()[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/c/a;->a:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/b/f;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ld/i;->a(Ljava/lang/String;[B)Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v1

    if-nez v1, :cond_5

    :goto_4
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_3

    :cond_7
    move v1, v9

    goto :goto_4
.end method
