.class public final Lcom/b/g;
.super Ljava/lang/Thread;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Ljava/util/concurrent/locks/ReentrantLock;

.field private c:Ld/l;

.field private d:Lcom/b/i;

.field private e:Ljava/util/Vector;

.field private f:Lcom/c/b;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:[B

.field private k:Z

.field private l:Landroid/content/Context;

.field private m:I

.field private n:I

.field private o:Lcom/a/d;

.field private p:Lcom/b/r;


# direct methods
.method public constructor <init>(Lcom/b/i;Ljava/util/ArrayList;Ljava/util/concurrent/locks/ReentrantLock;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/g;->k:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/b/g;->n:I

    new-instance v0, Lcom/b/h;

    invoke-direct {v0, p0}, Lcom/b/h;-><init>(Lcom/b/g;)V

    iput-object v0, p0, Lcom/b/g;->p:Lcom/b/r;

    iput-object p2, p0, Lcom/b/g;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/b/g;->b:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ld/l;

    invoke-direct {v0}, Ld/l;-><init>()V

    iput-object v0, p0, Lcom/b/g;->c:Ld/l;

    iput-object p1, p0, Lcom/b/g;->d:Lcom/b/i;

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/b/g;->j:[B

    iput-object p4, p0, Lcom/b/g;->l:Landroid/content/Context;

    new-instance v0, Lcom/a/d;

    invoke-direct {v0, p4}, Lcom/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/b/g;->o:Lcom/a/d;

    return-void
.end method

.method static synthetic a(Lcom/b/g;)I
    .locals 1

    iget v0, p0, Lcom/b/g;->m:I

    return v0
.end method

.method static synthetic a(Lcom/b/g;I)V
    .locals 0

    iput p1, p0, Lcom/b/g;->n:I

    return-void
.end method

.method static synthetic b(Lcom/b/g;)I
    .locals 1

    iget v0, p0, Lcom/b/g;->n:I

    return v0
.end method

.method static synthetic c(Lcom/b/g;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/b/g;->l:Landroid/content/Context;

    return-object v0
.end method

.method private c()Z
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    iget-object v2, p0, Lcom/b/g;->j:[B

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextBytes([B)V

    iget-object v1, p0, Lcom/b/g;->h:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/c/a;->b:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/b/g;->h:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/b/g;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/b/g;->j:[B

    iget-object v2, p0, Lcom/b/g;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/b/g;->i:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Ld/d;->b([BLjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/b/g;->i:Ljava/lang/String;

    invoke-static {v1}, La/c;->b(Ljava/lang/String;)Lcom/c/b;

    move-result-object v1

    iput-object v1, p0, Lcom/b/g;->f:Lcom/c/b;

    iget-object v1, p0, Lcom/b/g;->i:Ljava/lang/String;

    invoke-static {v1}, La/c;->a(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    iput-object v1, p0, Lcom/b/g;->e:Ljava/util/Vector;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/b/g;->i:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lcom/b/g;->g:I

    iget-object v1, p0, Lcom/b/g;->c:Ld/l;

    iget v2, p0, Lcom/b/g;->g:I

    iget-object v3, p0, Lcom/b/g;->f:Lcom/c/b;

    invoke-virtual {v1, v2, v3}, Ld/l;->a(ILcom/c/b;)V

    new-instance v1, Lcom/c/j;

    invoke-direct {v1}, Lcom/c/j;-><init>()V

    iget-object v2, p0, Lcom/b/g;->c:Ld/l;

    invoke-virtual {v2}, Ld/l;->e()Lcom/c/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/c/j;->a(Lcom/c/b;)V

    iget-object v2, p0, Lcom/b/g;->d:Lcom/b/i;

    invoke-virtual {v2, v1}, Lcom/b/i;->b(Lcom/c/j;)V

    move v1, v0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x28

    if-lt v1, v3, :cond_0

    :goto_1
    return v0

    :cond_0
    iget-object v1, p0, Lcom/b/g;->c:Ld/l;

    iget-boolean v1, v1, Ld/l;->a:Z

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
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/g;->k:Z

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

.method public final a(Lcom/c/j;)V
    .locals 1

    iget-object v0, p0, Lcom/b/g;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/b/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/b/g;->b:Ljava/util/concurrent/locks/ReentrantLock;

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

.method public final b()Ld/l;
    .locals 1

    iget-object v0, p0, Lcom/b/g;->c:Ld/l;

    return-object v0
.end method

.method public final run()V
    .locals 15

    const/4 v12, 0x0

    const-string v1, "attach send"

    const-string v2, " start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/b/g;->k:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/b/g;->o:Lcom/a/d;

    invoke-virtual {v1}, Lcom/a/d;->b()V

    const-string v1, "attach send"

    const-string v2, " over"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/b/g;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v1, p0, Lcom/b/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/b/g;->b:Ljava/util/concurrent/locks/ReentrantLock;

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
    iget-boolean v1, p0, Lcom/b/g;->k:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/g;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :cond_2
    iget-object v1, p0, Lcom/b/g;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/c/j;

    move-object v10, v0

    iget-object v1, p0, Lcom/b/g;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/b/g;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {v10}, Lcom/c/j;->f()Lcom/b/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/y;->a()I

    move-result v2

    iput v2, p0, Lcom/b/g;->m:I

    invoke-virtual {v1}, Lcom/b/y;->d()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v1}, Lcom/b/y;->f()V

    const/4 v11, 0x1

    move v13, v12

    :goto_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v13, v2, :cond_4

    move v2, v11

    :cond_3
    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lcom/b/y;->g()V

    iget-object v2, p0, Lcom/b/g;->o:Lcom/a/d;

    sget-object v3, Lcom/c/a;->f:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/b/y;->a()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1}, Lcom/b/y;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/a/d;->a(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v10}, Lcom/c/j;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2, v1}, Lcom/c/j;->a(Ljava/lang/String;Lcom/b/y;)V

    iget-object v1, p0, Lcom/b/g;->d:Lcom/b/i;

    invoke-virtual {v1, v10}, Lcom/b/i;->b(Lcom/c/j;)V

    iget-object v1, p0, Lcom/b/g;->p:Lcom/b/r;

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/high16 v4, 0x3f00

    invoke-interface {v1, v2, v3, v4}, Lcom/b/r;->a(IIF)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit p0

    throw v1

    :cond_4
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "STARTFILE:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0xa

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x8

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/b/g;->h:Ljava/lang/String;

    const-string v2, "Out Thread:"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "data: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/b/g;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/b/g;->p:Lcom/b/r;

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/high16 v5, 0x3f00

    invoke-interface {v2, v3, v4, v5}, Lcom/b/r;->a(IIF)V

    invoke-direct {p0}, Lcom/b/g;->c()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/b/g;->p:Lcom/b/r;

    const/4 v3, 0x3

    const/4 v4, 0x3

    const/high16 v5, 0x3f80

    invoke-interface {v2, v3, v4, v5}, Lcom/b/r;->a(IIF)V

    new-instance v2, Ld/m;

    invoke-direct {v2}, Ld/m;-><init>()V

    iget-object v3, p0, Lcom/b/g;->p:Lcom/b/r;

    invoke-virtual {v2, v3}, Ld/m;->a(Lcom/b/r;)V

    iget-object v3, p0, Lcom/b/g;->e:Ljava/util/Vector;

    iget-object v4, p0, Lcom/b/g;->f:Lcom/c/b;

    invoke-virtual {v2, v3, v4}, Ld/m;->a(Ljava/util/Vector;Lcom/c/b;)V

    iget-object v3, p0, Lcom/b/g;->c:Ld/l;

    invoke-virtual {v3}, Ld/l;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ld/m;->b(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/b/g;->c:Ld/l;

    invoke-virtual {v3}, Ld/l;->a()Lcom/c/b;

    move-result-object v3

    iget-object v4, p0, Lcom/b/g;->c:Ld/l;

    invoke-virtual {v4}, Ld/l;->b()Lcom/c/b;

    move-result-object v4

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/c/b;->a()[B

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/c/b;->b()I

    move-result v3

    invoke-direct {v6, v5, v7, v3}, Ljava/lang/String;-><init>([BII)V

    iget-object v3, p0, Lcom/b/g;->f:Lcom/c/b;

    invoke-virtual {v3}, Lcom/c/b;->d()Ljava/lang/String;

    move-result-object v8

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/c/b;->a()[B

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v4}, Lcom/c/b;->b()I

    move-result v4

    invoke-direct {v3, v5, v7, v4}, Ljava/lang/String;-><init>([BII)V

    iget v4, p0, Lcom/b/g;->g:I

    invoke-virtual {v2, v6, v8, v3, v4}, Ld/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/b/g;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/b/g;->j:[B

    invoke-virtual {v2, v3}, Ld/m;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/b/g;->h:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    new-instance v9, Lcom/c/b;

    iget-object v3, p0, Lcom/b/g;->j:[B

    iget-object v4, p0, Lcom/b/g;->j:[B

    array-length v4, v4

    invoke-direct {v9, v3, v4}, Lcom/c/b;-><init>([BI)V

    const-string v5, "public.plain-text"

    const-string v4, "text/plain"

    iget-object v3, p0, Lcom/b/g;->h:Ljava/lang/String;

    const-string v7, ".apk"

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v4, ""

    const-string v5, "dyn.age80c6dp"

    :cond_5
    iget-object v3, p0, Lcom/b/g;->h:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/b/g;->g:I

    iget-object v7, p0, Lcom/b/g;->c:Ld/l;

    invoke-virtual {v7}, Ld/l;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9}, Lcom/c/b;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Lcom/b/y;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v2, v11

    :goto_3
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/b/g;->i:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :goto_4
    if-eqz v2, :cond_3

    :goto_5
    add-int/lit8 v3, v13, 0x1

    move v13, v3

    move v11, v2

    goto/16 :goto_2

    :cond_6
    move v2, v12

    goto :goto_3

    :cond_7
    move v2, v12

    goto :goto_4

    :cond_8
    invoke-virtual {v1, v2}, Lcom/b/y;->a(Ljava/lang/String;)V

    move v2, v11

    goto :goto_5

    :cond_9
    iget-object v1, p0, Lcom/b/g;->p:Lcom/b/r;

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/high16 v4, 0x3f00

    invoke-interface {v1, v2, v3, v4}, Lcom/b/r;->a(IIF)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method
