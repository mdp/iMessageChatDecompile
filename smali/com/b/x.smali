.class public final Lcom/b/x;
.super Ljava/lang/Thread;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/c/b;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:I

.field private m:I

.field private n:Landroid/os/Handler;

.field private o:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/b/x;->n:Landroid/os/Handler;

    iput-object p2, p0, Lcom/b/x;->o:Landroid/content/Context;

    return-void
.end method

.method private a()Z
    .locals 13

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/b/x;->o:Landroid/content/Context;

    const v4, 0x7f070002

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/b/x;->o:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f08

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-direct {v0, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v3, 0xbb8

    invoke-virtual {v2, v0, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "register"

    const-string v3, "link succ"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {}, Le/a;->a()V

    invoke-static {}, Le/a;->b()Lcom/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/b;->a()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/c/b;->b()I

    move-result v0

    invoke-virtual {v4, v5, v6, v0}, Ljava/io/DataOutputStream;->write([BII)V

    const/4 v0, 0x0

    move v12, v0

    move v0, v1

    move v1, v12

    :goto_0
    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    :goto_1
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    :goto_2
    return v0

    :cond_1
    const/4 v5, 0x5

    new-array v5, v5, [B

    invoke-virtual {v3, v5}, Ljava/io/DataInputStream;->readFully([B)V

    const/4 v6, 0x1

    aget-byte v6, v5, v6

    shl-int/lit8 v6, v6, 0x18

    const/high16 v7, -0x100

    and-int/2addr v6, v7

    const/4 v7, 0x2

    aget-byte v7, v5, v7

    shl-int/lit8 v7, v7, 0x10

    const/high16 v8, 0xff

    and-int/2addr v7, v8

    or-int/2addr v6, v7

    const/4 v7, 0x3

    aget-byte v7, v5, v7

    shl-int/lit8 v7, v7, 0x8

    const v8, 0xff00

    and-int/2addr v7, v8

    or-int/2addr v6, v7

    const/4 v7, 0x4

    aget-byte v7, v5, v7

    shl-int/lit8 v7, v7, 0x0

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    new-array v7, v6, [B

    invoke-virtual {v3, v7}, Ljava/io/DataInputStream;->readFully([B)V

    const-string v8, "Register rec "

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " type "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    aget-byte v10, v5, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    aget-byte v8, v5, v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    add-int/lit8 v8, v6, 0x5

    new-array v8, v8, [B

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-static {v5, v9, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    const/4 v9, 0x5

    invoke-static {v7, v5, v8, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v5, Lcom/c/b;

    add-int/lit8 v7, v6, 0x5

    invoke-direct {v5, v8, v7}, Lcom/c/b;-><init>([BI)V

    add-int/lit8 v5, v6, 0x5

    const/4 v6, 0x6

    aget-byte v6, v8, v6

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-static {v8}, Le/a;->a([B)V

    invoke-static {}, Le/a;->c()Lcom/c/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/c/b;->a()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5}, Lcom/c/b;->b()I

    move-result v5

    invoke-virtual {v4, v6, v7, v5}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/b/x;->a:I

    const/4 v0, 0x0

    goto/16 :goto_2

    :pswitch_2
    :try_start_1
    invoke-static {v8, v5}, Le/a;->a([BI)Z

    iget-object v5, p0, Lcom/b/x;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/b/x;->e:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v7, v5, 0xb

    add-int/lit8 v7, v7, 0x3

    add-int/2addr v7, v6

    new-array v8, v7, [B

    const/4 v9, 0x0

    const/16 v10, 0xa

    aput-byte v10, v8, v9

    const/4 v9, 0x1

    add-int/lit8 v10, v7, -0x5

    shr-int/lit8 v10, v10, 0x18

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    const/4 v9, 0x2

    add-int/lit8 v10, v7, -0x5

    shr-int/lit8 v10, v10, 0x10

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    const/4 v9, 0x3

    add-int/lit8 v10, v7, -0x5

    shr-int/lit8 v10, v10, 0x8

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    const/4 v9, 0x4

    add-int/lit8 v7, v7, -0x5

    shr-int/lit8 v7, v7, 0x0

    int-to-byte v7, v7

    aput-byte v7, v8, v9

    const/4 v7, 0x5

    const/4 v9, 0x4

    aput-byte v9, v8, v7

    const/4 v7, 0x6

    const/4 v9, 0x1

    aput-byte v9, v8, v7

    const/4 v7, 0x7

    const/4 v9, 0x1

    aput-byte v9, v8, v7

    const/16 v7, 0x8

    const/4 v9, 0x1

    aput-byte v9, v8, v7

    const/16 v7, 0x9

    shr-int/lit8 v9, v5, 0x8

    int-to-byte v9, v9

    aput-byte v9, v8, v7

    const/16 v7, 0xa

    int-to-byte v9, v5

    aput-byte v9, v8, v7

    iget-object v7, p0, Lcom/b/x;->b:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/4 v9, 0x0

    const/16 v10, 0xb

    invoke-static {v7, v9, v8, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0xb

    add-int/lit8 v7, v5, 0x1

    const/4 v9, 0x2

    aput-byte v9, v8, v5

    add-int/lit8 v5, v7, 0x1

    shr-int/lit8 v9, v6, 0x8

    int-to-byte v9, v9

    aput-byte v9, v8, v7

    add-int/lit8 v7, v5, 0x1

    int-to-byte v9, v6

    aput-byte v9, v8, v5

    iget-object v5, p0, Lcom/b/x;->e:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v9, 0x0

    invoke-static {v5, v9, v8, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v8}, Le/d;->a([B)[B

    move-result-object v5

    array-length v6, v5

    add-int/lit8 v6, v6, 0x5

    new-array v6, v6, [B

    const/4 v7, 0x0

    const/16 v8, 0x3c

    aput-byte v8, v6, v7

    const/4 v7, 0x1

    array-length v8, v5

    shr-int/lit8 v8, v8, 0x18

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    const/4 v7, 0x2

    array-length v8, v5

    shr-int/lit8 v8, v8, 0x10

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    const/4 v7, 0x3

    array-length v8, v5

    shr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    const/4 v7, 0x4

    array-length v8, v5

    shr-int/lit8 v8, v8, 0x0

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x5

    array-length v9, v5

    invoke-static {v5, v7, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    add-int/lit8 v5, v5, 0x5

    new-instance v7, Lcom/c/b;

    invoke-direct {v7, v6, v5}, Lcom/c/b;-><init>([BI)V

    invoke-virtual {v7}, Lcom/c/b;->a()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v7}, Lcom/c/b;->b()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    goto/16 :goto_0

    :sswitch_1
    invoke-static {v7}, Le/d;->a([B)[B

    move-result-object v5

    new-instance v6, Lcom/c/b;

    array-length v7, v5

    invoke-direct {v6, v5, v7}, Lcom/c/b;-><init>([BI)V

    const-string v5, "Register "

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " ttype "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/c/b;->a()[B

    move-result-object v8

    const/4 v9, 0x0

    aget-byte v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/c/b;->a()[B

    move-result-object v5

    const/4 v7, 0x0

    aget-byte v5, v5, v7

    packed-switch v5, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_3
    new-instance v5, Lb/b;

    invoke-direct {v5, v6}, Lb/b;-><init>(Lcom/c/b;)V

    invoke-virtual {v5}, Lb/b;->a()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lcom/b/x;->a:I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v5}, Lb/b;->b()Lcom/c/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/c/b;->a()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5}, Lcom/c/b;->b()I

    move-result v5

    invoke-virtual {v4, v6, v7, v5}, Ljava/io/DataOutputStream;->write([BII)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {v6}, Lcom/c/b;->a()[B

    move-result-object v0

    const/16 v1, 0xa

    aget-byte v0, v0, v1

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    :cond_3
    const/4 v0, 0x1

    iput v0, p0, Lcom/b/x;->a:I

    const/4 v0, 0x1

    :goto_3
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x3

    iput v0, p0, Lcom/b/x;->a:I

    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    const/4 v0, 0x2

    iput v0, p0, Lcom/b/x;->a:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3c -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    const-string v1, "gb2312"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a(II)V
    .locals 1

    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/b/x;->m:I

    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lcom/b/x;->l:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/b/x;->e:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/b/x;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/b/x;->g:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/b/x;->k:Z

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/b/x;->b:Ljava/lang/String;

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/b/x;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/b/x;->i:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/b/x;->j:Ljava/lang/String;

    return-void
.end method

.method public final run()V
    .locals 9

    const/16 v8, 0x64

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v0, Ld/e;

    iget-object v1, p0, Lcom/b/x;->o:Landroid/content/Context;

    const v2, 0x7f070003

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "POST"

    invoke-direct {v0, v1, v2}, Ld/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lastName"

    iget-object v3, p0, Lcom/b/x;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/b/x;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "firstName"

    iget-object v3, p0, Lcom/b/x;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/b/x;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "appleId"

    iget-object v3, p0, Lcom/b/x;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/b/x;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "password"

    iget-object v3, p0, Lcom/b/x;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/b/x;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "verify-password"

    iget-object v3, p0, Lcom/b/x;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/b/x;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "passwordQuestion"

    iget-object v3, p0, Lcom/b/x;->h:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/b/x;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "customPasswordQuestion"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/b/x;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "passwordAnswer"

    iget-object v3, p0, Lcom/b/x;->i:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/b/x;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "birthMonth"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/b/x;->m:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/b/x;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "birthDay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/b/x;->l:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/b/x;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "countryCode"

    iget-object v3, p0, Lcom/b/x;->j:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/b/x;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "wantsAppleNews"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Lcom/b/x;->k:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/b/x;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/c/b;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v2, v3, v1}, Lcom/c/b;-><init>([BI)V

    iput-object v2, p0, Lcom/b/x;->c:Lcom/c/b;

    iget-object v1, p0, Lcom/b/x;->c:Lcom/c/b;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "User-Agent"

    const-string v4, "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/536.26.14 (KHTML, like Gecko)"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "x-protocol-version"

    const-string v4, "7"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "x-vc-ui-layout"

    const-string v4, "desktop-settings1"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Accept"

    const-string v4, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Origin"

    const-string v4, "https://service.ess.apple.com"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "X-MMe-Client-Info"

    const-string v4, "<Macmini5,1> <Mac OS X;10.8.2;12C54> <com.apple.iChat/7.0.1 (com.apple.iChat/7.0.1)>"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "x-vc-service"

    const-string v4, "Messenger"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "x-ds-client-id"

    const-string v4, "t:982450B522CC995FB3B2FBA6FAC184D5D590BCB1"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Referer"

    const-string v4, "https://service.ess.apple.com/WebObjects/VCProfileService.woa/wp/accountSetup"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Connection"

    const-string v4, "keep-alive"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Content-Length"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/b/x;->c:Lcom/c/b;

    invoke-virtual {v5}, Lcom/c/b;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Accept-Language"

    const-string v4, "en"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Accept-Encoding"

    const-string v4, "gzip, deflate"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Cookie"

    const-string v4, "vc_ap=0"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Proxy-Connection"

    const-string v4, "keep-alive"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ld/e;->a(Ljava/util/Map;)V

    invoke-virtual {v0, v6, v6}, Ld/e;->a(ZZ)V

    new-instance v2, Lcom/c/b;

    new-array v3, v8, [B

    invoke-direct {v2, v3, v8}, Lcom/c/b;-><init>([BI)V

    invoke-virtual {v0, v1, v2}, Ld/e;->a(Lcom/c/b;Lcom/c/b;)V

    invoke-virtual {v0}, Ld/e;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/c/b;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    invoke-virtual {v2}, Lcom/c/b;->a()[B

    move-result-object v0

    invoke-static {v0}, Le/e;->a([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Register res"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "appleIdInUseDialog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iput v7, p0, Lcom/b/x;->a:I

    iput-boolean v7, p0, Lcom/b/x;->d:Z

    :goto_0
    iget-boolean v0, p0, Lcom/b/x;->d:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/b/x;->a()Z

    iget v0, p0, Lcom/b/x;->a:I

    if-eq v0, v6, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lcom/b/x;->a:I

    :cond_0
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Register"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/b/x;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/b/x;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/b/x;->o:Landroid/content/Context;

    const-string v2, "Register"

    invoke-static {v1, v2, v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/b/x;->n:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/b/x;->a:I

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "msg"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lcom/b/x;->n:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    iput-boolean v6, p0, Lcom/b/x;->d:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/b/x;->a:I

    goto :goto_1
.end method
