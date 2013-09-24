.class public final Lcom/b/a;
.super Ljava/lang/Thread;


# static fields
.field public static a:Z


# instance fields
.field private b:Ljava/io/DataInputStream;

.field private c:Lcom/b/q;

.field private d:Lcom/b/q;

.field private e:Z

.field private f:Landroid/content/Context;

.field private g:Ljavax/net/ssl/SSLSocket;

.field private h:Z

.field private i:I

.field private j:I

.field private k:[B

.field private l:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/b/a;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a;->e:Z

    iput-object p1, p0, Lcom/b/a;->f:Landroid/content/Context;

    return-void
.end method

.method private c()Z
    .locals 8

    const/16 v1, 0x10

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v0, Lcom/b/ag;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/b/a;->k:[B

    if-eqz v0, :cond_4

    const/16 v0, 0x33

    :goto_0
    iget-object v2, p0, Lcom/b/a;->l:[B

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x23

    :cond_0
    new-array v2, v0, [B

    add-int/lit8 v0, v0, -0x5

    aput-byte v6, v2, v4

    aput-byte v4, v2, v5

    aput-byte v4, v2, v6

    const/4 v3, 0x3

    aput-byte v4, v2, v3

    int-to-byte v0, v0

    aput-byte v0, v2, v7

    const/4 v0, 0x5

    aput-byte v7, v2, v0

    const/4 v0, 0x6

    aput-byte v5, v2, v0

    const/4 v0, 0x7

    const/16 v3, 0xd

    aput-byte v3, v2, v0

    const/16 v0, 0x8

    aput-byte v5, v2, v0

    const/16 v0, 0x9

    aput-byte v4, v2, v0

    const/16 v0, 0xa

    aput-byte v5, v2, v0

    const/16 v0, 0xb

    iget v3, p0, Lcom/b/a;->i:I

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    const/16 v0, 0xc

    aput-byte v6, v2, v0

    const/16 v0, 0xd

    aput-byte v4, v2, v0

    const/16 v0, 0xe

    aput-byte v5, v2, v0

    const/16 v0, 0xf

    iget v3, p0, Lcom/b/a;->j:I

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    iget-object v0, p0, Lcom/b/a;->k:[B

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    aput-byte v0, v2, v1

    const/16 v0, 0x11

    aput-byte v4, v2, v0

    const/16 v0, 0x12

    const/16 v1, 0x20

    aput-byte v1, v2, v0

    iget-object v0, p0, Lcom/b/a;->k:[B

    const/16 v1, 0x13

    const/16 v3, 0x20

    invoke-static {v0, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x33

    :cond_1
    iget-object v0, p0, Lcom/b/a;->l:[B

    if-eqz v0, :cond_3

    add-int/lit8 v0, v1, 0x1

    aput-byte v7, v2, v1

    add-int/lit8 v1, v0, 0x1

    aput-byte v4, v2, v0

    add-int/lit8 v0, v1, 0x1

    const/16 v3, 0x20

    aput-byte v3, v2, v1

    iget-object v1, p0, Lcom/b/a;->l:[B

    const/16 v3, 0x20

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v0, 0x20

    move-object v0, v2

    :goto_1
    new-instance v2, Lcom/c/b;

    invoke-direct {v2, v0, v1}, Lcom/c/b;-><init>([BI)V

    new-instance v0, Lcom/c/j;

    invoke-direct {v0}, Lcom/c/j;-><init>()V

    invoke-virtual {v0, v2}, Lcom/c/j;->a(Lcom/c/b;)V

    invoke-virtual {v0, v4}, Lcom/c/j;->a(Z)V

    iget-object v1, p0, Lcom/b/a;->c:Lcom/b/q;

    invoke-interface {v1, v0}, Lcom/b/q;->a(Lcom/c/j;)V

    return v5

    :cond_2
    new-array v0, v1, [B

    aput-byte v6, v0, v4

    aput-byte v4, v0, v5

    aput-byte v4, v0, v6

    const/4 v2, 0x3

    aput-byte v4, v0, v2

    const/16 v2, 0xb

    aput-byte v2, v0, v7

    const/4 v2, 0x5

    aput-byte v7, v0, v2

    const/4 v2, 0x6

    aput-byte v5, v0, v2

    const/4 v2, 0x7

    const/16 v3, 0x15

    aput-byte v3, v0, v2

    const/16 v2, 0x8

    aput-byte v5, v0, v2

    const/16 v2, 0x9

    aput-byte v4, v0, v2

    const/16 v2, 0xa

    aput-byte v5, v0, v2

    const/16 v2, 0xb

    iget v3, p0, Lcom/b/a;->i:I

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/16 v2, 0xc

    aput-byte v6, v0, v2

    const/16 v2, 0xd

    aput-byte v4, v0, v2

    const/16 v2, 0xe

    aput-byte v5, v0, v2

    const/16 v2, 0xf

    iget v3, p0, Lcom/b/a;->j:I

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Lcom/b/q;Lcom/b/q;)V
    .locals 0

    iput-object p2, p0, Lcom/b/a;->d:Lcom/b/q;

    iput-object p1, p0, Lcom/b/a;->c:Lcom/b/q;

    return-void
.end method

.method public final a(Ljavax/net/ssl/SSLSocket;)V
    .locals 2

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/b/a;->b:Ljava/io/DataInputStream;

    iput-object p1, p0, Lcom/b/a;->g:Ljavax/net/ssl/SSLSocket;

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/b/a;->e:Z

    return v0
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a;->e:Z

    const-string v0, "Apple"

    const-string v1, "Apple Thread over"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    const v12, 0xff00

    const/16 v11, 0x20

    const/4 v0, 0x5

    const/4 v10, 0x1

    const/4 v3, 0x0

    new-array v4, v0, [B

    const-string v0, "Start Apple"

    const-string v1, "Apple Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/b/a;->h:Z

    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/b/a;->e:Z

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/b/a;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v0, "Apple"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Apple Thread + "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/b/a;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/b/a;->e:Z

    iget-object v0, p0, Lcom/b/a;->d:Lcom/b/q;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/b/q;->a(Lcom/c/j;)V

    const-string v0, "AppleInput"

    const-string v1, " over "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/b/a;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0, v4}, Ljava/io/DataInputStream;->readFully([B)V

    iget-boolean v0, p0, Lcom/b/a;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    aget-byte v0, v4, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x100

    and-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, v4, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, v4, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v12

    or-int/2addr v0, v1

    const/4 v1, 0x4

    aget-byte v1, v4, v1

    shl-int/lit8 v1, v1, 0x0

    and-int/lit16 v1, v1, 0xff

    or-int v5, v0, v1

    new-array v6, v5, [B

    iget-object v0, p0, Lcom/b/a;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0, v6}, Ljava/io/DataInputStream;->readFully([B)V

    const-string v0, "appleInput"

    const-string v1, " rec "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/b/a;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    aget-byte v0, v4, v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/b/a;->a:Z

    const/4 v1, -0x1

    const/4 v0, 0x0

    move v2, v3

    :goto_2
    if-lt v2, v5, :cond_3

    if-nez v1, :cond_7

    iget-boolean v2, p0, Lcom/b/a;->h:Z

    if-nez v2, :cond_5

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/b/a;->h:Z

    iput v1, p0, Lcom/b/a;->i:I

    sget-boolean v1, Lcom/b/ag;->a:Z

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/b/a;->k:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :cond_3
    :try_start_2
    aget-byte v7, v6, v2

    add-int/lit8 v8, v2, 0x1

    aget-byte v8, v6, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v12

    add-int/lit8 v9, v2, 0x2

    aget-byte v9, v6, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    add-int/lit8 v2, v2, 0x3

    packed-switch v7, :pswitch_data_1

    :cond_4
    :goto_3
    :pswitch_2
    add-int/2addr v2, v8

    goto :goto_2

    :pswitch_3
    if-ne v8, v10, :cond_4

    aget-byte v1, v6, v2

    goto :goto_3

    :pswitch_4
    if-ne v8, v11, :cond_4

    const/16 v0, 0x20

    new-array v0, v0, [B

    const/4 v7, 0x0

    const/16 v9, 0x20

    invoke-static {v6, v2, v0, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_5
    iput v1, p0, Lcom/b/a;->j:I

    sget-boolean v1, Lcom/b/ag;->a:Z

    if-eqz v1, :cond_6

    iput-object v0, p0, Lcom/b/a;->l:[B

    :cond_6
    invoke-direct {p0}, Lcom/b/a;->c()Z

    iget-object v0, p0, Lcom/b/a;->k:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a;->l:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a;->k:[B

    iget-object v1, p0, Lcom/b/a;->l:[B

    array-length v2, v0

    array-length v5, v1

    add-int/2addr v2, v5

    new-array v2, v2, [B

    sput-object v2, Le/c;->k:[B

    const/4 v2, 0x0

    sget-object v5, Le/c;->k:[B

    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v0, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    sget-object v5, Le/c;->k:[B

    array-length v0, v0

    array-length v6, v1

    invoke-static {v1, v2, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_7
    iget-boolean v0, p0, Lcom/b/a;->h:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a;->h:Z

    iput v1, p0, Lcom/b/a;->i:I

    :goto_4
    invoke-direct {p0}, Lcom/b/a;->c()Z

    goto/16 :goto_0

    :cond_8
    iput v1, p0, Lcom/b/a;->j:I

    goto :goto_4

    :pswitch_5
    const/4 v0, 0x1

    sput-boolean v0, Lcom/b/a;->a:Z

    add-int/lit8 v0, v5, 0x5

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x5

    invoke-static {v4, v1, v0, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-static {v6, v1, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lcom/c/b;

    add-int/lit8 v2, v5, 0x5

    invoke-direct {v1, v0, v2}, Lcom/c/b;-><init>([BI)V

    new-instance v0, Lcom/c/j;

    invoke-direct {v0}, Lcom/c/j;-><init>()V

    invoke-virtual {v0, v1}, Lcom/c/j;->a(Lcom/c/b;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/c/j;->a(Z)V

    iget-object v1, p0, Lcom/b/a;->c:Lcom/b/q;

    invoke-interface {v1, v0}, Lcom/b/q;->a(Lcom/c/j;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
