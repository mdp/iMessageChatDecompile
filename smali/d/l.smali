.class public final Ld/l;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field private b:I

.field private c:Lcom/c/b;

.field private d:J

.field private e:J

.field private f:I

.field private g:[B

.field private h:Lcom/c/b;

.field private i:Lcom/c/b;

.field private j:Lcom/c/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Ld/l;->g:[B

    return-void
.end method


# virtual methods
.method public final a()Lcom/c/b;
    .locals 1

    iget-object v0, p0, Ld/l;->j:Lcom/c/b;

    return-object v0
.end method

.method public final a(ILcom/c/b;)V
    .locals 6

    const/4 v5, 0x0

    iput p1, p0, Ld/l;->b:I

    iput-object p2, p0, Ld/l;->c:Lcom/c/b;

    iput-boolean v5, p0, Ld/l;->a:Z

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    :cond_0
    iget-object v1, p0, Ld/l;->g:[B

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    iget-object v1, p0, Ld/l;->g:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    iget-object v2, p0, Ld/l;->g:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget-object v2, p0, Ld/l;->g:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget-object v2, p0, Ld/l;->g:[B

    aget-byte v2, v2, v5

    or-int/2addr v1, v2

    int-to-long v1, v1

    iput-wide v1, p0, Ld/l;->d:J

    iget-wide v1, p0, Ld/l;->d:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    return-void
.end method

.method public final a(Lcom/c/b;)V
    .locals 8

    const/16 v7, 0x11

    const/4 v6, 0x0

    const v5, 0xff00

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/l;->a:Z

    iput v7, p0, Ld/l;->f:I

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

    iget-object v3, p0, Ld/l;->h:Lcom/c/b;

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

    const-string v2, "mR "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Ld/l;->i:Lcom/c/b;

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

    iget-object v3, p0, Ld/l;->j:Lcom/c/b;

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

    const/high16 v3, -0x100

    and-int/2addr v0, v3

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v4, 0xff

    and-int/2addr v1, v4

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

    iput-wide v3, p0, Ld/l;->e:J

    goto/16 :goto_0

    :pswitch_1
    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    if-nez v1, :cond_1

    iput v7, p0, Ld/l;->f:I

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x12

    iput v1, p0, Ld/l;->f:I

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

    invoke-static {v2, v3, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Lcom/c/b;

    invoke-direct {v4, v1, v0}, Lcom/c/b;-><init>([BI)V

    iput-object v4, p0, Ld/l;->h:Lcom/c/b;

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

    invoke-static {v2, v3, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Lcom/c/b;

    invoke-direct {v4, v1, v0}, Lcom/c/b;-><init>([BI)V

    iput-object v4, p0, Ld/l;->i:Lcom/c/b;

    add-int/2addr v0, v3

    goto/16 :goto_0

    :pswitch_5
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

    invoke-static {v2, v3, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Lcom/c/b;

    invoke-direct {v4, v1, v0}, Lcom/c/b;-><init>([BI)V

    iput-object v4, p0, Ld/l;->j:Lcom/c/b;

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
        :pswitch_5
    .end packed-switch
.end method

.method public final b()Lcom/c/b;
    .locals 1

    iget-object v0, p0, Ld/l;->h:Lcom/c/b;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ld/l;->i:Lcom/c/b;

    invoke-virtual {v1}, Lcom/c/b;->a()[B

    move-result-object v1

    iget-object v2, p0, Ld/l;->i:Lcom/c/b;

    invoke-virtual {v2}, Lcom/c/b;->b()I

    move-result v2

    invoke-direct {v0, v1, v4, v2}, Ljava/lang/String;-><init>([BII)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Ld/l;->j:Lcom/c/b;

    invoke-virtual {v2}, Lcom/c/b;->a()[B

    move-result-object v2

    iget-object v3, p0, Ld/l;->j:Lcom/c/b;

    invoke-virtual {v3}, Lcom/c/b;->b()I

    move-result v3

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([BII)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Ld/l;->e:J

    return-wide v0
.end method

.method public final e()Lcom/c/b;
    .locals 10

    const/16 v9, 0x10

    const/4 v8, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x4

    new-array v0, v9, [B

    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    aget-byte v1, v0, v8

    shl-int/lit8 v1, v1, 0x18

    aget-byte v2, v0, v5

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v0, v0, v7

    or-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Ld/l;->d:J

    iget-wide v0, p0, Ld/l;->d:J

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    iput-wide v0, p0, Ld/l;->d:J

    iget-object v0, p0, Ld/l;->c:Lcom/c/b;

    invoke-virtual {v0}, Lcom/c/b;->b()I

    move-result v0

    add-int/lit8 v1, v0, 0x1c

    new-array v2, v1, [B

    aput-byte v6, v2, v7

    const/4 v3, 0x1

    shr-int/lit8 v4, v1, 0x18

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    shr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v8

    shr-int/lit8 v1, v1, 0x0

    int-to-byte v1, v1

    aput-byte v1, v2, v6

    const/4 v1, 0x5

    aput-byte v6, v2, v1

    const/4 v1, 0x6

    const/4 v3, 0x5

    aput-byte v3, v2, v1

    const/4 v1, 0x7

    aput-byte v5, v2, v1

    const/16 v1, 0x8

    aput-byte v7, v2, v1

    const/16 v1, 0x9

    aput-byte v6, v2, v1

    const/16 v1, 0xa

    iget-wide v3, p0, Ld/l;->d:J

    const/16 v5, 0x18

    shr-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    const/16 v1, 0xb

    iget-wide v3, p0, Ld/l;->d:J

    shr-long/2addr v3, v9

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    const/16 v1, 0xc

    iget-wide v3, p0, Ld/l;->d:J

    const/16 v5, 0x8

    shr-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    const/16 v1, 0xd

    iget-wide v3, p0, Ld/l;->d:J

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    const/16 v1, 0xe

    aput-byte v8, v2, v1

    const/16 v1, 0xf

    aput-byte v7, v2, v1

    aput-byte v6, v2, v9

    const/16 v1, 0x11

    iget v3, p0, Ld/l;->b:I

    shr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    const/16 v1, 0x12

    iget v3, p0, Ld/l;->b:I

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    const/16 v1, 0x13

    iget v3, p0, Ld/l;->b:I

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    const/16 v1, 0x14

    iget v3, p0, Ld/l;->b:I

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    const/16 v1, 0x15

    aput-byte v6, v2, v1

    const/16 v1, 0x16

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    const/16 v1, 0x17

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    iget-object v1, p0, Ld/l;->c:Lcom/c/b;

    invoke-virtual {v1}, Lcom/c/b;->a()[B

    move-result-object v1

    const/16 v3, 0x18

    invoke-static {v1, v7, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x18

    new-instance v1, Lcom/c/b;

    invoke-direct {v1, v2, v0}, Lcom/c/b;-><init>([BI)V

    return-object v1
.end method
