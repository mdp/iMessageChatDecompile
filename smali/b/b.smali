.class public final Lb/b;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/util/Map;

.field private c:Ljava/lang/String;

.field private d:Lcom/c/b;

.field private e:Lcom/c/b;

.field private f:Lcom/c/b;


# direct methods
.method public constructor <init>(Lcom/c/b;)V
    .locals 10

    const/16 v9, 0x3a

    const/4 v8, -0x1

    const v7, 0xff00

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/c/b;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/c/b;->a()[B

    move-result-object v2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb/b;->b:Ljava/util/Map;

    const/4 v3, 0x7

    const/16 v0, 0x8

    aget-byte v3, v2, v3

    iput v3, p0, Lb/b;->a:I

    :cond_0
    :goto_0
    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    sparse-switch v0, :sswitch_data_0

    add-int/lit8 v0, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v7

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v3

    new-array v3, v0, [B

    invoke-static {v2, v4, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v4

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v8, :cond_0

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lb/b;->b:Ljava/util/Map;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_0
    add-int/lit8 v0, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v7

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v3

    new-array v3, v0, [B

    invoke-static {v2, v4, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "https://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lb/b;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    add-int/lit8 v0, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v7

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v3, v0

    new-array v5, v3, [B

    invoke-static {v2, v4, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, v4, v3

    new-instance v4, Lcom/c/b;

    invoke-direct {v4, v5, v3}, Lcom/c/b;-><init>([BI)V

    iput-object v4, p0, Lb/b;->d:Lcom/c/b;

    goto :goto_0

    :sswitch_2
    add-int/lit8 v0, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v7

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v3

    new-array v3, v0, [B

    invoke-static {v2, v4, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v4

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v8, :cond_0

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lb/b;->b:Ljava/util/Map;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x1b -> :sswitch_2
        0x1d -> :sswitch_2
        0x1f -> :sswitch_2
        0x20 -> :sswitch_2
        0x21 -> :sswitch_2
        0x30 -> :sswitch_1
    .end sparse-switch
.end method

.method private a(Ljava/util/Map;)V
    .locals 6

    const-string v0, ""

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/c/b;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/c/b;-><init>([BI)V

    iput-object v0, p0, Lb/b;->e:Lcom/c/b;

    return-void

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_1
.end method


# virtual methods
.method public final a()Z
    .locals 5

    const/16 v4, 0x64

    const/4 v0, 0x1

    new-instance v1, Ld/e;

    iget-object v2, p0, Lb/b;->c:Ljava/lang/String;

    const-string v3, "POST"

    invoke-direct {v1, v2, v3}, Ld/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/c/b;

    new-array v3, v4, [B

    invoke-direct {v2, v3, v4}, Lcom/c/b;-><init>([BI)V

    invoke-virtual {v1, v0, v0}, Ld/e;->a(ZZ)V

    iget-object v3, p0, Lb/b;->b:Ljava/util/Map;

    invoke-virtual {v1, v3}, Ld/e;->a(Ljava/util/Map;)V

    iget-object v3, p0, Lb/b;->d:Lcom/c/b;

    invoke-virtual {v1, v3, v2}, Ld/e;->a(Lcom/c/b;Lcom/c/b;)V

    invoke-virtual {v1}, Ld/e;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Register https request: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lb/b;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Succ"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lb/b;->f:Lcom/c/b;

    invoke-virtual {v1}, Ld/e;->a()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lb/b;->a(Ljava/util/Map;)V

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Register https request: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lb/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Err"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/c/b;
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lb/b;->f:Lcom/c/b;

    invoke-virtual {v0}, Lcom/c/b;->b()I

    move-result v0

    add-int/lit8 v1, v0, 0xe

    new-array v2, v1, [B

    const/16 v3, 0xa

    aput-byte v3, v2, v4

    add-int/lit8 v3, v1, -0x5

    shr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    add-int/lit8 v3, v1, -0x5

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, v2, v7

    add-int/lit8 v3, v1, -0x5

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v8

    add-int/lit8 v1, v1, -0x5

    shr-int/lit8 v1, v1, 0x0

    int-to-byte v1, v1

    aput-byte v1, v2, v6

    const/4 v1, 0x5

    aput-byte v6, v2, v1

    const/4 v1, 0x6

    aput-byte v5, v2, v1

    const/4 v1, 0x7

    iget v3, p0, Lb/b;->a:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lb/b;->a:I

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    const/16 v1, 0x8

    const/16 v3, 0x40

    aput-byte v3, v2, v1

    const/16 v1, 0x9

    aput-byte v4, v2, v1

    const/16 v1, 0xa

    aput-byte v4, v2, v1

    iget-object v1, p0, Lb/b;->e:Lcom/c/b;

    invoke-virtual {v1}, Lcom/c/b;->a()[B

    move-result-object v1

    const/16 v3, 0xb

    invoke-static {v1, v4, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0xb

    const/16 v3, 0x41

    aput-byte v3, v2, v1

    const/16 v1, 0xc

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    const/16 v1, 0xd

    shr-int/lit8 v3, v0, 0x0

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    iget-object v1, p0, Lb/b;->f:Lcom/c/b;

    invoke-virtual {v1}, Lcom/c/b;->a()[B

    move-result-object v1

    const/16 v3, 0xe

    invoke-static {v1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lb/b;->f:Lcom/c/b;

    invoke-virtual {v0}, Lcom/c/b;->a()[B

    move-result-object v0

    invoke-static {v0}, Le/e;->a([B)Ljava/lang/String;

    invoke-static {v2}, Le/d;->a([B)[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x5

    new-array v1, v1, [B

    const/16 v2, 0x3c

    aput-byte v2, v1, v4

    array-length v2, v0

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    array-length v2, v0

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    array-length v2, v0

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v8

    array-length v2, v0

    shr-int/lit8 v2, v2, 0x0

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    const/4 v2, 0x5

    array-length v3, v0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/lit8 v0, v0, 0x5

    new-instance v2, Lcom/c/b;

    invoke-direct {v2, v1, v0}, Lcom/c/b;-><init>([BI)V

    return-object v2
.end method
