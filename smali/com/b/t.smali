.class public final Lcom/b/t;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/b/t;->a:I

    iput-object p2, p0, Lcom/b/t;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/c/b;
    .locals 11

    const/16 v10, 0xe

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/b/t;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v2, v1, 0x10

    new-array v3, v2, [B

    add-int/lit8 v2, v2, -0x5

    aput-byte v10, v3, v6

    shr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, v3, v8

    shr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, v3, v9

    const/4 v4, 0x3

    shr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    shr-int/lit8 v2, v2, 0x0

    int-to-byte v2, v2

    aput-byte v2, v3, v7

    const/4 v2, 0x5

    aput-byte v7, v3, v2

    const/4 v2, 0x6

    aput-byte v8, v3, v2

    const/4 v2, 0x7

    aput-byte v6, v3, v2

    const/16 v2, 0x8

    aput-byte v7, v3, v2

    const/16 v2, 0x9

    iget v4, p0, Lcom/b/t;->a:I

    shr-int/lit8 v4, v4, 0x18

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    const/16 v2, 0xa

    iget v4, p0, Lcom/b/t;->a:I

    shr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    const/16 v2, 0xb

    iget v4, p0, Lcom/b/t;->a:I

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    const/16 v2, 0xc

    iget v4, p0, Lcom/b/t;->a:I

    shr-int/lit8 v4, v4, 0x0

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    const/16 v2, 0xd

    aput-byte v9, v3, v2

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v3, v10

    const/16 v2, 0xf

    shr-int/lit8 v4, v1, 0x0

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    const/16 v2, 0x10

    invoke-static {v0, v6, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/c/b;

    const/16 v1, 0x10

    invoke-direct {v0, v3, v1}, Lcom/c/b;-><init>([BI)V

    return-object v0
.end method
