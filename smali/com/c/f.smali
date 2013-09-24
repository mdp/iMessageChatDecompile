.class public final Lcom/c/f;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BI)V
    .locals 5

    const v4, 0xff00

    const/4 v3, 0x0

    const/4 v0, 0x6

    :cond_0
    :goto_0
    if-lt v0, p1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v4

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    new-array v1, v0, [B

    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v2

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v2, Le/c;->m:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v4

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    new-array v1, v0, [B

    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v2

    sget-object v2, Le/c;->m:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v2, Le/c;->m:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v2, Le/c;->m:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
