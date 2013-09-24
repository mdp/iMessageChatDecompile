.class public final Ld/m;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/c/b;

.field private b:Ljava/lang/String;

.field private c:Ld/q;

.field private d:Ld/v;

.field private e:Ld/u;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/Vector;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Lcom/b/r;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v10, 0x1

    const/high16 v11, 0x3f80

    const/4 v9, 0x0

    new-instance v0, Ld/u;

    invoke-direct {v0}, Ld/u;-><init>()V

    iput-object v0, p0, Ld/m;->e:Ld/u;

    iget-object v0, p0, Ld/m;->e:Ld/u;

    iget-object v1, p0, Ld/m;->d:Ld/v;

    invoke-virtual {v1}, Ld/v;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ld/m;->f:Ljava/lang/String;

    iget-object v3, p0, Ld/m;->d:Ld/v;

    invoke-virtual {v3}, Ld/v;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ld/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ld/m;->e:Ld/u;

    iget-object v1, p0, Ld/m;->d:Ld/v;

    invoke-virtual {v1}, Ld/v;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ld/m;->d:Ld/v;

    invoke-virtual {v2}, Ld/v;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ld/m;->d:Ld/v;

    invoke-virtual {v3}, Ld/v;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ld/m;->c:Ld/q;

    invoke-virtual {v4}, Ld/q;->i()J

    move-result-wide v4

    iget-object v6, p0, Ld/m;->d:Ld/v;

    invoke-virtual {v6}, Ld/v;->i()J

    move-result-wide v6

    iget v8, p0, Ld/m;->l:I

    invoke-virtual/range {v0 .. v8}, Ld/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)V

    iget-object v0, p0, Ld/m;->e:Ld/u;

    invoke-virtual {v0}, Ld/u;->b()Lcom/c/b;

    move-result-object v2

    iget-object v0, p0, Ld/m;->e:Ld/u;

    invoke-virtual {v0}, Ld/u;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Ld/m;->c()Lorg/apache/http/client/HttpClient;

    move-result-object v3

    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v5, p0, Ld/m;->b:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/putComplete"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Lcom/c/b;->b()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v2}, Lcom/c/b;->a()[B

    move-result-object v1

    invoke-virtual {v2}, Lcom/c/b;->b()I

    move-result v2

    invoke-static {v1, v9, v0, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v1, v10}, Lorg/apache/http/entity/ByteArrayEntity;->setChunked(Z)V

    invoke-virtual {v4, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    const/4 v0, 0x0

    iget-object v1, p0, Ld/m;->e:Ld/u;

    invoke-virtual {v1}, Ld/u;->g()V

    :try_start_0
    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    if-nez v0, :cond_1

    :goto_2
    return v9

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    const/16 v2, 0xce

    if-ne v1, v2, :cond_7

    :cond_2
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz v2, :cond_3

    move v0, v9

    :goto_3
    array-length v4, v2

    if-lt v0, v4, :cond_6

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    :try_start_1
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    new-instance v1, Lcom/c/b;

    long-to-int v2, v2

    invoke-direct {v1, v0, v2}, Lcom/c/b;-><init>([BI)V

    iget-object v0, p0, Ld/m;->e:Ld/u;

    invoke-virtual {v0}, Ld/u;->c()V
    :try_end_1
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_4
    :goto_4
    iget-object v0, p0, Ld/m;->m:Lcom/b/r;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ld/m;->m:Lcom/b/r;

    invoke-interface {v0, v13, v12, v11}, Lcom/b/r;->a(IIF)V

    :cond_5
    iget-object v0, p0, Ld/m;->e:Ld/u;

    invoke-virtual {v0}, Ld/u;->h()V

    const-string v0, "PutComplete"

    const-string v1, "Succ"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    goto :goto_2

    :cond_6
    aget-object v4, v2, v0

    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/http/ParseException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Ld/m;->e:Ld/u;

    invoke-virtual {v0}, Ld/u;->h()V

    iget-object v0, p0, Ld/m;->m:Lcom/b/r;

    if-eqz v0, :cond_8

    iget-object v0, p0, Ld/m;->m:Lcom/b/r;

    invoke-interface {v0, v13, v12, v11}, Lcom/b/r;->a(IIF)V

    :cond_8
    const-string v0, "PutComplete"

    const-string v1, "Err"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private b()Z
    .locals 13

    const/16 v12, 0xc9

    const/16 v11, 0xc8

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v0, Ld/v;

    invoke-direct {v0}, Ld/v;-><init>()V

    iput-object v0, p0, Ld/m;->d:Ld/v;

    iget-object v0, p0, Ld/m;->d:Ld/v;

    iget-object v1, p0, Ld/m;->i:Ljava/util/Vector;

    iget-object v2, p0, Ld/m;->a:Lcom/c/b;

    invoke-virtual {v0, v1, v2}, Ld/v;->a(Ljava/util/Vector;Lcom/c/b;)V

    iget-object v0, p0, Ld/m;->d:Ld/v;

    invoke-virtual {v0}, Ld/v;->j()Lcom/c/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/c/b;->b()I

    move-result v0

    iget v1, p0, Ld/m;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Ld/m;->l:I

    iget-object v0, p0, Ld/m;->d:Ld/v;

    iget-object v1, p0, Ld/m;->c:Ld/q;

    invoke-virtual {v1}, Ld/q;->c()Lcom/c/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/v;->a(Lcom/c/b;)Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Ld/m;->c()Lorg/apache/http/client/HttpClient;

    move-result-object v9

    iget-object v1, p0, Ld/m;->d:Ld/v;

    invoke-virtual {v1}, Ld/v;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PUT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v10, Lorg/apache/http/client/methods/HttpPut;

    iget-object v1, p0, Ld/m;->d:Ld/v;

    invoke-virtual {v1}, Ld/v;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ld/m;->d:Ld/v;

    invoke-virtual {v0}, Ld/v;->g()V

    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Ld/m;->k:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Ld/a;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v5, p0, Ld/m;->m:Lcom/b/r;

    invoke-direct/range {v0 .. v5}, Ld/a;-><init>(Ljava/io/FileInputStream;JLcom/c/b;Lcom/b/r;)V

    invoke-virtual {v10, v0}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    :try_start_1
    invoke-interface {v9, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v6

    :goto_2
    if-nez v6, :cond_2

    :cond_0
    :goto_3
    return v7

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v1, v6

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_2
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const-string v2, "Put File"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resCode = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ld/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld/m;->n:Ljava/lang/String;

    if-eq v1, v12, :cond_3

    if-ne v1, v11, :cond_0

    :cond_3
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz v2, :cond_4

    move v0, v7

    :goto_4
    array-length v4, v2

    if-lt v0, v4, :cond_6

    iget-object v0, p0, Ld/m;->d:Ld/v;

    iget-object v2, p0, Ld/m;->n:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ld/v;->a(Ljava/util/Map;Ljava/lang/String;)Z

    :cond_4
    const-string v2, ""

    iget-object v0, p0, Ld/m;->d:Ld/v;

    invoke-virtual {v0}, Ld/v;->h()V

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    :try_start_2
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    new-instance v1, Lcom/c/b;

    long-to-int v3, v3

    invoke-direct {v1, v0, v3}, Lcom/c/b;-><init>([BI)V

    iget-object v0, p0, Ld/m;->d:Ld/v;

    invoke-virtual {v0}, Ld/v;->k()V
    :try_end_2
    .catch Lorg/apache/http/ParseException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_5
    :goto_5
    const-string v0, "res"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " data:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    goto/16 :goto_3

    :cond_6
    aget-object v4, v2, v0

    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "putFile resheader"

    new-instance v5, Ljava/lang/StringBuilder;

    aget-object v6, v2, v0

    invoke-interface {v6}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v0

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/http/ParseException;->printStackTrace()V

    goto :goto_5

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :cond_7
    new-instance v10, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Ld/m;->d:Ld/v;

    invoke-virtual {v1}, Ld/v;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Ld/m;->d:Ld/v;

    invoke-virtual {v0}, Ld/v;->g()V

    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Ld/m;->k:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_3
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5

    :goto_7
    new-instance v0, Ld/a;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v5, p0, Ld/m;->m:Lcom/b/r;

    invoke-direct/range {v0 .. v5}, Ld/a;-><init>(Ljava/io/FileInputStream;JLcom/c/b;Lcom/b/r;)V

    invoke-virtual {v10, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :try_start_4
    invoke-interface {v9, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    move-result-object v6

    :goto_8
    if-eqz v6, :cond_0

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const-string v2, "Put File"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resCode = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ld/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld/m;->n:Ljava/lang/String;

    if-eq v1, v12, :cond_8

    if-ne v1, v11, :cond_0

    :cond_8
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz v1, :cond_9

    :goto_9
    array-length v3, v1

    if-lt v7, v3, :cond_c

    iget-object v1, p0, Ld/m;->d:Ld/v;

    iget-object v3, p0, Ld/m;->n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ld/v;->a(Ljava/util/Map;Ljava/lang/String;)Z

    :cond_9
    const-string v1, ""

    iget-object v2, p0, Ld/m;->d:Ld/v;

    invoke-virtual {v2}, Ld/v;->h()V

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    :try_start_5
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    new-instance v4, Lcom/c/b;

    long-to-int v2, v2

    invoke-direct {v4, v0, v2}, Lcom/c/b;-><init>([BI)V

    iget-object v0, p0, Ld/m;->d:Ld/v;

    invoke-virtual {v0}, Ld/v;->k()V
    :try_end_5
    .catch Lorg/apache/http/ParseException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    :cond_a
    :goto_a
    const-string v0, "res"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " data:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    goto/16 :goto_3

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v1, v6

    goto/16 :goto_7

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto/16 :goto_8

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    :cond_c
    aget-object v3, v1, v7

    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v1, v7

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "putFile resheader"

    new-instance v4, Ljava/lang/StringBuilder;

    aget-object v5, v1, v7

    invoke-interface {v5}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v7

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_9

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/http/ParseException;->printStackTrace()V

    goto/16 :goto_a

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a
.end method

.method private static c()Lorg/apache/http/client/HttpClient;
    .locals 7

    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    new-instance v1, Ld/j;

    invoke-direct {v1, v0}, Ld/j;-><init>(Ljava/security/KeyStore;)V

    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v1, v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v0, "UTF-8"

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v1, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0
.end method

.method private d()Z
    .locals 10

    const/4 v9, 0x3

    const/4 v3, 0x1

    const/high16 v8, 0x3f80

    const/4 v2, 0x0

    new-instance v0, Ld/q;

    invoke-direct {v0}, Ld/q;-><init>()V

    iput-object v0, p0, Ld/m;->c:Ld/q;

    iget-object v0, p0, Ld/m;->c:Ld/q;

    iget-object v1, p0, Ld/m;->i:Ljava/util/Vector;

    iget-object v4, p0, Ld/m;->a:Lcom/c/b;

    invoke-virtual {v0, v1, v4}, Ld/q;->a(Ljava/util/Vector;Lcom/c/b;)V

    iget-object v0, p0, Ld/m;->c:Ld/q;

    iget-object v1, p0, Ld/m;->g:Ljava/lang/String;

    iget-object v4, p0, Ld/m;->f:Ljava/lang/String;

    iget-object v5, p0, Ld/m;->h:Ljava/lang/String;

    iget v6, p0, Ld/m;->j:I

    invoke-virtual {v0, v1, v4, v5, v6}, Ld/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Ld/m;->c:Ld/q;

    invoke-virtual {v0}, Ld/q;->b()Lcom/c/b;

    move-result-object v4

    iget-object v0, p0, Ld/m;->c:Ld/q;

    invoke-virtual {v0}, Ld/q;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Ld/m;->c()Lorg/apache/http/client/HttpClient;

    move-result-object v5

    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v7, p0, Ld/m;->b:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/authorizePut"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v4}, Lcom/c/b;->b()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v4}, Lcom/c/b;->a()[B

    move-result-object v1

    invoke-virtual {v4}, Lcom/c/b;->b()I

    move-result v4

    invoke-static {v1, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v1, v3}, Lorg/apache/http/entity/ByteArrayEntity;->setChunked(Z)V

    invoke-virtual {v6, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    const/4 v0, 0x0

    iget-object v1, p0, Ld/m;->c:Ld/q;

    invoke-virtual {v1}, Ld/q;->g()V

    :try_start_0
    invoke-interface {v5, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    if-nez v0, :cond_1

    :goto_2
    return v2

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const-string v4, "Login"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "resCode = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xc8

    if-eq v1, v4, :cond_2

    const/16 v4, 0xce

    if-ne v1, v4, :cond_7

    :cond_2
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    if-eqz v4, :cond_3

    move v0, v2

    :goto_3
    array-length v6, v4

    if-lt v0, v6, :cond_6

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    :try_start_1
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    new-instance v1, Lcom/c/b;

    array-length v4, v0

    invoke-direct {v1, v0, v4}, Lcom/c/b;-><init>([BI)V

    iget-object v0, p0, Ld/m;->c:Ld/q;

    invoke-virtual {v0, v1}, Ld/q;->a(Lcom/c/b;)V
    :try_end_1
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_4
    :goto_4
    iget-object v0, p0, Ld/m;->m:Lcom/b/r;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ld/m;->m:Lcom/b/r;

    invoke-interface {v0, v9, v2, v8}, Lcom/b/r;->a(IIF)V

    :cond_5
    iget-object v0, p0, Ld/m;->c:Ld/q;

    invoke-virtual {v0}, Ld/q;->h()V

    const-string v0, "AuthorizePut"

    const-string v1, "Succ"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto/16 :goto_2

    :cond_6
    aget-object v6, v4, v0

    invoke-interface {v6}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    aget-object v7, v4, v0

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/http/ParseException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Ld/m;->c:Ld/q;

    invoke-virtual {v0}, Ld/q;->h()V

    iget-object v0, p0, Ld/m;->m:Lcom/b/r;

    if-eqz v0, :cond_8

    iget-object v0, p0, Ld/m;->m:Lcom/b/r;

    invoke-interface {v0, v9, v2, v8}, Lcom/b/r;->a(IIF)V

    :cond_8
    const-string v0, "AuthorizePut"

    const-string v1, "Err"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method


# virtual methods
.method public final a(Lcom/b/r;)V
    .locals 0

    iput-object p1, p0, Ld/m;->m:Lcom/b/r;

    return-void
.end method

.method public final a(Ljava/util/Vector;Lcom/c/b;)V
    .locals 0

    iput-object p1, p0, Ld/m;->i:Ljava/util/Vector;

    iput-object p2, p0, Ld/m;->a:Lcom/c/b;

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    iput-object p1, p0, Ld/m;->k:Ljava/lang/String;

    invoke-static {}, Ld/n;->a()V

    invoke-direct {p0}, Ld/m;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ld/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ld/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    iput-object p1, p0, Ld/m;->f:Ljava/lang/String;

    iput-object p2, p0, Ld/m;->g:Ljava/lang/String;

    iput-object p3, p0, Ld/m;->h:Ljava/lang/String;

    iput p4, p0, Ld/m;->j:I

    const/4 v0, 0x1

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ld/m;->b:Ljava/lang/String;

    return-void
.end method
