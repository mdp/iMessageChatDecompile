.class public final Lcom/b/z;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Z

.field private c:[B

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/b/z;->c:[B

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/b/z;->a:I

    return v0
.end method

.method public final a(Lcom/c/b;)V
    .locals 6

    const v5, 0xff00

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/z;->b:Z

    invoke-virtual {p1}, Lcom/c/b;->a()[B

    move-result-object v2

    const/4 v0, 0x7

    :goto_0
    invoke-virtual {p1}, Lcom/c/b;->b()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    sparse-switch v0, :sswitch_data_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v5

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/b/z;->c:[B

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v3

    goto :goto_0

    :sswitch_1
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

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v3

    int-to-long v3, v1

    iput-wide v3, p0, Lcom/b/z;->d:J

    goto :goto_0

    :sswitch_2
    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    iput v1, p0, Lcom/b/z;->a:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/b/z;->d:J

    return-wide v0
.end method

.method public final c()J
    .locals 4

    iget-object v0, p0, Lcom/b/z;->c:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/b/z;->c:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/b/z;->c:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/b/z;->c:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    or-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    return-wide v0
.end method
