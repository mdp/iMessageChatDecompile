.class public final Le/a;
.super Ljava/lang/Object;


# direct methods
.method public static a()V
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Le/c;->a:[B

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sget-object v1, Le/c;->a:[B

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    const/4 v0, 0x0

    sput-object v0, Le/c;->n:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
    .end array-data
.end method

.method public static a([B)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x7

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    aget-byte v1, p0, v1

    or-int/2addr v0, v1

    new-array v1, v0, [B

    const/16 v2, 0x9

    invoke-static {p0, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v0, "Authentication"

    const-string v2, " Rec rsa key"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "-----BEGIN PUBLIC KEY-----"

    const-string v2, "-----END PUBLIC KEY-----"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    sput-object v0, Le/c;->b:[B

    return-void
.end method

.method public static a([BI)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x6

    move v2, v0

    move v0, v1

    :goto_0
    if-lt v2, p1, :cond_0

    return v0

    :cond_0
    const-string v3, "Auth_Result"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    packed-switch v2, :pswitch_data_0

    move v2, v3

    goto :goto_0

    :pswitch_0
    add-int/lit8 v0, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_1

    const-string v0, "Authentication"

    const-string v3, " Authentication Succ"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "Authentication"

    const-string v3, " Authentication Error"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :pswitch_1
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v3

    new-array v3, v2, [B

    invoke-static {p0, v4, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v4

    sput-object v3, Le/c;->e:[B

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static b()Lcom/c/b;
    .locals 5

    const/4 v4, 0x7

    const/4 v3, 0x4

    const/4 v2, 0x1

    new-array v0, v4, [B

    const/4 v1, 0x0

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    aput-byte v1, v0, v3

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v2, v0, v1

    new-instance v1, Lcom/c/b;

    invoke-direct {v1, v0, v4}, Lcom/c/b;-><init>([BI)V

    return-object v1
.end method

.method public static c()Lcom/c/b;
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Le/c;->a:[B

    sget-object v2, Le/c;->b:[B

    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    const-string v3, "RSA/NONE/OAEPPadding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    array-length v4, v1

    invoke-virtual {v3, v1, v2, v4}, Ljavax/crypto/Cipher;->doFinal([BII)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    array-length v1, v0

    add-int/lit8 v1, v1, 0x4

    array-length v2, v0

    add-int/lit8 v2, v2, 0x9

    new-array v3, v2, [B

    aput-byte v5, v3, v6

    shr-int/lit8 v4, v1, 0x18

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    const/4 v4, 0x2

    shr-int/lit8 v5, v1, 0x10

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    shr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v3, v7

    shr-int/lit8 v1, v1, 0x0

    int-to-byte v1, v1

    aput-byte v1, v3, v8

    const/4 v1, 0x5

    aput-byte v8, v3, v1

    const/4 v1, 0x6

    aput-byte v7, v3, v1

    const/4 v1, 0x7

    array-length v4, v0

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    const/16 v1, 0x8

    array-length v4, v0

    shr-int/lit8 v4, v4, 0x0

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    const/16 v1, 0x9

    array-length v4, v0

    invoke-static {v0, v6, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/c/b;

    invoke-direct {v0, v3, v2}, Lcom/c/b;-><init>([BI)V

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
