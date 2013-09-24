.class public final La/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/security/MessageDigest;

.field private b:Lcom/c/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, La/b;->a:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "com.apple.XattrObjectSalt"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aput-byte v4, v1, v0

    iget-object v0, p0, La/b;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    const-string v0, "com.apple.DataObjectSalt"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aput-byte v4, v1, v0

    iget-object v0, p0, La/b;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Lcom/c/b;)Z
    .locals 4

    iget-object v0, p0, La/b;->a:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Lcom/c/b;->a()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/c/b;->b()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, La/b;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/16 v1, 0x20

    new-array v1, v1, [B

    aput-byte v3, v1, v4

    const/16 v2, 0x14

    invoke-static {v0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/c/b;

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/c/b;-><init>([BI)V

    iput-object v0, p0, La/b;->b:Lcom/c/b;

    return v3
.end method

.method public final c()Lcom/c/b;
    .locals 1

    iget-object v0, p0, La/b;->b:Lcom/c/b;

    return-object v0
.end method
