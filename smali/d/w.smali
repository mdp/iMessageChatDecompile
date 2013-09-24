.class public final Ld/w;
.super Ld/t;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/ArrayList;

.field private g:Ljava/util/ArrayList;

.field private h:Ljava/util/ArrayList;

.field private i:Z

.field private j:Landroid/content/Context;

.field private k:I

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ld/t;-><init>()V

    iput-boolean v2, p0, Ld/w;->i:Z

    const-string v0, "nothing"

    iput-object v0, p0, Ld/w;->l:Ljava/lang/String;

    const-string v0, "||"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld/w;->e:Ljava/lang/String;

    :goto_0
    iput-object p2, p0, Ld/w;->j:Landroid/content/Context;

    return-void

    :cond_0
    iput-object p1, p0, Ld/w;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Lcom/c/b;)V
    .locals 11

    const/16 v10, 0xac

    const/4 v9, -0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/c/b;->a()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    invoke-virtual {p1}, Lcom/c/b;->a()[B

    move-result-object v0

    invoke-static {v0}, Le/e;->a([B)Ljava/lang/String;

    move-result-object v2

    const-string v0, "Query resBody"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/w;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/w;->g:Ljava/util/ArrayList;

    const-string v3, "<key>public-message-identity-key</key>"

    const-string v4, "<key>push-token</key>"

    const-string v0, "<key>status</key>"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v5, "<integer>"

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "</integer>"

    invoke-virtual {v2, v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const-string v6, "<string>"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const-string v7, "</string>"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const-string v8, "nothing"

    iput-object v8, p0, Ld/w;->l:Ljava/lang/String;

    if-eq v6, v9, :cond_0

    if-eq v7, v9, :cond_0

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ld/w;->l:Ljava/lang/String;

    :cond_0
    add-int/lit8 v5, v5, 0x9

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ld/w;->k:I

    move v0, v1

    :goto_0
    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v9, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v0, v5

    const-string v5, "<data>"

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "</data>"

    invoke-virtual {v2, v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v5, v5, 0x6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    iget-object v6, p0, Ld/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v9, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v0, v5

    const-string v5, "<data>"

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "</data>"

    invoke-virtual {v2, v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v5, v5, 0x6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    new-array v6, v10, [B

    array-length v7, v5

    add-int/lit16 v7, v7, -0xac

    invoke-static {v5, v7, v6, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Ld/w;->h:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ld/w;->j:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget v0, p0, Ld/w;->k:I

    const/16 v1, 0x13a8

    if-ne v0, v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.way.querystatus"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "message"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Ld/w;->k:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Ld/w;->j:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    iget v0, p0, Ld/w;->k:I

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "QueryError"

    iget-object v2, p0, Ld/w;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Ld/w;->j:Landroid/content/Context;

    const-string v2, "QueryE"

    invoke-static {v1, v2, v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v0, "QueryE"

    iget-object v1, p0, Ld/w;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x1

    iput v0, p0, Ld/w;->a:I

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 5

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/w;->f:Ljava/util/ArrayList;

    const-string v3, "x-id-session-token"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iget-object v1, p0, Ld/w;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iget-object v4, p0, Ld/w;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static f()[B
    .locals 14

    const/16 v0, 0x11

    new-array v3, v0, [B

    sget v0, Lcom/c/a;->d:I

    int-to-double v0, v0

    const-wide/high16 v4, -0x4010

    cmpl-double v2, v0, v4

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    long-to-double v0, v0

    :cond_0
    double-to-long v4, v0

    const-wide/32 v0, 0x3e800

    mul-long/2addr v0, v4

    const-wide/32 v6, -0x18000000

    mul-long/2addr v6, v4

    const-wide/32 v8, 0xff0000

    and-long/2addr v0, v8

    const-wide v8, 0xe8000000L

    mul-long/2addr v8, v4

    const/16 v2, 0x20

    shr-long/2addr v8, v2

    const-wide/16 v10, 0x3

    mul-long/2addr v10, v4

    add-long/2addr v8, v10

    const-wide/32 v10, 0xff00

    and-long/2addr v8, v10

    const-wide/32 v10, 0x3e800

    mul-long/2addr v10, v4

    const/16 v2, 0x20

    shr-long/2addr v10, v2

    or-long/2addr v0, v6

    or-long/2addr v0, v8

    or-long/2addr v0, v10

    long-to-int v1, v0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v4

    const/16 v0, 0x20

    shr-long/2addr v6, v0

    const-wide/16 v8, 0x0

    add-long/2addr v6, v8

    const/16 v0, 0x8

    shl-long/2addr v6, v0

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v4

    const/16 v0, 0x20

    shr-long/2addr v8, v0

    const-wide/16 v10, 0x0

    add-long/2addr v8, v10

    long-to-int v0, v8

    shr-int/lit8 v0, v0, 0x18

    int-to-long v8, v0

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v4

    const/16 v0, 0x20

    shr-long/2addr v10, v0

    const-wide/16 v12, 0x0

    add-long/2addr v10, v12

    const/16 v0, 0x18

    shl-long/2addr v10, v0

    const-wide/32 v12, 0xff0000

    and-long/2addr v6, v12

    const-wide/16 v12, 0x3e8

    mul-long/2addr v4, v12

    const/16 v0, 0x20

    shr-long/2addr v4, v0

    const-wide/16 v12, 0x0

    add-long/2addr v4, v12

    long-to-int v0, v4

    shr-int/lit8 v0, v0, 0x8

    const v2, 0xff00

    and-int/2addr v0, v2

    int-to-long v4, v0

    or-long/2addr v8, v10

    or-long/2addr v6, v8

    or-long/2addr v4, v6

    long-to-int v2, v4

    const/4 v0, 0x0

    const/4 v4, 0x1

    aput-byte v4, v3, v0

    const/4 v0, 0x1

    :goto_0
    const/4 v4, 0x4

    if-le v0, v4, :cond_1

    const/4 v0, 0x5

    :goto_1
    const/16 v2, 0x8

    if-le v0, v2, :cond_2

    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Random;-><init>(J)V

    const/16 v0, 0x9

    :goto_2
    const/16 v2, 0x11

    if-lt v0, v2, :cond_3

    return-object v3

    :cond_1
    rem-int/lit16 v4, v2, 0x100

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    shr-int/lit8 v2, v2, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    rem-int/lit16 v2, v1, 0x100

    int-to-byte v2, v2

    aput-byte v2, v3, v0

    shr-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private j()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ld/w;->e:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ld/w;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, ""

    :try_start_0
    const-string v2, "gb2312"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "query?uri="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://service.ess.apple.com/WebObjects/TDIdentityService.woa/wa/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mailto:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ld/w;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/a/f;)V
    .locals 2

    iget-object v0, p0, Ld/w;->e:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/c/i;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Ld/w;->b(Ljava/lang/String;Lcom/a/f;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, v0, Lcom/c/i;->a:Ljava/util/ArrayList;

    iput-object v1, p0, Ld/w;->f:Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/c/i;->b:Ljava/util/ArrayList;

    iput-object v1, p0, Ld/w;->g:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/c/i;->c:Ljava/util/ArrayList;

    iput-object v0, p0, Ld/w;->h:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/w;->i:Z

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Ld/w;->i:Z

    return v0
.end method

.method public final b(Ljava/lang/String;Lcom/a/f;)I
    .locals 11

    const/16 v8, 0x11

    const/4 v4, -0x1

    const/16 v10, 0xa

    const/4 v9, 0x1

    const/4 v2, 0x0

    const-string v3, "id-query"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mailto:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ld/w;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Ld/w;->e:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ld/w;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, ""

    :try_start_0
    const-string v5, "gb2312"

    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "uri="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v1, v1, 0x4

    invoke-static {}, Ld/w;->f()[B

    move-result-object v5

    new-array v1, v1, [B

    invoke-static {v5, v2, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    shr-int/lit8 v7, v6, 0x18

    int-to-byte v7, v7

    aput-byte v7, v1, v8

    const/16 v7, 0x12

    shr-int/lit8 v8, v6, 0x10

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    const/16 v7, 0x13

    shr-int/lit8 v8, v6, 0x8

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    const/16 v7, 0x14

    shr-int/lit8 v8, v6, 0x0

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/16 v7, 0x15

    invoke-static {v3, v2, v1, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v6, 0x15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v7, v3, 0x1

    shr-int/lit8 v8, v6, 0x18

    int-to-byte v8, v8

    aput-byte v8, v1, v3

    add-int/lit8 v3, v7, 0x1

    shr-int/lit8 v8, v6, 0x10

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    add-int/lit8 v7, v3, 0x1

    shr-int/lit8 v8, v6, 0x8

    int-to-byte v8, v8

    aput-byte v8, v1, v3

    add-int/lit8 v3, v7, 0x1

    shr-int/lit8 v8, v6, 0x0

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v2, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, v3, v6

    add-int/lit8 v3, v0, 0x1

    aput-byte v2, v1, v0

    add-int/lit8 v0, v3, 0x1

    aput-byte v2, v1, v3

    add-int/lit8 v3, v0, 0x1

    aput-byte v2, v1, v0

    aput-byte v2, v1, v3

    const/4 v0, 0x0

    :try_start_1
    sget-object v3, Le/c;->c:[B

    const-string v6, "SHA1withRSA"

    new-instance v7, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v7, v3}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string v3, "RSA"

    const-string v8, "BC"

    invoke-static {v3, v8}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    invoke-static {v6}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    invoke-virtual {v6, v1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v6}, Ljava/security/Signature;->sign()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_2
    array-length v1, v0

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    aput-byte v9, v1, v2

    aput-byte v9, v1, v9

    const/4 v3, 0x2

    array-length v6, v0

    invoke-static {v0, v2, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v5

    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v6

    move v0, v2

    move v1, v2

    :goto_3
    array-length v3, v5

    if-lt v0, v3, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5, v2, v1}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, p0, Ld/w;->c:Ljava/lang/String;

    move v0, v2

    move v1, v2

    :goto_4
    array-length v3, v6

    if-lt v0, v3, :cond_3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6, v2, v1}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, p0, Ld/w;->d:Ljava/lang/String;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ld/w;->d:Ljava/lang/String;

    const-string v1, "x-id-sig"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Accept-Language"

    const-string v1, "zh-cn"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Le/c;->d:[B

    invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v6

    move v0, v2

    move v1, v2

    :goto_5
    array-length v3, v6

    if-lt v0, v3, :cond_5

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6, v2, v1}, Ljava/lang/String;-><init>([BII)V

    const-string v1, "x-id-cert"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ld/w;->c:Ljava/lang/String;

    const-string v1, "x-id-nonce"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Accept"

    const-string v1, "*/*"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Connection"

    const-string v1, "keep-alive"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "User-Agent"

    const-string v1, "com.apple.madrid-lookup [Mac OS X,10.8.2,12C54,Macmini5,1]"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ld/w;->j()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ld/e;

    const-string v3, "GET"

    invoke-direct {v1, v0, v3}, Ld/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/c/b;

    const/16 v3, 0x64

    new-array v3, v3, [B

    const/16 v6, 0x64

    invoke-direct {v0, v3, v6}, Lcom/c/b;-><init>([BI)V

    invoke-virtual {v1, v9, v2}, Ld/e;->a(ZZ)V

    invoke-virtual {v1, v5}, Ld/e;->a(Ljava/util/Map;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ld/e;->a(Lcom/c/b;Lcom/c/b;)V

    invoke-virtual {v1}, Ld/e;->b()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v1}, Ld/e;->a()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Ld/w;->a(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Ld/w;->a(Lcom/c/b;)V

    iget-object v0, p0, Ld/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/c/i;

    invoke-direct {v0}, Lcom/c/i;-><init>()V

    iget-object v1, p0, Ld/w;->h:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/c/i;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Ld/w;->f:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/c/i;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Ld/w;->g:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/c/i;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Ld/w;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/c/i;->d:I

    iget-object v1, p0, Ld/w;->e:Ljava/lang/String;

    invoke-virtual {p2, p1, v1, v0}, Lcom/a/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/c/i;)V

    iput-boolean v9, p0, Ld/w;->i:Z

    :goto_6
    return v2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mailto:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ld/w;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_1
    aget-byte v3, v5, v0

    if-eq v3, v10, :cond_2

    add-int/lit8 v3, v1, 0x1

    aget-byte v7, v5, v0

    aput-byte v7, v5, v1

    move v1, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_3
    aget-byte v3, v6, v0

    if-eq v3, v10, :cond_4

    add-int/lit8 v3, v1, 0x1

    aget-byte v5, v6, v0

    aput-byte v5, v6, v1

    move v1, v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_5
    aget-byte v3, v6, v0

    if-eq v3, v10, :cond_6

    add-int/lit8 v3, v1, 0x1

    aget-byte v7, v6, v0

    aput-byte v7, v6, v1

    move v1, v3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    :cond_7
    iget v0, p0, Ld/w;->k:I

    if-nez v0, :cond_8

    const/4 v2, -0x2

    goto :goto_6

    :cond_8
    iget v2, p0, Ld/w;->k:I

    goto :goto_6

    :cond_9
    move v2, v4

    goto :goto_6
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Ld/w;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Ld/w;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final d()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Ld/w;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ld/w;->l:Ljava/lang/String;

    return-object v0
.end method
