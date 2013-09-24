.class public final Lcom/b/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/c/b;
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/16 v0, 0xa

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    aput-byte v5, v0, v4

    aput-byte v4, v0, v5

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    new-instance v1, Lcom/c/b;

    array-length v2, v0

    invoke-direct {v1, v0, v2}, Lcom/c/b;-><init>([BI)V

    return-object v1
.end method


# virtual methods
.method public final a(Lcom/c/b;)V
    .locals 9

    const/4 v8, 0x1

    const v7, 0xff00

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/c/b;->a()[B

    move-result-object v2

    const/4 v0, 0x6

    iput-boolean v6, p0, Lcom/b/p;->b:Z

    :goto_0
    invoke-virtual {p1}, Lcom/c/b;->b()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    if-nez v1, :cond_1

    iput-boolean v8, p0, Lcom/b/p;->a:Z

    goto :goto_0

    :cond_1
    iput-boolean v6, p0, Lcom/b/p;->a:Z

    goto :goto_0

    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v7

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    new-array v1, v0, [B

    invoke-static {v2, v3, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v3

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    sput-object v1, Le/c;->d:[B

    iput-boolean v8, p0, Lcom/b/p;->b:Z

    goto :goto_0

    :pswitch_3
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v7

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    new-array v1, v0, [B

    invoke-static {v2, v3, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v3

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "-----BEGIN RSA PRIVATE KEY-----"

    const-string v4, "-----END RSA PRIVATE KEY-----"

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    sput-object v1, Le/c;->c:[B

    goto :goto_0

    :pswitch_4
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v7

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    new-array v1, v0, [B

    invoke-static {v2, v3, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v1, Le/c;->f:[B

    add-int/2addr v0, v3

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Lcom/a/c;)V
    .locals 1

    iget-boolean v0, p0, Lcom/b/p;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p2, p1}, Lcom/a/c;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2, p1}, Lcom/a/c;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
