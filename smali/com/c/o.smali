.class public final Lcom/c/o;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/ArrayList;

.field public static b:Ljava/util/ArrayList;


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/c/o;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/c/o;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/c/o;->a([Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/c/o;->a([Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/c/o;->a([Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/c/o;->a([Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/c/o;->a([Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private static a([Ljava/lang/String;Landroid/content/Context;)V
    .locals 13

    array-length v0, p0

    new-array v7, v0, [I

    array-length v0, p0

    new-array v8, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/c/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/c/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    aget-object v1, p0, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "drawable"

    const-string v4, "com.huluwa.imessage"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "array"

    const-string v4, "com.huluwa.imessage"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    const-string v1, ""

    aput-object v1, v8, v0

    const/4 v1, 0x0

    new-array v2, v1, [B

    const/4 v1, 0x0

    :goto_1
    array-length v3, v10

    if-lt v1, v3, :cond_1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    aput-object v1, v8, v0

    :goto_2
    if-nez v9, :cond_9

    const v1, 0x7f020383

    aput v1, v7, v0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget v3, v10, v1

    const/4 v4, 0x4

    new-array v5, v4, [B

    const/4 v4, 0x3

    shr-int/lit8 v6, v3, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    const/4 v4, 0x2

    shr-int/lit8 v6, v3, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    const/4 v4, 0x1

    shr-int/lit8 v6, v3, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    const/4 v4, 0x0

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v5, v4

    const/4 v4, 0x0

    array-length v3, v5

    mul-int/lit8 v3, v3, 0x2

    new-array v11, v3, [B

    array-length v3, v5

    if-lez v3, :cond_3

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v6, 0x0

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    const/4 v12, 0x1

    aget-byte v12, v5, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v6, v12

    const/4 v12, 0x2

    aget-byte v5, v5, v12

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v6

    const/16 v6, 0x80

    if-ge v5, v6, :cond_4

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v6, 0x0

    int-to-byte v5, v5

    aput-byte v5, v3, v6

    :cond_2
    :goto_4
    const/4 v5, 0x0

    move v6, v5

    :goto_5
    array-length v5, v3

    if-lt v6, v5, :cond_7

    :cond_3
    new-array v5, v4, [B

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {v11, v3, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v2

    array-length v4, v5

    add-int/2addr v3, v4

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v6, 0x0

    array-length v11, v2

    invoke-static {v2, v4, v3, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    array-length v2, v2

    array-length v6, v5

    invoke-static {v5, v4, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    move-object v2, v3

    goto/16 :goto_1

    :cond_4
    const/16 v6, 0x800

    if-ge v5, v6, :cond_5

    const/4 v3, 0x2

    new-array v3, v3, [B

    const/4 v6, 0x0

    shr-int/lit8 v12, v5, 0x6

    or-int/lit16 v12, v12, 0xc0

    int-to-byte v12, v12

    aput-byte v12, v3, v6

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v6

    goto :goto_4

    :cond_5
    const/high16 v6, 0x1

    if-ge v5, v6, :cond_6

    const/4 v3, 0x3

    new-array v3, v3, [B

    const/4 v6, 0x0

    shr-int/lit8 v12, v5, 0xc

    or-int/lit16 v12, v12, 0xe0

    int-to-byte v12, v12

    aput-byte v12, v3, v6

    const/4 v6, 0x1

    shr-int/lit8 v12, v5, 0x6

    and-int/lit8 v12, v12, 0x3f

    or-int/lit16 v12, v12, 0x80

    int-to-byte v12, v12

    aput-byte v12, v3, v6

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v6

    goto :goto_4

    :cond_6
    const/high16 v6, 0x11

    if-ge v5, v6, :cond_2

    const/4 v3, 0x4

    new-array v3, v3, [B

    const/4 v6, 0x0

    shr-int/lit8 v12, v5, 0x12

    or-int/lit16 v12, v12, 0xf0

    int-to-byte v12, v12

    aput-byte v12, v3, v6

    const/4 v6, 0x1

    shr-int/lit8 v12, v5, 0xc

    and-int/lit8 v12, v12, 0x3f

    or-int/lit16 v12, v12, 0x80

    int-to-byte v12, v12

    aput-byte v12, v3, v6

    const/4 v6, 0x2

    shr-int/lit8 v12, v5, 0x6

    and-int/lit8 v12, v12, 0x3f

    or-int/lit16 v12, v12, 0x80

    int-to-byte v12, v12

    aput-byte v12, v3, v6

    const/4 v6, 0x3

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v6

    goto/16 :goto_4

    :cond_7
    add-int/lit8 v5, v4, 0x1

    aget-byte v12, v3, v6

    aput-byte v12, v11, v4

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v5

    goto/16 :goto_5

    :cond_8
    const-string v1, ""

    aput-object v1, v8, v0

    goto/16 :goto_2

    :cond_9
    aput v9, v7, v0

    goto/16 :goto_3
.end method
