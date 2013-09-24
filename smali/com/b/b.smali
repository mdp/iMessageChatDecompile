.class public final Lcom/b/b;
.super Ljava/lang/Object;


# direct methods
.method public static a([BI)Lcom/c/b;
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x6

    const/4 v0, 0x0

    :goto_0
    if-lt v1, p1, :cond_1

    if-nez v0, :cond_0

    new-instance v0, Lcom/c/b;

    const/4 v1, 0x1

    new-array v1, v1, [B

    invoke-direct {v0, v1, v4}, Lcom/c/b;-><init>([BI)V

    :cond_0
    return-object v0

    :cond_1
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    packed-switch v1, :pswitch_data_0

    move v1, v2

    goto :goto_0

    :pswitch_0
    add-int/lit8 v0, v2, 0x1

    aget-byte v1, p0, v2

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v1, v0

    new-array v3, v1, [B

    invoke-static {p0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/c/b;

    invoke-direct {v0, v3, v1}, Lcom/c/b;-><init>([BI)V

    add-int/2addr v1, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
