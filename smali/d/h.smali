.class public final Ld/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/c/b;

.field private b:Lcom/c/b;

.field private c:Lcom/c/b;

.field private d:Lcom/c/b;

.field private e:[B

.field private f:J

.field private g:J

.field private h:J

.field private i:Z

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Ld/h;->e:[B

    return-void
.end method


# virtual methods
.method public final a()Lcom/c/b;
    .locals 1

    iget-object v0, p0, Ld/h;->d:Lcom/c/b;

    return-object v0
.end method

.method public final a(Lcom/c/b;)V
    .locals 10

    const/high16 v9, 0xff

    const/16 v8, 0x11

    const/4 v7, 0x0

    const/high16 v6, -0x100

    const v5, 0xff00

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/h;->i:Z

    iput v8, p0, Ld/h;->j:I

    const/4 v0, 0x7

    invoke-virtual {p1}, Lcom/c/b;->a()[B

    move-result-object v2

    :goto_0
    invoke-virtual {p1}, Lcom/c/b;->b()I

    move-result v1

    if-lt v0, v1, :cond_0

    const-string v0, "Attach In"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mA "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Ld/h;->c:Lcom/c/b;

    invoke-virtual {v3}, Lcom/c/b;->a()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Attach In"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mU "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Ld/h;->d:Lcom/c/b;

    invoke-virtual {v3}, Lcom/c/b;->a()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v6

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0x10

    and-int/2addr v1, v9

    or-int/2addr v0, v1

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v5

    or-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0x0

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v3

    int-to-long v3, v1

    iput-wide v3, p0, Ld/h;->g:J

    goto :goto_0

    :pswitch_1
    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v6

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0x10

    and-int/2addr v1, v9

    or-int/2addr v0, v1

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v5

    or-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0x0

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v3

    int-to-long v3, v1

    iput-wide v3, p0, Ld/h;->h:J

    goto/16 :goto_0

    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    if-nez v1, :cond_1

    iput v8, p0, Ld/h;->j:I

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x12

    iput v1, p0, Ld/h;->j:I

    goto/16 :goto_0

    :pswitch_3
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v5

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0x0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    new-array v1, v0, [B

    invoke-static {v2, v3, v1, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Lcom/c/b;

    invoke-direct {v4, v1, v0}, Lcom/c/b;-><init>([BI)V

    iput-object v4, p0, Ld/h;->c:Lcom/c/b;

    add-int/2addr v0, v3

    goto/16 :goto_0

    :pswitch_4
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v5

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0x0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    new-array v1, v0, [B

    invoke-static {v2, v3, v1, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Lcom/c/b;

    invoke-direct {v4, v1, v0}, Lcom/c/b;-><init>([BI)V

    iput-object v4, p0, Ld/h;->d:Lcom/c/b;

    add-int/2addr v0, v3

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Lcom/c/b;Lcom/c/b;)V
    .locals 6

    const/4 v5, 0x0

    iput-object p1, p0, Ld/h;->a:Lcom/c/b;

    iput-object p2, p0, Ld/h;->b:Lcom/c/b;

    iput-boolean v5, p0, Ld/h;->i:Z

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    :cond_0
    iget-object v1, p0, Ld/h;->e:[B

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    iget-object v1, p0, Ld/h;->e:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    iget-object v2, p0, Ld/h;->e:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget-object v2, p0, Ld/h;->e:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget-object v2, p0, Ld/h;->e:[B

    aget-byte v2, v2, v5

    or-int/2addr v1, v2

    int-to-long v1, v1

    iput-wide v1, p0, Ld/h;->f:J

    iget-wide v1, p0, Ld/h;->f:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    return-void
.end method

.method public final b()Lcom/c/b;
    .locals 1

    iget-object v0, p0, Ld/h;->c:Lcom/c/b;

    return-object v0
.end method

.method public final c()Lcom/c/b;
    .locals 13

    const/4 v12, 0x7

    const/4 v11, 0x3

    const/4 v8, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x4

    iget-object v0, p0, Ld/h;->b:Lcom/c/b;

    invoke-virtual {v0}, Lcom/c/b;->b()I

    move-result v0

    iget-object v1, p0, Ld/h;->a:Lcom/c/b;

    invoke-virtual {v1}, Lcom/c/b;->b()I

    move-result v1

    add-int/lit8 v2, v0, 0x11

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v1

    iget-object v3, p0, Ld/h;->b:Lcom/c/b;

    invoke-virtual {v3}, Lcom/c/b;->a()[B

    move-result-object v3

    iget-object v4, p0, Ld/h;->a:Lcom/c/b;

    invoke-virtual {v4}, Lcom/c/b;->a()[B

    move-result-object v4

    new-array v5, v2, [B

    aput-byte v9, v5, v10

    const/4 v6, 0x1

    shr-int/lit8 v7, v2, 0x18

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    shr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    aput-byte v6, v5, v8

    shr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    aput-byte v6, v5, v11

    shr-int/lit8 v2, v2, 0x0

    int-to-byte v2, v2

    aput-byte v2, v5, v9

    const/4 v2, 0x5

    aput-byte v9, v5, v2

    const/4 v2, 0x6

    aput-byte v12, v5, v2

    aput-byte v8, v5, v12

    const/16 v2, 0x8

    aput-byte v10, v5, v2

    const/16 v2, 0x9

    aput-byte v9, v5, v2

    const/16 v2, 0xa

    iget-wide v6, p0, Ld/h;->f:J

    const/16 v8, 0x18

    shr-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    const/16 v2, 0xb

    iget-wide v6, p0, Ld/h;->f:J

    const/16 v8, 0x10

    shr-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    const/16 v2, 0xc

    iget-wide v6, p0, Ld/h;->f:J

    const/16 v8, 0x8

    shr-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    const/16 v2, 0xd

    iget-wide v6, p0, Ld/h;->f:J

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    const/16 v2, 0xe

    aput-byte v11, v5, v2

    const/16 v2, 0xf

    shr-int/lit8 v6, v0, 0x8

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    const/16 v2, 0x10

    int-to-byte v6, v0

    aput-byte v6, v5, v2

    const/16 v2, 0x11

    invoke-static {v3, v10, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x11

    add-int/lit8 v2, v0, 0x1

    aput-byte v9, v5, v0

    add-int/lit8 v0, v2, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, v1

    aput-byte v3, v5, v0

    invoke-static {v4, v10, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, v2, v1

    new-instance v1, Lcom/c/b;

    invoke-direct {v1, v5, v0}, Lcom/c/b;-><init>([BI)V

    return-object v1
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Ld/h;->i:Z

    return v0
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Ld/h;->g:J

    return-wide v0
.end method
