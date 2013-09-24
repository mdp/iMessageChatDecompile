.class public final Lcom/b/o;
.super Ljava/lang/Object;


# static fields
.field private static e:I


# instance fields
.field private a:Ljava/lang/String;

.field private b:[B

.field private c:[B

.field private d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    sput v0, Lcom/b/o;->e:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/o;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/b/o;->b:[B

    iput-object p3, p0, Lcom/b/o;->c:[B

    iput-object p4, p0, Lcom/b/o;->d:[B

    return-void
.end method


# virtual methods
.method public final a()Lcom/c/b;
    .locals 13

    const/4 v12, 0x7

    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/b/o;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v0, p0, Lcom/b/o;->c:[B

    array-length v5, v0

    iget-object v0, p0, Lcom/b/o;->d:[B

    array-length v6, v0

    iget-object v0, p0, Lcom/b/o;->b:[B

    array-length v7, v0

    add-int/lit8 v0, v4, 0x13

    add-int/2addr v0, v7

    add-int/2addr v0, v5

    add-int/2addr v0, v6

    new-array v8, v0, [B

    add-int/lit8 v0, v0, -0x5

    aput-byte v9, v8, v1

    const/4 v2, 0x1

    shr-int/lit8 v3, v0, 0x18

    int-to-byte v3, v3

    aput-byte v3, v8, v2

    shr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v8, v9

    const/4 v2, 0x3

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v8, v2

    int-to-byte v0, v0

    aput-byte v0, v8, v10

    aput-byte v10, v8, v11

    const/4 v0, 0x6

    aput-byte v9, v8, v0

    aput-byte v11, v8, v12

    const/16 v0, 0x8

    shl-int/lit8 v2, v4, 0x8

    int-to-byte v2, v2

    aput-byte v2, v8, v0

    const/16 v2, 0x9

    const/16 v0, 0xa

    int-to-byte v3, v4

    aput-byte v3, v8, v2

    iget-object v2, p0, Lcom/b/o;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    move v2, v0

    move v0, v1

    :goto_0
    if-lt v0, v4, :cond_0

    add-int/lit8 v0, v2, 0x1

    aput-byte v12, v8, v2

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v5, 0x8

    int-to-byte v3, v3

    aput-byte v3, v8, v0

    add-int/lit8 v0, v2, 0x1

    int-to-byte v3, v5

    aput-byte v3, v8, v2

    iget-object v2, p0, Lcom/b/o;->c:[B

    invoke-static {v2, v1, v8, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v5

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x8

    aput-byte v3, v8, v0

    add-int/lit8 v0, v2, 0x1

    shr-int/lit8 v3, v6, 0x8

    int-to-byte v3, v3

    aput-byte v3, v8, v2

    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, v6

    aput-byte v3, v8, v0

    iget-object v0, p0, Lcom/b/o;->d:[B

    invoke-static {v0, v1, v8, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, v2, v6

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x9

    aput-byte v3, v8, v0

    add-int/lit8 v0, v2, 0x1

    shr-int/lit8 v3, v7, 0x8

    int-to-byte v3, v3

    aput-byte v3, v8, v2

    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, v7

    aput-byte v3, v8, v0

    iget-object v0, p0, Lcom/b/o;->b:[B

    invoke-static {v0, v1, v8, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, v2, v7

    new-instance v1, Lcom/c/b;

    invoke-direct {v1, v8, v0}, Lcom/c/b;-><init>([BI)V

    return-object v1

    :cond_0
    add-int/lit8 v3, v2, 0x1

    aget-byte v10, v9, v0

    aput-byte v10, v8, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0
.end method

.method public final b()Lcom/c/b;
    .locals 13

    const/4 v12, 0x5

    const/4 v11, 0x4

    const/4 v3, 0x2

    const/4 v10, 0x1

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/b/o;->b:[B

    iget-object v0, p0, Lcom/b/o;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    array-length v6, v4

    iget-object v0, p0, Lcom/b/o;->c:[B

    array-length v7, v0

    iget-object v0, p0, Lcom/b/o;->d:[B

    array-length v8, v0

    add-int/lit8 v0, v5, 0x14

    add-int/2addr v0, v6

    add-int/2addr v0, v7

    add-int/2addr v0, v8

    new-array v9, v0, [B

    add-int/lit8 v0, v0, -0x5

    aput-byte v3, v9, v1

    shr-int/lit8 v2, v0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v9, v10

    shr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v9, v3

    const/4 v2, 0x3

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v9, v2

    int-to-byte v0, v0

    aput-byte v0, v9, v11

    aput-byte v11, v9, v12

    const/4 v0, 0x6

    aput-byte v10, v9, v0

    const/4 v0, 0x7

    aput-byte v10, v9, v0

    const/16 v0, 0x8

    aput-byte v12, v9, v0

    const/16 v0, 0x9

    shr-int/lit8 v2, v5, 0x8

    int-to-byte v2, v2

    aput-byte v2, v9, v0

    const/16 v2, 0xa

    const/16 v0, 0xb

    int-to-byte v3, v5

    aput-byte v3, v9, v2

    iget-object v2, p0, Lcom/b/o;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    move v2, v0

    move v0, v1

    :goto_0
    if-lt v0, v5, :cond_0

    add-int/lit8 v0, v2, 0x1

    const/4 v3, 0x6

    aput-byte v3, v9, v2

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v6, 0x8

    int-to-byte v3, v3

    aput-byte v3, v9, v0

    add-int/lit8 v0, v2, 0x1

    int-to-byte v3, v6

    aput-byte v3, v9, v2

    move v2, v0

    move v0, v1

    :goto_1
    if-lt v0, v6, :cond_1

    add-int/lit8 v0, v2, 0x1

    const/4 v3, 0x7

    aput-byte v3, v9, v2

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v7, 0x8

    int-to-byte v3, v3

    aput-byte v3, v9, v0

    add-int/lit8 v0, v2, 0x1

    int-to-byte v3, v7

    aput-byte v3, v9, v2

    iget-object v2, p0, Lcom/b/o;->c:[B

    invoke-static {v2, v1, v9, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v7

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x8

    aput-byte v3, v9, v0

    add-int/lit8 v0, v2, 0x1

    shr-int/lit8 v3, v8, 0x8

    int-to-byte v3, v3

    aput-byte v3, v9, v2

    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, v8

    aput-byte v3, v9, v0

    iget-object v0, p0, Lcom/b/o;->d:[B

    invoke-static {v0, v1, v9, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, v2, v8

    new-instance v1, Lcom/c/b;

    invoke-direct {v1, v9, v0}, Lcom/c/b;-><init>([BI)V

    return-object v1

    :cond_0
    add-int/lit8 v3, v2, 0x1

    aget-byte v11, v10, v0

    aput-byte v11, v9, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v2, 0x1

    aget-byte v5, v4, v0

    aput-byte v5, v9, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_1
.end method
