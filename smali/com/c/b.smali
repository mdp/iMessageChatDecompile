.class public final Lcom/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:[B

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/c/b;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/c/b;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/c/b;->a:[B

    iget v0, p1, Lcom/c/b;->b:I

    iput v0, p0, Lcom/c/b;->b:I

    iget-object v0, p1, Lcom/c/b;->a:[B

    iget-object v1, p0, Lcom/c/b;->a:[B

    iget v2, p0, Lcom/c/b;->b:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/c/b;->a:[B

    iput p2, p0, Lcom/c/b;->b:I

    return-void
.end method


# virtual methods
.method public final a([BI)V
    .locals 0

    iput-object p1, p0, Lcom/c/b;->a:[B

    iput p2, p0, Lcom/c/b;->b:I

    return-void
.end method

.method public final a()[B
    .locals 1

    iget-object v0, p0, Lcom/c/b;->a:[B

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/c/b;->b:I

    return v0
.end method

.method public final c()V
    .locals 9

    const/16 v8, 0x61

    const/16 v7, 0x46

    const/16 v6, 0x41

    const/16 v5, 0x39

    const/16 v4, 0x30

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/c/b;->b:I

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/c/b;->b:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/c/b;->b:I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/c/b;->a:[B

    mul-int/lit8 v2, v0, 0x2

    aget-byte v2, v1, v2

    iget-object v1, p0, Lcom/c/b;->a:[B

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-byte v1, v1, v3

    if-lt v2, v4, :cond_3

    if-gt v2, v5, :cond_3

    add-int/lit8 v2, v2, -0x30

    :cond_1
    :goto_1
    if-lt v1, v4, :cond_5

    if-gt v1, v5, :cond_5

    add-int/lit8 v1, v1, -0x30

    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/c/b;->a:[B

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-lt v2, v8, :cond_4

    const/16 v3, 0x66

    if-gt v2, v3, :cond_4

    add-int/lit8 v2, v2, -0x61

    add-int/lit8 v2, v2, 0xa

    goto :goto_1

    :cond_4
    if-lt v2, v6, :cond_1

    if-gt v2, v7, :cond_1

    add-int/lit8 v2, v2, -0x41

    add-int/lit8 v2, v2, 0xa

    goto :goto_1

    :cond_5
    if-lt v1, v8, :cond_6

    const/16 v3, 0x66

    if-gt v1, v3, :cond_6

    add-int/lit8 v1, v1, -0x61

    add-int/lit8 v1, v1, 0xa

    goto :goto_2

    :cond_6
    if-lt v1, v6, :cond_2

    if-gt v1, v7, :cond_2

    add-int/lit8 v1, v1, -0x41

    add-int/lit8 v1, v1, 0xa

    goto :goto_2
.end method

.method public final d()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x9

    const/4 v1, 0x0

    iget v0, p0, Lcom/c/b;->b:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [B

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/c/b;->b:I

    if-lt v0, v3, :cond_0

    new-instance v0, Ljava/lang/String;

    iget v3, p0, Lcom/c/b;->b:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/c/b;->a:[B

    aget-byte v3, v3, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    if-ltz v3, :cond_1

    if-gt v3, v5, :cond_1

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v3, v3, 0x30

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    :goto_1
    iget-object v3, p0, Lcom/c/b;->a:[B

    aget-byte v3, v3, v0

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    if-ltz v3, :cond_2

    if-gt v3, v5, :cond_2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x30

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v3, v3, 0x61

    add-int/lit8 v3, v3, -0xa

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    goto :goto_1

    :cond_2
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x61

    add-int/lit8 v3, v3, -0xa

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    goto :goto_2
.end method
