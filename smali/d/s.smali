.class public final Ld/s;
.super Ld/t;


# instance fields
.field private c:Lcom/c/b;

.field private d:Lcom/c/b;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ld/s;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/c/b;)Ljava/util/Map;
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1}, Lcom/c/b;->b()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1}, Lcom/c/b;->a()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/c/b;->b()I

    move-result v7

    invoke-static {v1, v2, v0, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lcom/c/b;

    invoke-virtual {p1}, Lcom/c/b;->b()I

    move-result v7

    invoke-direct {v1, v0, v7}, Lcom/c/b;-><init>([BI)V

    invoke-static {v1}, Ld/f;->a(Lcom/c/b;)Ljava/util/Vector;

    move-result-object v7

    move v1, v2

    :goto_0
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

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

    if-lt v1, v0, :cond_4

    move v1, v2

    :goto_3
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_8

    const-string v0, "GetFile"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Host:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ld/s;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Ld/s;->g:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ld/s;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GetFile"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Method: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ld/s;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move v1, v2

    :goto_4
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_e

    const-string v0, "User-Agent"

    const-string v1, "IMTransferAgent/900 CFNetwork/596.2.3 Darwin/12.2.0 (x86_64) (Macmini5%2C1)"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "x-apple-request-uuid"

    invoke-static {}, Ld/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v2, v0, :cond_10

    return-object v3

    :cond_0
    invoke-virtual {v7, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/g;

    iget v8, v0, Ld/g;->a:I

    sget v9, Ld/f;->b:I

    if-ne v8, v9, :cond_1

    iget v8, v0, Ld/g;->b:I

    if-ne v8, v10, :cond_1

    new-instance v8, Lcom/c/b;

    iget-object v0, v0, Ld/g;->d:Lcom/c/b;

    invoke-direct {v8, v0}, Lcom/c/b;-><init>(Lcom/c/b;)V

    invoke-static {v3, v8}, Ld/f;->a(Ljava/util/Vector;Lcom/c/b;)Ljava/util/Vector;

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/g;

    iget v7, v0, Ld/g;->a:I

    sget v7, Ld/f;->b:I

    iget v7, v0, Ld/g;->a:I

    sget v8, Ld/f;->b:I

    if-ne v7, v8, :cond_3

    iget v7, v0, Ld/g;->b:I

    if-ne v7, v10, :cond_3

    new-instance v7, Lcom/c/b;

    iget-object v0, v0, Ld/g;->d:Lcom/c/b;

    invoke-direct {v7, v0}, Lcom/c/b;-><init>(Lcom/c/b;)V

    invoke-static {v4, v7}, Ld/f;->a(Ljava/util/Vector;Lcom/c/b;)Ljava/util/Vector;

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/g;

    iget v3, v0, Ld/g;->a:I

    sget v3, Ld/f;->b:I

    iget v3, v0, Ld/g;->a:I

    sget v7, Ld/f;->b:I

    if-ne v3, v7, :cond_6

    iget v3, v0, Ld/g;->b:I

    if-ne v3, v10, :cond_6

    new-instance v3, Lcom/c/b;

    iget-object v0, v0, Ld/g;->d:Lcom/c/b;

    invoke-direct {v3, v0}, Lcom/c/b;-><init>(Lcom/c/b;)V

    invoke-static {v5, v3}, Ld/f;->a(Ljava/util/Vector;Lcom/c/b;)Ljava/util/Vector;

    :cond_5
    :goto_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    :cond_6
    iget v3, v0, Ld/g;->a:I

    sget v7, Ld/f;->b:I

    if-ne v3, v7, :cond_7

    iget v3, v0, Ld/g;->b:I

    if-ne v3, v11, :cond_7

    new-instance v3, Lcom/c/b;

    iget-object v0, v0, Ld/g;->d:Lcom/c/b;

    invoke-direct {v3, v0}, Lcom/c/b;-><init>(Lcom/c/b;)V

    iput-object v3, p0, Ld/s;->c:Lcom/c/b;

    goto :goto_6

    :cond_7
    iget v3, v0, Ld/g;->a:I

    sget v7, Ld/f;->b:I

    if-ne v3, v7, :cond_5

    iget v3, v0, Ld/g;->b:I

    if-ne v3, v12, :cond_5

    new-instance v3, Lcom/c/b;

    iget-object v0, v0, Ld/g;->d:Lcom/c/b;

    invoke-direct {v3, v0}, Lcom/c/b;-><init>(Lcom/c/b;)V

    iput-object v3, p0, Ld/s;->d:Lcom/c/b;

    goto :goto_6

    :cond_8
    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/g;

    iget v3, v0, Ld/g;->a:I

    sget v3, Ld/f;->b:I

    iget v3, v0, Ld/g;->a:I

    sget v4, Ld/f;->b:I

    if-ne v3, v4, :cond_a

    iget v3, v0, Ld/g;->b:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_a

    new-instance v3, Lcom/c/b;

    iget-object v0, v0, Ld/g;->d:Lcom/c/b;

    invoke-direct {v3, v0}, Lcom/c/b;-><init>(Lcom/c/b;)V

    invoke-static {v6, v3}, Ld/f;->a(Ljava/util/Vector;Lcom/c/b;)Ljava/util/Vector;

    :cond_9
    :goto_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    :cond_a
    iget v3, v0, Ld/g;->a:I

    sget v4, Ld/f;->b:I

    if-ne v3, v4, :cond_b

    iget v3, v0, Ld/g;->b:I

    if-ne v3, v10, :cond_b

    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Ld/g;->d:Lcom/c/b;

    invoke-virtual {v4}, Lcom/c/b;->a()[B

    move-result-object v4

    iget-object v0, v0, Ld/g;->d:Lcom/c/b;

    invoke-virtual {v0}, Lcom/c/b;->b()I

    move-result v0

    invoke-direct {v3, v4, v2, v0}, Ljava/lang/String;-><init>([BII)V

    iput-object v3, p0, Ld/s;->e:Ljava/lang/String;

    goto :goto_7

    :cond_b
    iget v3, v0, Ld/g;->a:I

    sget v4, Ld/f;->b:I

    if-ne v3, v4, :cond_c

    iget v3, v0, Ld/g;->b:I

    if-ne v3, v12, :cond_c

    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Ld/g;->d:Lcom/c/b;

    invoke-virtual {v4}, Lcom/c/b;->a()[B

    move-result-object v4

    iget-object v0, v0, Ld/g;->d:Lcom/c/b;

    invoke-virtual {v0}, Lcom/c/b;->b()I

    move-result v0

    invoke-direct {v3, v4, v2, v0}, Ljava/lang/String;-><init>([BII)V

    iput-object v3, p0, Ld/s;->f:Ljava/lang/String;

    goto :goto_7

    :cond_c
    iget v3, v0, Ld/g;->a:I

    sget v4, Ld/f;->a:I

    if-ne v3, v4, :cond_d

    iget v3, v0, Ld/g;->b:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d

    iget v0, v0, Ld/g;->c:I

    iput v0, p0, Ld/s;->g:I

    goto :goto_7

    :cond_d
    iget v3, v0, Ld/g;->a:I

    sget v4, Ld/f;->b:I

    if-ne v3, v4, :cond_9

    iget v3, v0, Ld/g;->b:I

    if-ne v3, v11, :cond_9

    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Ld/g;->d:Lcom/c/b;

    invoke-virtual {v4}, Lcom/c/b;->a()[B

    move-result-object v4

    iget-object v0, v0, Ld/g;->d:Lcom/c/b;

    invoke-virtual {v0}, Lcom/c/b;->b()I

    move-result v0

    invoke-direct {v3, v4, v2, v0}, Ljava/lang/String;-><init>([BII)V

    iput-object v3, p0, Ld/s;->i:Ljava/lang/String;

    goto :goto_7

    :cond_e
    invoke-virtual {v6, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/g;

    new-instance v4, Ljava/lang/String;

    iget-object v5, v0, Ld/g;->d:Lcom/c/b;

    invoke-virtual {v5}, Lcom/c/b;->a()[B

    move-result-object v5

    iget-object v0, v0, Ld/g;->d:Lcom/c/b;

    invoke-virtual {v0}, Lcom/c/b;->b()I

    move-result v0

    invoke-direct {v4, v5, v2, v0}, Ljava/lang/String;-><init>([BII)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v6, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/g;

    new-instance v5, Ljava/lang/String;

    iget-object v7, v0, Ld/g;->d:Lcom/c/b;

    invoke-virtual {v7}, Lcom/c/b;->a()[B

    move-result-object v7

    iget-object v0, v0, Ld/g;->d:Lcom/c/b;

    invoke-virtual {v0}, Lcom/c/b;->b()I

    move-result v0

    invoke-direct {v5, v7, v2, v0}, Ljava/lang/String;-><init>([BII)V

    const-string v0, "Content-Length"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_4

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Ld/s;->h:I

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ld/s;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":80"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ld/s;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ld/s;->a:I

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ld/s;->c:Lcom/c/b;

    invoke-virtual {v1}, Lcom/c/b;->a()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Ld/s;->c:Lcom/c/b;

    invoke-virtual {v3}, Lcom/c/b;->b()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ld/s;->d:Lcom/c/b;

    invoke-virtual {v1}, Lcom/c/b;->a()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Ld/s;->d:Lcom/c/b;

    invoke-virtual {v3}, Lcom/c/b;->b()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Ld/s;->h:I

    return v0
.end method
