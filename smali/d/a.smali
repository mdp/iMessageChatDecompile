.class public final Ld/a;
.super Lorg/apache/http/entity/InputStreamEntity;


# instance fields
.field public a:I

.field private b:Lcom/c/b;

.field private c:Lcom/b/r;

.field private d:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>(Ljava/io/FileInputStream;JLcom/c/b;Lcom/b/r;)V
    .locals 2

    invoke-virtual {p4}, Lcom/c/b;->b()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p2

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    invoke-virtual {p4}, Lcom/c/b;->b()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p2

    long-to-int v0, v0

    iput v0, p0, Ld/a;->a:I

    iput-object p4, p0, Ld/a;->b:Lcom/c/b;

    iput-object p5, p0, Ld/a;->c:Lcom/b/r;

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Ld/a;->d:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Ld/a;)Ljava/security/MessageDigest;
    .locals 1

    iget-object v0, p0, Ld/a;->d:Ljava/security/MessageDigest;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ld/a;->d:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "putFile md5"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 6

    new-instance v0, Ld/b;

    iget-object v3, p0, Ld/a;->b:Lcom/c/b;

    iget-object v4, p0, Ld/a;->c:Lcom/b/r;

    iget v5, p0, Ld/a;->a:I

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ld/b;-><init>(Ld/a;Ljava/io/OutputStream;Lcom/c/b;Lcom/b/r;I)V

    invoke-super {p0, v0}, Lorg/apache/http/entity/InputStreamEntity;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
