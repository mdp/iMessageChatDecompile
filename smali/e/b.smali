.class public final Le/b;
.super Ljava/lang/Object;


# direct methods
.method public static a([B)[B
    .locals 4

    array-length v0, p0

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-object v1

    :cond_0
    aget-byte v2, p0, v0

    shl-int/lit8 v3, v2, 0x4

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    aget-byte v2, v1, v0

    xor-int/lit8 v2, v2, -0x6

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static b([B)[B
    .locals 4

    array-length v0, p0

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-object v1

    :cond_0
    aget-byte v2, p0, v0

    xor-int/lit8 v2, v2, -0x6

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    aget-byte v2, v1, v0

    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v2, v2, 0xf0

    aget-byte v3, v1, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
