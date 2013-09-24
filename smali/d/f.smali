.class public final Ld/f;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Ld/f;->a:I

    const/4 v0, 0x2

    sput v0, Ld/f;->b:I

    return-void
.end method

.method public static a(Lcom/c/b;)Ljava/util/Vector;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/c/b;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/c/b;->a()[B

    move-result-object v0

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    :goto_0
    if-gtz v1, :cond_0

    return-object v2

    :cond_0
    aget-byte v1, v0, v4

    invoke-static {v1}, Ld/f;->a(B)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-byte v0, v0, v4

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0xf

    invoke-static {p0}, Ld/f;->b(Lcom/c/b;)I

    move-result v1

    new-instance v3, Ld/g;

    invoke-direct {v3, v1, v0}, Ld/g;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p0}, Lcom/c/b;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/c/b;->a()[B

    move-result-object v0

    goto :goto_0

    :cond_1
    aget-byte v1, v0, v4

    invoke-static {v1}, Ld/f;->b(B)Z

    move-result v1

    if-eqz v1, :cond_2

    aget-byte v0, v0, v4

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0xf

    invoke-static {p0}, Ld/f;->c(Lcom/c/b;)Lcom/c/b;

    move-result-object v1

    new-instance v3, Ld/g;

    invoke-direct {v3, v1, v0}, Ld/g;-><init>(Lcom/c/b;I)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_2
    const-string v0, "protoBuf"

    const-string v1, "error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static a(Ljava/util/Vector;Lcom/c/b;)Ljava/util/Vector;
    .locals 4

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/c/b;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/c/b;->a()[B

    move-result-object v1

    if-gtz v0, :cond_0

    return-object p0

    :cond_0
    aget-byte v0, v1, v3

    invoke-static {v0}, Ld/f;->a(B)Z

    move-result v0

    if-eqz v0, :cond_1

    aget-byte v0, v1, v3

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0xf

    invoke-static {p1}, Ld/f;->b(Lcom/c/b;)I

    move-result v1

    new-instance v2, Ld/g;

    invoke-direct {v2, v1, v0}, Ld/g;-><init>(II)V

    invoke-virtual {p0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    aget-byte v0, v1, v3

    invoke-static {v0}, Ld/f;->b(B)Z

    move-result v0

    if-eqz v0, :cond_2

    aget-byte v0, v1, v3

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0xf

    invoke-static {p1}, Ld/f;->c(Lcom/c/b;)Lcom/c/b;

    move-result-object v1

    new-instance v2, Ld/g;

    invoke-direct {v2, v1, v0}, Ld/g;-><init>(Lcom/c/b;I)V

    invoke-virtual {p0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    const-string v0, "protoBuf"

    const-string v1, "error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static a(Lcom/c/b;II)V
    .locals 7

    const/4 v2, 0x0

    shl-int/lit8 v0, p1, 0x3

    and-int/lit8 v0, v0, 0x78

    sget v1, Ld/f;->a:I

    and-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    int-to-byte v3, v0

    const/16 v0, 0x64

    new-array v4, v0, [B

    move v1, v2

    :goto_0
    if-nez p2, :cond_0

    move v0, v1

    :goto_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Lcom/c/b;->b()I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v1, v1, 0x2

    new-array v5, v1, [B

    invoke-virtual {p0}, Lcom/c/b;->a()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/c/b;->b()I

    move-result v6

    invoke-static {v1, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lcom/c/b;->b()I

    move-result v6

    add-int/lit8 v1, v6, 0x1

    aput-byte v3, v5, v6

    move v3, v2

    :goto_2
    if-lt v3, v0, :cond_2

    invoke-virtual {p0, v5, v1}, Lcom/c/b;->a([BI)V

    return-void

    :cond_0
    and-int/lit8 v0, p2, 0x7f

    int-to-byte v5, v0

    shr-int/lit8 p2, p2, 0x7

    if-nez p2, :cond_1

    add-int/lit8 v0, v1, 0x1

    aput-byte v5, v4, v1

    goto :goto_1

    :cond_1
    or-int/lit16 v0, v5, 0x80

    int-to-byte v5, v0

    add-int/lit8 v0, v1, 0x1

    aput-byte v5, v4, v1

    move v1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v1, 0x1

    aget-byte v6, v4, v3

    aput-byte v6, v5, v1

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v2

    goto :goto_2
.end method

.method public static a(Lcom/c/b;ILcom/c/b;)V
    .locals 8

    const/4 v2, 0x0

    shl-int/lit8 v0, p1, 0x3

    and-int/lit8 v0, v0, 0x78

    sget v1, Ld/f;->b:I

    and-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    int-to-byte v4, v0

    const/16 v0, 0x64

    new-array v5, v0, [B

    invoke-virtual {p2}, Lcom/c/b;->b()I

    move-result v0

    move v1, v2

    :goto_0
    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2}, Lcom/c/b;->b()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/c/b;->b()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x2

    new-array v6, v1, [B

    invoke-virtual {p0}, Lcom/c/b;->a()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/c/b;->b()I

    move-result v3

    invoke-static {v1, v2, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lcom/c/b;->b()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    aput-byte v4, v6, v3

    move v4, v2

    :goto_2
    if-lt v4, v0, :cond_2

    invoke-virtual {p2}, Lcom/c/b;->b()I

    move-result v3

    invoke-virtual {p2}, Lcom/c/b;->a()[B

    move-result-object v4

    move v0, v1

    :goto_3
    if-lt v2, v3, :cond_3

    invoke-virtual {p0, v6, v0}, Lcom/c/b;->a([BI)V

    return-void

    :cond_0
    and-int/lit8 v3, v0, 0x7f

    int-to-byte v3, v3

    shr-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    aput-byte v3, v5, v1

    goto :goto_1

    :cond_1
    or-int/lit16 v3, v3, 0x80

    int-to-byte v6, v3

    add-int/lit8 v3, v1, 0x1

    aput-byte v6, v5, v1

    move v1, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v1, 0x1

    aget-byte v7, v5, v4

    aput-byte v7, v6, v1

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v0, 0x1

    aget-byte v5, v4, v2

    aput-byte v5, v6, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_3
.end method

.method private static a(B)Z
    .locals 2

    and-int/lit8 v0, p0, 0x7

    sget v1, Ld/f;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/c/b;)I
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/c/b;->a()[B

    move-result-object v6

    invoke-virtual {p0}, Lcom/c/b;->b()I

    move-result v7

    invoke-virtual {p0}, Lcom/c/b;->b()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    const/4 v2, 0x2

    aget-byte v0, v6, v0

    and-int/lit16 v0, v0, 0xff

    move v3, v1

    move v4, v2

    move v2, v0

    move v0, v1

    :goto_0
    and-int/lit16 v5, v2, 0x80

    if-nez v5, :cond_0

    shl-int v0, v2, v0

    or-int/2addr v0, v3

    sub-int v2, v7, v4

    invoke-static {v6, v4, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v1, v7, v4

    invoke-virtual {p0, v6, v1}, Lcom/c/b;->a([BI)V

    :goto_1
    return v0

    :cond_0
    and-int/lit16 v2, v2, 0x80

    shl-int/2addr v2, v0

    or-int/2addr v3, v2

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v2, v6, v4

    and-int/lit16 v2, v2, 0xff

    move v4, v5

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static b(B)Z
    .locals 2

    and-int/lit8 v0, p0, 0x7

    sget v1, Ld/f;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Lcom/c/b;)Lcom/c/b;
    .locals 9

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/c/b;->b()I

    move-result v5

    invoke-virtual {p0}, Lcom/c/b;->a()[B

    move-result-object v6

    if-lez v5, :cond_0

    const/4 v0, 0x1

    const/4 v2, 0x2

    aget-byte v0, v6, v0

    and-int/lit16 v0, v0, 0xff

    move v3, v0

    move v4, v1

    move v0, v2

    move v2, v1

    :goto_0
    and-int/lit16 v7, v3, 0x80

    if-nez v7, :cond_1

    shl-int v2, v3, v2

    or-int/2addr v4, v2

    add-int/lit8 v2, v4, 0x2

    new-array v7, v2, [B

    move v2, v0

    move v0, v1

    :goto_1
    if-lt v0, v4, :cond_2

    new-instance v0, Lcom/c/b;

    invoke-direct {v0, v7, v4}, Lcom/c/b;-><init>([BI)V

    sub-int v3, v5, v2

    invoke-static {v6, v2, v6, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v1, v5, v2

    invoke-virtual {p0, v6, v1}, Lcom/c/b;->a([BI)V

    :cond_0
    return-object v0

    :cond_1
    and-int/lit8 v3, v3, 0x7f

    shl-int/2addr v3, v2

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x7

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v6, v0

    and-int/lit16 v0, v0, 0xff

    move v8, v0

    move v0, v4

    move v4, v3

    move v3, v8

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v6, v2

    aput-byte v2, v7, v0

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_1
.end method
