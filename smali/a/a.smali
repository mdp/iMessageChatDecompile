.class public final La/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Vector;

.field private b:Ljava/security/MessageDigest;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, La/a;->a:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, La/a;->b:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, La/a;->c:I

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Lcom/c/b;)Z
    .locals 4

    iget-object v0, p0, La/a;->b:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Lcom/c/b;->a()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/c/b;->b()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    iget v0, p0, La/a;->c:I

    invoke-virtual {p1}, Lcom/c/b;->b()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, La/a;->c:I

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, La/a;->c:I

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, La/a;->b:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    iget-object v3, p0, La/a;->b:Ljava/security/MessageDigest;

    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    const/16 v3, 0x20

    new-array v3, v3, [B

    aput-byte v1, v3, v0

    const/16 v4, 0x14

    invoke-static {v2, v0, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/c/b;

    const/16 v2, 0x15

    invoke-direct {v0, v3, v2}, Lcom/c/b;-><init>([BI)V

    new-instance v2, La/d;

    iget v3, p0, La/a;->c:I

    invoke-direct {v2, v0, v3}, La/d;-><init>(Lcom/c/b;I)V

    iget-object v0, p0, La/a;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_0
.end method

.method final c()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, La/a;->a:Ljava/util/Vector;

    return-object v0
.end method
