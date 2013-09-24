.class public final Lcom/b/k;
.super Ljava/lang/Thread;


# instance fields
.field private a:Ljava/net/Socket;

.field private b:Ljava/io/DataInputStream;

.field private c:Lcom/b/q;

.field private d:Z

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/k;->d:Z

    iput-object p1, p0, Lcom/b/k;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/q;)V
    .locals 0

    iput-object p1, p0, Lcom/b/k;->c:Lcom/b/q;

    return-void
.end method

.method public final a(Ljava/net/Socket;)V
    .locals 2

    iput-object p1, p0, Lcom/b/k;->a:Ljava/net/Socket;

    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/b/k;->b:Ljava/io/DataInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/b/k;->d:Z

    return v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/k;->d:Z

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
    .locals 9

    const/4 v8, 0x1

    const/4 v0, 0x5

    const/4 v7, 0x0

    new-array v1, v0, [B

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/b/k;->d:Z

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/b/k;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    iget-object v0, p0, Lcom/b/k;->a:Ljava/net/Socket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/k;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    new-instance v0, Lcom/c/j;

    invoke-direct {v0}, Lcom/c/j;-><init>()V

    iput-boolean v7, p0, Lcom/b/k;->d:Z

    const-string v1, "inThread"

    const-string v2, "over"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/b/p;->a()Lcom/c/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/j;->a(Lcom/c/b;)V

    invoke-virtual {v0}, Lcom/c/j;->k()V

    iget-object v1, p0, Lcom/b/k;->c:Lcom/b/q;

    invoke-interface {v1, v0}, Lcom/b/q;->a(Lcom/c/j;)V

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/b/k;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    iget-boolean v0, p0, Lcom/b/k;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    aget-byte v0, v1, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v2, -0x100

    and-int/2addr v0, v2

    const/4 v2, 0x2

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    const/4 v2, 0x3

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    const/4 v2, 0x4

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v0

    new-array v0, v2, [B

    iget-object v3, p0, Lcom/b/k;->b:Ljava/io/DataInputStream;

    invoke-virtual {v3, v0}, Ljava/io/DataInputStream;->readFully([B)V

    iget-boolean v3, p0, Lcom/b/k;->d:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    aget-byte v3, v1, v3

    if-ne v3, v8, :cond_3

    add-int/lit8 v3, v2, 0x5

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-static {v1, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-static {v0, v4, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/c/b;

    add-int/lit8 v2, v2, 0x5

    invoke-direct {v0, v3, v2}, Lcom/c/b;-><init>([BI)V

    :goto_2
    new-instance v2, Lcom/c/j;

    invoke-direct {v2}, Lcom/c/j;-><init>()V

    invoke-virtual {v2, v0}, Lcom/c/j;->a(Lcom/c/b;)V

    iget-object v0, p0, Lcom/b/k;->c:Lcom/b/q;

    invoke-interface {v0, v2}, Lcom/b/q;->a(Lcom/c/j;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :cond_3
    :try_start_2
    invoke-static {v0}, Le/d;->a([B)[B

    move-result-object v2

    new-instance v0, Lcom/c/b;

    array-length v3, v2

    invoke-direct {v0, v2, v3}, Lcom/c/b;-><init>([BI)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method
