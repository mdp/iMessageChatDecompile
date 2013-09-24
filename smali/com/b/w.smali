.class public final Lcom/b/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:[B

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/w;->o:Z

    return-void
.end method

.method public constructor <init>(Lactivity/o;)V
    .locals 4

    const/16 v3, 0x10

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/b/w;->o:Z

    invoke-virtual {p1}, Lactivity/o;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/w;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lactivity/o;->m()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/w;->c:J

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/b/w;->b:[B

    invoke-virtual {p1}, Lactivity/o;->o()[B

    move-result-object v0

    iget-object v1, p0, Lcom/b/w;->b:[B

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1}, Lactivity/o;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/w;->e:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/b/w;->d:J

    invoke-virtual {p1}, Lactivity/o;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/w;->f:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, -0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "\""

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v3, :cond_0

    if-eq v1, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/b/w;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/c/b;)Z
    .locals 10

    const/high16 v9, 0xff

    const/4 v1, 0x7

    const/high16 v8, -0x100

    const/4 v7, 0x0

    const v6, 0xff00

    invoke-virtual {p1}, Lcom/c/b;->a()[B

    move-result-object v3

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lcom/c/b;->b()I

    move-result v2

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v3, v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v2

    goto :goto_0

    :pswitch_1
    add-int/lit8 v0, v2, 0x1

    aget-byte v2, v3, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v6

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    shl-int/lit8 v0, v0, 0x0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    new-array v2, v0, [B

    iput-object v2, p0, Lcom/b/w;->b:[B

    iget-object v2, p0, Lcom/b/w;->b:[B

    invoke-static {v3, v4, v2, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v4

    goto :goto_0

    :pswitch_2
    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v3, v0

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v8

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, v3, v2

    shl-int/lit8 v2, v2, 0x10

    and-int/2addr v2, v9

    or-int/2addr v0, v2

    add-int/lit8 v2, v4, 0x1

    aget-byte v4, v3, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v6

    or-int/2addr v4, v0

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, v3, v2

    shl-int/lit8 v2, v2, 0x0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v4

    int-to-long v4, v2

    iput-wide v4, p0, Lcom/b/w;->c:J

    goto :goto_0

    :pswitch_3
    add-int/lit8 v0, v2, 0x1

    aget-byte v2, v3, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v6

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    shl-int/lit8 v0, v0, 0x0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    new-array v2, v0, [B

    invoke-static {v3, v4, v2, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v4

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v4, p0, Lcom/b/w;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/b/w;->a:Ljava/lang/String;

    const-string v4, "mailto:"

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/b/w;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/b/w;->a:Ljava/lang/String;

    :cond_1
    const-string v2, "From User"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/b/w;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_4
    add-int/lit8 v0, v2, 0x1

    aget-byte v2, v3, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v6

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    new-array v2, v0, [B

    invoke-static {v3, v4, v2, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v4

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v4, p0, Lcom/b/w;->e:Ljava/lang/String;

    const-string v2, "Recive"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Msg :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/b/w;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_5
    add-int/lit8 v0, v2, 0x1

    aget-byte v2, v3, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v6

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    new-array v2, v0, [B

    invoke-static {v3, v4, v2, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v4

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v4, p0, Lcom/b/w;->f:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_6
    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v3, v0

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v8

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, v3, v2

    shl-int/lit8 v2, v2, 0x10

    and-int/2addr v2, v9

    or-int/2addr v0, v2

    add-int/lit8 v2, v4, 0x1

    aget-byte v4, v3, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v6

    or-int/2addr v4, v0

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, v3, v2

    shl-int/lit8 v2, v2, 0x0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v4

    int-to-long v4, v2

    iput-wide v4, p0, Lcom/b/w;->d:J

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public final b()[B
    .locals 1

    iget-object v0, p0, Lcom/b/w;->b:[B

    return-object v0
.end method

.method public final c()J
    .locals 3

    iget-object v0, p0, Lcom/b/w;->b:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/b/w;->b:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/b/w;->b:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/b/w;->b:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    or-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/b/w;->c:J

    iget-wide v0, p0, Lcom/b/w;->c:J

    return-wide v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/b/w;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/b/w;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/util/ArrayList;
    .locals 9

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/b/w;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/b/w;->f:Ljava/lang/String;

    const-string v2, "gb2312"

    invoke-static {v0, v2}, Lorg/jsoup/Jsoup;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->l()Lorg/jsoup/nodes/Element;

    move-result-object v0

    const-string v2, "body"

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Element;->a(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/jsoup/select/Elements;->a(I)Lorg/jsoup/nodes/Element;

    move-result-object v4

    move v0, v1

    :goto_0
    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->y()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v4, v0}, Lorg/jsoup/nodes/Element;->a(I)Lorg/jsoup/nodes/Node;

    move-result-object v5

    const-string v2, "Recive"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "XMsg getText:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/jsoup/nodes/Node;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lorg/jsoup/nodes/Node;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    iget-object v6, p0, Lcom/b/w;->e:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/b/w;->e:Ljava/lang/String;

    :cond_1
    invoke-virtual {v5}, Lorg/jsoup/nodes/Node;->a()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "file"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/b/w;->g:Z

    const-string v5, "name"

    invoke-static {v2, v5}, Lcom/b/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/b/w;->h:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/b/w;->e:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "STARTFILE:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/c/a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/b/w;->h:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":ENDFILE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/b/w;->e:Ljava/lang/String;

    const-string v5, "mime-type"

    invoke-static {v2, v5}, Lcom/b/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/b/w;->i:Ljava/lang/String;

    const-string v5, "uti-type"

    invoke-static {v2, v5}, Lcom/b/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/b/w;->j:Ljava/lang/String;

    const-string v5, "mmcs-owner"

    invoke-static {v2, v5}, Lcom/b/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/b/w;->k:Ljava/lang/String;

    const-string v5, "mmcs-url"

    invoke-static {v2, v5}, Lcom/b/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/b/w;->l:Ljava/lang/String;

    const-string v5, "decryption-key"

    invoke-static {v2, v5}, Lcom/b/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/b/w;->m:Ljava/lang/String;

    const-string v5, "file-size"

    invoke-static {v2, v5}, Lcom/b/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/b/w;->n:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "span"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v2, v1

    :goto_2
    invoke-virtual {v5}, Lorg/jsoup/nodes/Node;->y()I

    move-result v6

    if-ge v2, v6, :cond_2

    iget-object v6, p0, Lcom/b/w;->e:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lorg/jsoup/nodes/Node;->a(I)Lorg/jsoup/nodes/Node;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jsoup/nodes/Node;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/b/w;->e:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/b/w;->e:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/b/w;->e:Ljava/lang/String;

    goto :goto_1
.end method

.method public final g()Z
    .locals 2

    iget-object v0, p0, Lcom/b/w;->f:Ljava/lang/String;

    const-string v1, "<FILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()J
    .locals 2

    iget-wide v0, p0, Lcom/b/w;->c:J

    return-wide v0
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lcom/b/w;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/w;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/b/w;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/w;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
