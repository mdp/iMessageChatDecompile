.class public final Ld/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ld/p;

.field private h:Ld/s;

.field private i:Ld/r;

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 15

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v0, Ld/s;

    invoke-direct {v0}, Ld/s;-><init>()V

    iput-object v0, p0, Ld/i;->h:Ld/s;

    iget-object v0, p0, Ld/i;->h:Ld/s;

    iget-object v1, p0, Ld/i;->g:Ld/p;

    invoke-virtual {v1}, Ld/p;->c()Lcom/c/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/s;->a(Lcom/c/b;)Ljava/util/Map;

    move-result-object v7

    iget-object v0, p0, Ld/i;->h:Ld/s;

    new-instance v0, Lcom/c/b;

    new-array v1, v3, [B

    invoke-direct {v0, v1, v4}, Lcom/c/b;-><init>([BI)V

    const-string v0, "Range"

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "bytes="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x2d

    add-int/lit8 v5, v1, 0x6

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v8, v0, 0x1

    const-string v0, "Attach"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "st:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Range"

    invoke-interface {v7, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ld/i;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Ld/i;->h:Ld/s;

    invoke-virtual {v0}, Ld/s;->g()V

    move v5, v6

    :goto_0
    if-lt v5, v8, :cond_1

    :cond_0
    :goto_1
    const-string v0, "rec data"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "over:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int v2, v5, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ld/i;->h:Ld/s;

    invoke-virtual {v0}, Ld/s;->h()V

    iget-object v0, p0, Ld/i;->h:Ld/s;

    invoke-virtual {v0}, Ld/s;->c()V

    iget-object v0, p0, Ld/i;->h:Ld/s;

    sub-int v1, v5, v6

    invoke-virtual {v0, v1}, Ld/s;->a(I)V

    :try_start_1
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    if-ne v5, v8, :cond_5

    const-string v0, "GetFile"

    const-string v1, "Succ"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    :goto_3
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v0, v4

    goto :goto_3

    :cond_1
    const/4 v1, 0x0

    :try_start_2
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Ld/i;->h:Ld/s;

    invoke-virtual {v2}, Ld/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    iget-object v1, p0, Ld/i;->h:Ld/s;

    invoke-virtual {v1}, Ld/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
    :try_end_3
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    move-object v2, v0

    :goto_4
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bytes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Range"

    invoke-virtual {v2, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "GetFile"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "range:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const-string v1, "statusCode"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2

    const/16 v1, 0xce

    if-ne v0, v1, :cond_0

    :cond_2
    :try_start_5
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x1000

    new-array v10, v1, [B
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    move v1, v5

    :goto_6
    :try_start_6
    invoke-virtual {v0, v10}, Ljava/io/DataInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_4

    const-string v11, "http getData"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "bytes"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v1, v5

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    :goto_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v5, v1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v14, v0

    move-object v0, v1

    move-object v1, v14

    :goto_8
    invoke-virtual {v1}, Ljava/net/ProtocolException;->printStackTrace()V

    move-object v2, v0

    goto/16 :goto_4

    :catch_3
    move-exception v0

    move-object v14, v0

    move-object v0, v1

    move-object v1, v14

    :goto_9
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v2, v0

    goto/16 :goto_4

    :catch_4
    move-exception v0

    move-object v14, v0

    move-object v0, v1

    move-object v1, v14

    :goto_a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v0

    goto/16 :goto_4

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :cond_4
    :try_start_7
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move v5, v1

    goto/16 :goto_0

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :cond_5
    const-string v0, "GetFile"

    const-string v1, "Err"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    goto/16 :goto_3

    :catch_7
    move-exception v0

    move v1, v5

    goto :goto_7

    :catch_8
    move-exception v1

    goto :goto_a

    :catch_9
    move-exception v1

    goto :goto_9

    :catch_a
    move-exception v1

    goto :goto_8
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    iput-object p1, p0, Ld/i;->c:Ljava/lang/String;

    iput-object p2, p0, Ld/i;->d:Ljava/lang/String;

    iput-object p3, p0, Ld/i;->e:Ljava/lang/String;

    iput-object p4, p0, Ld/i;->f:Ljava/lang/String;

    iput p5, p0, Ld/i;->j:I

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/String;[B)Z
    .locals 10

    const/16 v5, 0x1f4

    const/16 v9, 0x64

    const/4 v8, 0x0

    const/4 v7, 0x1

    iput-object p1, p0, Ld/i;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/c/a;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ld/i;->a:Ljava/lang/String;

    iget-object v2, p0, Ld/i;->a:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".code"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld/i;->b:Ljava/lang/String;

    new-instance v0, Ld/p;

    invoke-direct {v0}, Ld/p;-><init>()V

    iput-object v0, p0, Ld/i;->g:Ld/p;

    new-instance v0, Ld/e;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Ld/i;->f:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/authorizeGet"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "POST"

    invoke-direct {v0, v1, v2}, Ld/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ld/i;->g:Ld/p;

    iget-object v2, p0, Ld/i;->d:Ljava/lang/String;

    iget-object v3, p0, Ld/i;->e:Ljava/lang/String;

    iget-object v4, p0, Ld/i;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Ld/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ld/i;->g:Ld/p;

    invoke-virtual {v1}, Ld/p;->b()Lcom/c/b;

    move-result-object v1

    new-instance v2, Lcom/c/b;

    new-array v3, v5, [B

    invoke-direct {v2, v3, v5}, Lcom/c/b;-><init>([BI)V

    invoke-virtual {v0, v1, v2}, Ld/e;->a(Lcom/c/b;Lcom/c/b;)V

    iget-object v1, p0, Ld/i;->g:Ld/p;

    invoke-virtual {v1}, Ld/p;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/e;->a(Ljava/util/Map;)V

    iget-object v1, p0, Ld/i;->g:Ld/p;

    invoke-virtual {v1}, Ld/p;->g()V

    invoke-virtual {v0, v7, v7}, Ld/e;->a(ZZ)V

    invoke-virtual {v0}, Ld/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AuthorizeGet"

    const-string v1, " Succ"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ld/i;->g:Ld/p;

    invoke-virtual {v0}, Ld/p;->h()V

    iget-object v0, p0, Ld/i;->g:Ld/p;

    invoke-virtual {v0, v2}, Ld/p;->a(Lcom/c/b;)V

    move v0, v7

    :goto_0
    if-eqz v0, :cond_2

    invoke-direct {p0}, Ld/i;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ld/r;

    invoke-direct {v0}, Ld/r;-><init>()V

    iput-object v0, p0, Ld/i;->i:Ld/r;

    iget-object v0, p0, Ld/i;->i:Ld/r;

    iget-object v1, p0, Ld/i;->h:Ld/s;

    invoke-virtual {v1}, Ld/s;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ld/i;->c:Ljava/lang/String;

    iget-object v3, p0, Ld/i;->h:Ld/s;

    invoke-virtual {v3}, Ld/s;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ld/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ld/i;->i:Ld/r;

    iget-object v1, p0, Ld/i;->h:Ld/s;

    invoke-virtual {v1}, Ld/s;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ld/i;->g:Ld/p;

    invoke-virtual {v2}, Ld/p;->i()J

    move-result-wide v2

    iget-object v4, p0, Ld/i;->h:Ld/s;

    invoke-virtual {v4}, Ld/s;->i()J

    move-result-wide v4

    iget-object v6, p0, Ld/i;->h:Ld/s;

    invoke-virtual {v6}, Ld/s;->f()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Ld/r;->a(Ljava/lang/String;JJI)V

    iget-object v0, p0, Ld/i;->i:Ld/r;

    invoke-virtual {v0}, Ld/r;->b()Lcom/c/b;

    move-result-object v0

    iget-object v1, p0, Ld/i;->i:Ld/r;

    invoke-virtual {v1}, Ld/r;->a()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ld/e;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Ld/i;->f:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/getComplete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "POST"

    invoke-direct {v2, v3, v4}, Ld/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ld/e;->a(Ljava/util/Map;)V

    invoke-virtual {v2, v8, v7}, Ld/e;->a(ZZ)V

    new-instance v1, Lcom/c/b;

    new-array v3, v9, [B

    invoke-direct {v1, v3, v9}, Lcom/c/b;-><init>([BI)V

    invoke-virtual {v2, v0, v1}, Ld/e;->a(Lcom/c/b;Lcom/c/b;)V

    iget-object v0, p0, Ld/i;->i:Ld/r;

    invoke-virtual {v0}, Ld/r;->g()V

    invoke-virtual {v2}, Ld/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GetComplete"

    const-string v1, "Succ"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ld/i;->i:Ld/r;

    invoke-virtual {v0}, Ld/r;->h()V

    iget-object v0, p0, Ld/i;->i:Ld/r;

    invoke-virtual {v0}, Ld/r;->c()V

    :goto_1
    iget-object v0, p0, Ld/i;->b:Ljava/lang/String;

    iget-object v1, p0, Ld/i;->a:Ljava/lang/String;

    invoke-static {p2, v0, v1}, Ld/d;->a([BLjava/lang/String;Ljava/lang/String;)V

    move v0, v7

    :goto_2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Ld/i;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return v0

    :cond_0
    const-string v0, "AuthorizeGet"

    const-string v1, " Err"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    goto/16 :goto_0

    :cond_1
    const-string v0, "GetComplete"

    const-string v1, "Err"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move v0, v8

    goto :goto_2
.end method
