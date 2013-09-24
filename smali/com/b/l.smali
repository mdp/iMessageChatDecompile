.class public final Lcom/b/l;
.super Ljava/lang/Thread;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Ljava/util/ArrayList;

.field private c:Ljava/util/concurrent/locks/ReentrantLock;

.field private d:Ljava/util/ArrayList;

.field private e:Ljava/util/concurrent/locks/ReentrantLock;

.field private f:Ljava/util/concurrent/locks/ReentrantLock;

.field private g:Ljava/net/Socket;

.field private h:Ljava/io/DataOutputStream;

.field private i:Ld/w;

.field private j:Lcom/a/f;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/concurrent/locks/ReentrantLock;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/l;->l:Z

    iput-object p1, p0, Lcom/b/l;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/l;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/b/l;->c:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/b/l;->e:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Lcom/b/l;->a:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/b/l;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/b/l;->e:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object v0, p0, Lcom/b/l;->f:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p3, p0, Lcom/b/l;->m:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/c/b;)V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/c/b;->a()[B

    move-result-object v1

    aget-byte v2, v1, v5

    const-string v0, "SendMsg"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v2, v6, :cond_0

    const-string v0, "SendMsg"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sType "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x6

    aget-byte v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Lcom/c/b;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/c/b;->a()[B

    move-result-object v3

    aput-byte v6, v3, v8

    if-eq v2, v7, :cond_1

    invoke-static {v1}, Le/d;->a([B)[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x5

    new-array v1, v1, [B

    const/16 v2, 0x3c

    aput-byte v2, v1, v5

    array-length v2, v0

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    const/4 v2, 0x2

    array-length v3, v0

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    array-length v3, v0

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    array-length v2, v0

    shr-int/lit8 v2, v2, 0x0

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    array-length v2, v0

    invoke-static {v0, v5, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/lit8 v0, v0, 0x5

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/b/l;->h:Ljava/io/DataOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/DataOutputStream;->write([BII)V

    iget-object v0, p0, Lcom/b/l;->h:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/b/l;->b:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/b/l;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/b/l;->c:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object v0, p0, Lcom/b/l;->f:Ljava/util/concurrent/locks/ReentrantLock;

    const-string v0, "outThread"

    const-string v1, "change"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/c/j;)V
    .locals 2

    iget-object v0, p0, Lcom/b/l;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/l;->a:Ljava/util/ArrayList;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/b/l;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/b/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/b/l;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Lcom/b/l;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/l;->a:Ljava/util/ArrayList;

    if-ne v0, v1, :cond_0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/b/l;->b(Lcom/c/j;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/a/f;)V
    .locals 0

    iput-object p2, p0, Lcom/b/l;->j:Lcom/a/f;

    iput-object p1, p0, Lcom/b/l;->k:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/net/Socket;)V
    .locals 2

    iput-object p1, p0, Lcom/b/l;->g:Ljava/net/Socket;

    :try_start_0
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/b/l;->h:Ljava/io/DataOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/l;->l:Z

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

.method public final b(Lcom/c/j;)V
    .locals 2

    iget-object v0, p0, Lcom/b/l;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/b/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/b/l;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Lcom/b/l;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/l;->b:Ljava/util/ArrayList;

    if-ne v0, v1, :cond_0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/b/l;->l:Z

    return v0
.end method

.method public final run()V
    .locals 5

    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/b/l;->l:Z

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/b/l;->h:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    iget-object v0, p0, Lcom/b/l;->g:Ljava/net/Socket;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/b/l;->g:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_1
    const-string v0, "outThread"

    const-string v1, "over"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/b/l;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/b/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/b/l;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-boolean v0, p0, Lcom/b/l;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/l;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :cond_4
    iget-object v0, p0, Lcom/b/l;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/j;

    iget-object v1, p0, Lcom/b/l;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/b/l;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/c/j;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Lcom/c/j;->h()Lcom/c/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/b/l;->a(Lcom/c/b;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0

    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :pswitch_1
    :try_start_5
    invoke-virtual {v0}, Lcom/c/j;->e()Lactivity/NewMessageActivity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/c/j;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/c/j;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ld/w;

    iget-object v4, p0, Lcom/b/l;->m:Landroid/content/Context;

    invoke-direct {v3, v0, v4}, Ld/w;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/b/l;->i:Ld/w;

    iget-object v0, p0, Lcom/b/l;->i:Ld/w;

    iget-object v3, p0, Lcom/b/l;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/b/l;->j:Lcom/a/f;

    invoke-virtual {v0, v3, v4}, Ld/w;->b(Ljava/lang/String;Lcom/a/f;)I

    move-result v0

    if-lez v0, :cond_5

    iget-object v3, p0, Lcom/b/l;->i:Ld/w;

    invoke-virtual {v3}, Ld/w;->e()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/b/t;

    invoke-direct {v4, v0, v3}, Lcom/b/t;-><init>(ILjava/lang/String;)V

    new-instance v3, Lcom/c/j;

    invoke-direct {v3}, Lcom/c/j;-><init>()V

    invoke-virtual {v4}, Lcom/b/t;->a()Lcom/c/b;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/c/j;->a(Lcom/c/b;)V

    invoke-virtual {p0, v3}, Lcom/b/l;->b(Lcom/c/j;)V

    :cond_5
    invoke-virtual {v1, v2, v0}, Lactivity/NewMessageActivity;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/b/l;->i:Ld/w;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/l;->i:Ld/w;

    invoke-virtual {v1}, Ld/w;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/c/j;->f()Lcom/b/y;

    move-result-object v0

    iget-object v1, p0, Lcom/b/l;->i:Ld/w;

    invoke-virtual {v0, v1}, Lcom/b/y;->a(Ld/w;)V

    invoke-virtual {v0}, Lcom/b/y;->e()Lcom/c/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/b/l;->a(Lcom/c/b;)V

    goto/16 :goto_0

    :pswitch_3
    new-instance v1, Ld/w;

    invoke-virtual {v0}, Lcom/c/j;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/b/l;->m:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Ld/w;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/b/l;->i:Ld/w;

    iget-object v1, p0, Lcom/b/l;->i:Ld/w;

    iget-object v2, p0, Lcom/b/l;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/b/l;->j:Lcom/a/f;

    invoke-virtual {v1, v2, v3}, Ld/w;->a(Ljava/lang/String;Lcom/a/f;)V

    iget-object v1, p0, Lcom/b/l;->i:Ld/w;

    invoke-virtual {v1}, Ld/w;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/c/j;->f()Lcom/b/y;

    move-result-object v0

    iget-object v1, p0, Lcom/b/l;->i:Ld/w;

    invoke-virtual {v0, v1}, Lcom/b/y;->a(Ld/w;)V

    invoke-virtual {v0}, Lcom/b/y;->e()Lcom/c/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/b/l;->a(Lcom/c/b;)V

    goto/16 :goto_0

    :cond_6
    new-instance v1, Lcom/c/k;

    invoke-direct {v1}, Lcom/c/k;-><init>()V

    invoke-virtual {v0}, Lcom/c/j;->f()Lcom/b/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/y;->a()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/c/k;->a(J)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.way.update"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/b/l;->m:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
