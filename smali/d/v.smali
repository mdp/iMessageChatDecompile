.class public final Ld/v;
.super Ld/t;


# instance fields
.field private c:Ljava/util/Vector;

.field private d:Lcom/c/b;

.field private e:Lcom/c/b;

.field private f:Lcom/c/b;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ld/v;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/c/b;)Ljava/util/Map;
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1}, Lcom/c/b;->b()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1}, Lcom/c/b;->a()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/c/b;->b()I

    move-result v6

    invoke-static {v1, v2, v0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lcom/c/b;

    invoke-virtual {p1}, Lcom/c/b;->b()I

    move-result v6

    invoke-direct {v1, v0, v6}, Lcom/c/b;-><init>([BI)V

    invoke-static {v1}, Ld/f;->a(Lcom/c/b;)Ljava/util/Vector;

    move-result-object v6

    move v1, v2

    :goto_0
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_6

    const/16 v0, 0x1bb

    iput v0, p0, Ld/v;->i:I

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move v1, v2

    :goto_3
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_b

    const-string v0, "User-Agent"

    const-string v1, "IMTransferAgent/900 CFNetwork/596.2.3 Darwin/12.2.0 (x86_64) (Macmini5%2C1)"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "x-apple-request-uuid"

    invoke-static {}, Ld/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Connection"

    const-string v1, "close"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Proxy-Connection"

    const-string v1, "close"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_0
    invoke-virtual {v6, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/g;

    iget v7, v0, Ld/g;->a:I

    sget v8, Ld/f;->b:I

    if-ne v7, v8, :cond_1

    iget v7, v0, Ld/g;->b:I

    if-ne v7, v9, :cond_1

    new-instance v7, Lcom/c/b;

    iget-object v0, v0, Ld/g;->d:Lcom/c/b;

    invoke-direct {v7, v0}, Lcom/c/b;-><init>(Lcom/c/b;)V

    invoke-static {v3, v7}, Ld/f;->a(Ljava/util/Vector;Lcom/c/b;)Ljava/util/Vector;

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/g;

    iget v6, v0, Ld/g;->a:I

    sget v7, Ld/f;->b:I

    if-ne v6, v7, :cond_4

    iget v6, v0, Ld/g;->b:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    new-instance v6, Lcom/c/b;

    iget-object v0, v0, Ld/g;->d:Lcom/c/b;

    invoke-direct {v6, v0}, Lcom/c/b;-><init>(Lcom/c/b;)V

    invoke-static {v4, v6}, Ld/f;->a(Ljava/util/Vector;Lcom/c/b;)Ljava/util/Vector;

    :cond_3
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    iget v6, v0, Ld/g;->a:I

    sget v7, Ld/f;->b:I

    if-ne v6, v7, :cond_5

    iget v6, v0, Ld/g;->b:I

    if-ne v6, v9, :cond_5

    new-instance v6, Lcom/c/b;

    iget-object v0, v0, Ld/g;->d:Lcom/c/b;

    invoke-direct {v6, v0}, Lcom/c/b;-><init>(Lcom/c/b;)V

    iput-object v6, p0, Ld/v;->d:Lcom/c/b;

    goto :goto_4

    :cond_5
    iget v6, v0, Ld/g;->a:I

    sget v7, Ld/f;->b:I

    if-ne v6, v7, :cond_3

    iget v6, v0, Ld/g;->b:I

    if-ne v6, v10, :cond_3

    new-instance v6, Lcom/c/b;

    iget-object v0, v0, Ld/g;->d:Lcom/c/b;

    invoke-direct {v6, v0}, Lcom/c/b;-><init>(Lcom/c/b;)V

    iput-object v6, p0, Ld/v;->e:Lcom/c/b;

    goto :goto_4

    :cond_6
    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/g;

    iget v3, v0, Ld/g;->a:I

    sget v6, Ld/f;->b:I

    if-ne v3, v6, :cond_8

    iget v3, v0, Ld/g;->b:I

    const/16 v6, 0x8

    if-ne v3, v6, :cond_8

    new-instance v3, Lcom/c/b;

    iget-object v0, v0, Ld/g;->d:Lcom/c/b;

    invoke-direct {v3, v0}, Lcom/c/b;-><init>(Lcom/c/b;)V

    invoke-static {v5, v3}, Ld/f;->a(Ljava/util/Vector;Lcom/c/b;)Ljava/util/Vector;

    :cond_7
    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    :cond_8
    iget v3, v0, Ld/g;->a:I

    sget v6, Ld/f;->b:I

    if-ne v3, v6, :cond_9

    iget v3, v0, Ld/g;->b:I

    if-ne v3, v9, :cond_9

    new-instance v3, Ljava/lang/String;

    iget-object v6, v0, Ld/g;->d:Lcom/c/b;

    invoke-virtual {v6}, Lcom/c/b;->a()[B

    move-result-object v6

    iget-object v0, v0, Ld/g;->d:Lcom/c/b;

    invoke-virtual {v0}, Lcom/c/b;->b()I

    move-result v0

    invoke-direct {v3, v6, v2, v0}, Ljava/lang/String;-><init>([BII)V

    iput-object v3, p0, Ld/v;->g:Ljava/lang/String;

    goto :goto_5

    :cond_9
    iget v3, v0, Ld/g;->a:I

    sget v6, Ld/f;->b:I

    if-ne v3, v6, :cond_a

    iget v3, v0, Ld/g;->b:I

    if-ne v3, v10, :cond_a

    new-instance v3, Ljava/lang/String;

    iget-object v6, v0, Ld/g;->d:Lcom/c/b;

    invoke-virtual {v6}, Lcom/c/b;->a()[B

    move-result-object v6

    iget-object v0, v0, Ld/g;->d:Lcom/c/b;

    invoke-virtual {v0}, Lcom/c/b;->b()I

    move-result v0

    invoke-direct {v3, v6, v2, v0}, Ljava/lang/String;-><init>([BII)V

    iput-object v3, p0, Ld/v;->h:Ljava/lang/String;

    goto :goto_5

    :cond_a
    iget v3, v0, Ld/g;->a:I

    sget v6, Ld/f;->b:I

    if-ne v3, v6, :cond_7

    iget v3, v0, Ld/g;->b:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_7

    new-instance v3, Ljava/lang/String;

    iget-object v6, v0, Ld/g;->d:Lcom/c/b;

    invoke-virtual {v6}, Lcom/c/b;->a()[B

    move-result-object v6

    iget-object v0, v0, Ld/g;->d:Lcom/c/b;

    invoke-virtual {v0}, Lcom/c/b;->b()I

    move-result v0

    invoke-direct {v3, v6, v2, v0}, Ljava/lang/String;-><init>([BII)V

    iput-object v3, p0, Ld/v;->n:Ljava/lang/String;

    goto :goto_5

    :cond_b
    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/g;

    new-instance v4, Ljava/lang/String;

    iget-object v6, v0, Ld/g;->d:Lcom/c/b;

    invoke-virtual {v6}, Lcom/c/b;->a()[B

    move-result-object v6

    iget-object v0, v0, Ld/g;->d:Lcom/c/b;

    invoke-virtual {v0}, Lcom/c/b;->b()I

    move-result v0

    invoke-direct {v4, v6, v2, v0}, Ljava/lang/String;-><init>([BII)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/g;

    new-instance v6, Ljava/lang/String;

    iget-object v7, v0, Ld/g;->d:Lcom/c/b;

    invoke-virtual {v7}, Lcom/c/b;->a()[B

    move-result-object v7

    iget-object v0, v0, Ld/g;->d:Lcom/c/b;

    invoke-virtual {v0}, Lcom/c/b;->b()I

    move-result v0

    invoke-direct {v6, v7, v2, v0}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    const-string v0, "Content-Length"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "putfile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3
.end method

.method public final a(Ljava/util/Vector;Lcom/c/b;)V
    .locals 0

    iput-object p1, p0, Ld/v;->c:Ljava/util/Vector;

    iput-object p2, p0, Ld/v;->f:Lcom/c/b;

    return-void
.end method

.method public final a(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    const-string v0, "Content-MD5"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ETag"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    iput-object p2, p0, Ld/v;->l:Ljava/lang/String;

    iput-object v1, p0, Ld/v;->m:Ljava/lang/String;

    const/4 v0, 0x1

    return v0

    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ld/v;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ld/v;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ld/v;->d:Lcom/c/b;

    invoke-virtual {v1}, Lcom/c/b;->a()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Ld/v;->d:Lcom/c/b;

    invoke-virtual {v3}, Lcom/c/b;->b()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ld/v;->e:Lcom/c/b;

    invoke-virtual {v1}, Lcom/c/b;->a()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Ld/v;->e:Lcom/c/b;

    invoke-virtual {v3}, Lcom/c/b;->b()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ld/v;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":443"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ld/v;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/c/b;
    .locals 7

    const/4 v2, 0x0

    iput v2, p0, Ld/v;->k:I

    iput v2, p0, Ld/v;->j:I

    move v1, v2

    move v3, v2

    :goto_0
    iget-object v0, p0, Ld/v;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    iget v0, p0, Ld/v;->k:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Ld/v;->k:I

    iget v0, p0, Ld/v;->k:I

    add-int/lit8 v0, v0, 0xa

    new-array v4, v0, [B

    iget-object v0, p0, Ld/v;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    shr-int/lit8 v1, v0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v4, v2

    const/4 v1, 0x1

    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v4, v1

    const/4 v1, 0x2

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v4, v1

    const/4 v1, 0x3

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v4, v1

    const/4 v0, 0x4

    move v1, v2

    move v3, v0

    :goto_1
    iget-object v0, p0, Ld/v;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    new-instance v0, Lcom/c/b;

    invoke-direct {v0, v4, v3}, Lcom/c/b;-><init>([BI)V

    return-object v0

    :cond_0
    iget-object v0, p0, Ld/v;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/d;

    iget v4, p0, Ld/v;->k:I

    add-int/lit8 v4, v4, 0x19

    iput v4, p0, Ld/v;->k:I

    iget v4, p0, Ld/v;->j:I

    invoke-virtual {v0}, La/d;->a()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Ld/v;->j:I

    invoke-virtual {v0}, La/d;->a()I

    move-result v4

    if-le v4, v3, :cond_1

    invoke-virtual {v0}, La/d;->a()I

    move-result v3

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ld/v;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/d;

    invoke-virtual {v0}, La/d;->b()Lcom/c/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/c/b;->a()[B

    move-result-object v5

    invoke-virtual {v0}, La/d;->b()Lcom/c/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/c/b;->b()I

    move-result v6

    invoke-static {v5, v2, v4, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0}, La/d;->b()Lcom/c/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/c/b;->b()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {v0}, La/d;->a()I

    move-result v0

    add-int/lit8 v5, v3, 0x1

    shr-int/lit8 v6, v0, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v3

    add-int/lit8 v3, v5, 0x1

    shr-int/lit8 v6, v0, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, v3, 0x1

    shr-int/lit8 v6, v0, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v3

    add-int/lit8 v3, v5, 0x1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v4, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public final k()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ld/v;->a:I

    return-void
.end method
