.class public final Lcom/b/ae;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/b/ad;

.field private b:Lcom/b/a;

.field private c:Lcom/b/c;


# direct methods
.method public constructor <init>(Lcom/b/ad;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/b/ae;->a:Lcom/b/ad;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Lcom/b/ae;->b:Lcom/b/a;

    iput-object v0, p0, Lcom/b/ae;->c:Lcom/b/c;

    return-void
.end method

.method private static a([BLjava/lang/String;Ljava/lang/String;)[B
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method private c()Z
    .locals 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v0, "SSL"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    sget-object v0, Le/c;->i:[B

    const-string v1, "-----BEGIN CERTIFICATE-----"

    const-string v5, "-----END CERTIFICATE-----"

    invoke-static {v0, v1, v5}, Lcom/b/ae;->a([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    const-string v5, "-----BEGIN RSA PRIVATE KEY-----"

    const-string v6, "-----END RSA PRIVATE KEY-----"

    invoke-static {v0, v5, v6}, Lcom/b/ae;->a([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, v5}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string v5, "RSA"

    const-string v6, "BC"

    invoke-static {v5, v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/RSAPrivateKey;

    const-string v5, "BKS"

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const-string v6, "cert-alias"

    invoke-virtual {v5, v6, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    const-string v6, "key-alias"

    const-string v7, "111111"

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/security/cert/Certificate;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-virtual {v5, v6, v1, v7, v8}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    const-string v0, "X509"

    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    const-string v1, "111111"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v1, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    iget-object v1, p0, Lcom/b/ae;->a:Lcom/b/ad;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-static {v1, v0}, Lcom/b/ad;->a(Lcom/b/ad;Ljavax/net/ssl/SSLSocket;)V

    new-instance v0, Ljava/net/InetSocketAddress;

    sget-object v1, Le/c;->g:Ljava/lang/String;

    sget v4, Le/c;->h:I

    invoke-direct {v0, v1, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/b/ae;->a:Lcom/b/ad;

    invoke-static {v1}, Lcom/b/ad;->a(Lcom/b/ad;)Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    const/16 v4, 0x2710

    invoke-virtual {v1, v0, v4}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "MySSLSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/b/a;
    .locals 1

    iget-object v0, p0, Lcom/b/ae;->b:Lcom/b/a;

    return-object v0
.end method

.method public final b()Lcom/b/c;
    .locals 1

    iget-object v0, p0, Lcom/b/ae;->c:Lcom/b/c;

    return-object v0
.end method

.method public final run()V
    .locals 5

    const/4 v4, 0x0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/b/ae;->a:Lcom/b/ad;

    invoke-static {v0}, Lcom/b/ad;->b(Lcom/b/ad;)Lcom/b/q;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/b/ae;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Apple"

    const-string v1, "link succ"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/b/a;

    iget-object v1, p0, Lcom/b/ae;->a:Lcom/b/ad;

    invoke-static {v1}, Lcom/b/ad;->c(Lcom/b/ad;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/b/ae;->b:Lcom/b/a;

    new-instance v0, Lcom/b/c;

    iget-object v1, p0, Lcom/b/ae;->a:Lcom/b/ad;

    invoke-static {v1}, Lcom/b/ad;->d(Lcom/b/ad;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/b/ae;->a:Lcom/b/ad;

    invoke-static {v2}, Lcom/b/ad;->e(Lcom/b/ad;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    iget-object v3, p0, Lcom/b/ae;->a:Lcom/b/ad;

    invoke-static {v3}, Lcom/b/ad;->c(Lcom/b/ad;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/c;-><init>(Ljava/util/ArrayList;Ljava/util/concurrent/locks/ReentrantLock;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/b/ae;->c:Lcom/b/c;

    iget-object v0, p0, Lcom/b/ae;->b:Lcom/b/a;

    iget-object v1, p0, Lcom/b/ae;->a:Lcom/b/ad;

    invoke-static {v1}, Lcom/b/ad;->b(Lcom/b/ad;)Lcom/b/q;

    move-result-object v1

    iget-object v2, p0, Lcom/b/ae;->a:Lcom/b/ad;

    invoke-static {v2}, Lcom/b/ad;->f(Lcom/b/ad;)Lcom/b/q;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/a;->a(Lcom/b/q;Lcom/b/q;)V

    iget-object v0, p0, Lcom/b/ae;->c:Lcom/b/c;

    iget-object v1, p0, Lcom/b/ae;->a:Lcom/b/ad;

    invoke-static {v1}, Lcom/b/ad;->b(Lcom/b/ad;)Lcom/b/q;

    move-result-object v1

    iget-object v2, p0, Lcom/b/ae;->a:Lcom/b/ad;

    invoke-static {v2}, Lcom/b/ad;->f(Lcom/b/ad;)Lcom/b/q;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/c;->a(Lcom/b/q;Lcom/b/q;)V

    iget-object v0, p0, Lcom/b/ae;->b:Lcom/b/a;

    iget-object v1, p0, Lcom/b/ae;->a:Lcom/b/ad;

    invoke-static {v1}, Lcom/b/ad;->a(Lcom/b/ad;)Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a;->a(Ljavax/net/ssl/SSLSocket;)V

    iget-object v0, p0, Lcom/b/ae;->c:Lcom/b/c;

    iget-object v1, p0, Lcom/b/ae;->a:Lcom/b/ad;

    invoke-static {v1}, Lcom/b/ad;->a(Lcom/b/ad;)Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/c;->a(Ljavax/net/ssl/SSLSocket;)V

    iget-object v0, p0, Lcom/b/ae;->b:Lcom/b/a;

    invoke-virtual {v0}, Lcom/b/a;->start()V

    iget-object v0, p0, Lcom/b/ae;->c:Lcom/b/c;

    invoke-virtual {v0}, Lcom/b/c;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const-wide/16 v0, 0x3e8

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    :try_start_2
    const-string v0, "apple"

    const-string v1, "wait service to start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/b/ae;->a:Lcom/b/ad;

    invoke-static {v1}, Lcom/b/ad;->f(Lcom/b/ad;)Lcom/b/q;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/b/q;->a(Lcom/c/j;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/b/ae;->a:Lcom/b/ad;

    invoke-static {v0}, Lcom/b/ad;->f(Lcom/b/ad;)Lcom/b/q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/b/q;->a(Lcom/c/j;)V

    const-string v0, "AppleServer"

    const-string v1, "Conect error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method
