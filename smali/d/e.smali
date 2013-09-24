.class public final Ld/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljavax/net/ssl/HttpsURLConnection;

.field private b:Lcom/c/b;

.field private c:Lcom/c/b;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/Map;

.field private j:Z

.field private k:Z

.field private l:Ljava/util/Map;

.field private m:Z

.field private n:I

.field private o:Lcom/b/r;

.field private p:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/e;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ld/e;->o:Lcom/b/r;

    iput-object p1, p0, Ld/e;->g:Ljava/lang/String;

    iput-object p2, p0, Ld/e;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Ld/e;->l:Ljava/util/Map;

    return-object v0
.end method

.method public final a(Lcom/c/b;Lcom/c/b;)V
    .locals 1

    iput-object p1, p0, Ld/e;->b:Lcom/c/b;

    iput-object p2, p0, Ld/e;->c:Lcom/c/b;

    const/4 v0, 0x3

    iput v0, p0, Ld/e;->f:I

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Ld/e;->i:Ljava/util/Map;

    return-void
.end method

.method public final a(ZZ)V
    .locals 0

    iput-boolean p1, p0, Ld/e;->j:Z

    iput-boolean p2, p0, Ld/e;->k:Z

    return-void
.end method

.method public final b()Z
    .locals 14

    const/4 v3, 0x1

    const/high16 v13, 0x3f80

    const/4 v2, 0x0

    invoke-static {}, Ld/n;->a()V

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Ld/e;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v0, p0, Ld/e;->a:Ljavax/net/ssl/HttpsURLConnection;

    iget-object v0, p0, Ld/e;->a:Ljavax/net/ssl/HttpsURLConnection;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    iget-object v0, p0, Ld/e;->a:Ljavax/net/ssl/HttpsURLConnection;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Ld/e;->a:Ljavax/net/ssl/HttpsURLConnection;

    iget-object v1, p0, Ld/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    iget-boolean v0, p0, Ld/e;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/e;->a:Ljavax/net/ssl/HttpsURLConnection;

    iget v1, p0, Ld/e;->n:I

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setChunkedStreamingMode(I)V

    :cond_0
    iget-object v0, p0, Ld/e;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Ld/e;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/e;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    :cond_1
    iget-boolean v0, p0, Ld/e;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Ld/e;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    :cond_2
    :try_start_1
    iget-object v0, p0, Ld/e;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    iget-object v0, p0, Ld/e;->o:Lcom/b/r;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ld/e;->o:Lcom/b/r;

    const/4 v1, 0x0

    iget v4, p0, Ld/e;->p:I

    const/high16 v5, 0x3f80

    invoke-interface {v0, v1, v4, v5}, Lcom/b/r;->a(IIF)V

    :cond_3
    iget-boolean v0, p0, Ld/e;->k:Z

    if-eqz v0, :cond_5

    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v0, p0, Ld/e;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget v0, p0, Ld/e;->f:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Ld/e;->b:Lcom/c/b;

    invoke-virtual {v0}, Lcom/c/b;->a()[B

    move-result-object v0

    const/4 v4, 0x0

    iget-object v5, p0, Ld/e;->b:Lcom/c/b;

    invoke-virtual {v5}, Lcom/c/b;->b()I

    move-result v5

    invoke-virtual {v1, v0, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V

    iget-object v0, p0, Ld/e;->o:Lcom/b/r;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ld/e;->o:Lcom/b/r;

    const/4 v4, 0x1

    iget v5, p0, Ld/e;->p:I

    const/high16 v6, 0x3f80

    invoke-interface {v0, v4, v5, v6}, Lcom/b/r;->a(IIF)V

    :cond_4
    :goto_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_5
    iget-object v0, p0, Ld/e;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const-string v1, "statusCode"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_a

    const/16 v1, 0xce

    if-eq v0, v1, :cond_a

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_a

    move v0, v2

    :goto_2
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/ProtocolException;->printStackTrace()V

    move v0, v2

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move v0, v2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v2

    goto :goto_2

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Ld/e;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v5, v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    :try_start_2
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Ld/e;->e:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x1000

    new-array v7, v0, [B

    move v0, v2

    :cond_8
    :goto_3
    invoke-virtual {v6, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_9

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v9, v8}, Ljava/io/DataOutputStream;->write([BII)V

    add-int/2addr v0, v8

    iget-object v8, p0, Ld/e;->o:Lcom/b/r;

    if-eqz v8, :cond_8

    iget-object v8, p0, Ld/e;->o:Lcom/b/r;

    const/4 v9, 0x1

    iget v10, p0, Ld/e;->p:I

    int-to-float v11, v0

    mul-float/2addr v11, v13

    long-to-float v12, v4

    div-float/2addr v11, v12

    invoke-interface {v8, v9, v10, v11}, Lcom/b/r;->a(IIF)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v2

    goto :goto_2

    :cond_9
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Ld/e;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ld/e;->l:Ljava/util/Map;

    iget-boolean v0, p0, Ld/e;->j:Z

    if-eqz v0, :cond_e

    new-instance v5, Ljava/io/DataInputStream;

    iget-object v0, p0, Ld/e;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iget v0, p0, Ld/e;->f:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_10

    iget-object v0, p0, Ld/e;->c:Lcom/c/b;

    invoke-virtual {v0}, Lcom/c/b;->a()[B

    move-result-object v0

    move-object v1, v0

    move v0, v2

    :cond_b
    :goto_4
    array-length v4, v1

    sub-int/2addr v4, v0

    invoke-virtual {v5, v1, v0, v4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_c

    add-int/2addr v0, v4

    array-length v4, v1

    if-lt v0, v4, :cond_b

    mul-int/lit8 v4, v0, 0x2

    new-array v4, v4, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v1, v6, v4, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v4

    goto :goto_4

    :cond_c
    iget-object v4, p0, Ld/e;->o:Lcom/b/r;

    if-eqz v4, :cond_d

    iget-object v4, p0, Ld/e;->o:Lcom/b/r;

    const/4 v6, 0x2

    iget v7, p0, Ld/e;->p:I

    const/high16 v8, 0x3f80

    invoke-interface {v4, v6, v7, v8}, Lcom/b/r;->a(IIF)V

    :cond_d
    iget-object v4, p0, Ld/e;->c:Lcom/c/b;

    invoke-virtual {v4, v1, v0}, Lcom/c/b;->a([BI)V

    :goto_5
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    :cond_e
    iget-object v0, p0, Ld/e;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    iget-object v0, p0, Ld/e;->o:Lcom/b/r;

    if-eqz v0, :cond_f

    iget-object v0, p0, Ld/e;->o:Lcom/b/r;

    const/4 v1, 0x3

    iget v4, p0, Ld/e;->p:I

    const/high16 v5, 0x3f80

    invoke-interface {v0, v1, v4, v5}, Lcom/b/r;->a(IIF)V

    :cond_f
    move v0, v3

    goto/16 :goto_2

    :cond_10
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ld/e;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x1000

    new-array v4, v0, [B

    move v0, v2

    :cond_11
    :goto_6
    invoke-virtual {v5, v4}, Ljava/io/DataInputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_12

    add-int/2addr v0, v8

    const/4 v9, 0x0

    invoke-virtual {v1, v4, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V

    iget-object v8, p0, Ld/e;->o:Lcom/b/r;

    if-eqz v8, :cond_11

    iget-object v8, p0, Ld/e;->o:Lcom/b/r;

    const/4 v9, 0x2

    iget v10, p0, Ld/e;->p:I

    int-to-float v11, v0

    mul-float/2addr v11, v13

    long-to-float v12, v6

    div-float/2addr v11, v12

    invoke-interface {v8, v9, v10, v11}, Lcom/b/r;->a(IIF)V

    goto :goto_6

    :cond_12
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5
.end method
