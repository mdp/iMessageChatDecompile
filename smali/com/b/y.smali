.class public final Lcom/b/y;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:[B

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ld/w;

.field private h:I


# direct methods
.method public constructor <init>(Lactivity/o;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lactivity/o;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "||"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/y;->a:Ljava/lang/String;

    :goto_0
    const-string v0, "send"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "toUser"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/b/y;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lactivity/o;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/y;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lactivity/o;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/y;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/b/y;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/b/y;->e:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Lactivity/o;->m()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/y;->c:J

    invoke-virtual {p1}, Lactivity/o;->o()[B

    move-result-object v0

    iput-object v0, p0, Lcom/b/y;->b:[B

    return-void

    :cond_1
    invoke-virtual {p1}, Lactivity/o;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/y;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 3

    iget-object v0, p0, Lcom/b/y;->b:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/b/y;->b:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/b/y;->b:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/b/y;->b:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    or-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final a(Ld/w;)V
    .locals 0

    iput-object p1, p0, Lcom/b/y;->g:Ld/w;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/y;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "<span style=\"font-family: \'Helvetica\';font-size: 12px;\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/y;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/b/y;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/y;->d:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "<FILE"

    const-string v2, " name"

    invoke-static {v0, v2, p1}, Lcom/b/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " width"

    const-string v3, "0"

    invoke-static {v0, v2, v3}, Lcom/b/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " height"

    const-string v3, "0"

    invoke-static {v0, v2, v3}, Lcom/b/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " datasize"

    invoke-static {v0, v2, v1}, Lcom/b/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, " mime-type"

    invoke-static {v0, v2, p3}, Lcom/b/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v2, " uti-type"

    invoke-static {v0, v2, p4}, Lcom/b/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " mmcs-owner"

    invoke-static {v0, v2, p5}, Lcom/b/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " mmcs-url"

    invoke-static {v0, v2, p6}, Lcom/b/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " mmcs-signature-hex"

    invoke-static {v0, v2, p7}, Lcom/b/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " file-size"

    invoke-static {v0, v2, v1}, Lcom/b/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "00"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " decryption-key"

    invoke-static {v0, v2, v1}, Lcom/b/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/b/y;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/y;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/y;->d:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/y;->d:Ljava/lang/String;

    return-void
.end method

.method public final b()Z
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/b/y;->f:Ljava/lang/String;

    const-string v1, "STARTFILE:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/b/y;->f:Ljava/lang/String;

    const-string v2, ":ENDFILE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v3, :cond_0

    if-eq v1, v3, :cond_0

    iget-object v0, p0, Lcom/b/y;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/b/y;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/b/y;->d:Ljava/lang/String;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/b/y;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/util/ArrayList;
    .locals 8

    const/4 v0, 0x0

    const/4 v7, -0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput v0, p0, Lcom/b/y;->h:I

    const-string v2, "Send"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "socontext"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/b/y;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v2, p0, Lcom/b/y;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/b/y;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/b/y;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v1

    :cond_2
    iget-object v2, p0, Lcom/b/y;->f:Ljava/lang/String;

    const-string v3, "STARTFILE:"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/b/y;->f:Ljava/lang/String;

    const-string v4, ":ENDFILE"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-eq v2, v7, :cond_0

    if-eq v3, v7, :cond_0

    iget-object v4, p0, Lcom/b/y;->f:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v3, 0x8

    const-string v4, "Send"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "start:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " end:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/b/y;->f:Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    const-string v4, ":ENDFILE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/b/y;->h:I

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/b/y;->h:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public final e()Lcom/c/b;
    .locals 15

    const/4 v14, 0x2

    const/16 v13, 0x10

    const/4 v11, 0x1

    const/4 v12, 0x4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/b/y;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v4, v0

    iget-object v0, p0, Lcom/b/y;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v5, v0

    iget-object v0, p0, Lcom/b/y;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v6, v0

    iget-object v0, p0, Lcom/b/y;->g:Ld/w;

    invoke-virtual {v0}, Ld/w;->c()Ljava/util/ArrayList;

    move-result-object v7

    iget-object v0, p0, Lcom/b/y;->g:Ld/w;

    invoke-virtual {v0}, Ld/w;->b()Ljava/util/ArrayList;

    move-result-object v8

    iget-object v0, p0, Lcom/b/y;->g:Ld/w;

    invoke-virtual {v0}, Ld/w;->d()Ljava/util/ArrayList;

    move-result-object v9

    move v1, v3

    move v2, v3

    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    add-int v0, v4, v5

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x2a

    add-int/2addr v0, v2

    new-array v10, v0, [B

    add-int/lit8 v0, v0, -0x5

    aput-byte v12, v10, v3

    shr-int/lit8 v1, v0, 0x18

    int-to-byte v1, v1

    aput-byte v1, v10, v11

    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, v10, v14

    const/4 v1, 0x3

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v10, v1

    int-to-byte v0, v0

    aput-byte v0, v10, v12

    const/4 v0, 0x5

    aput-byte v12, v10, v0

    const/4 v0, 0x6

    aput-byte v11, v10, v0

    const/4 v0, 0x7

    aput-byte v11, v10, v0

    const/16 v0, 0x8

    aput-byte v3, v10, v0

    const/16 v1, 0x9

    const/16 v0, 0xa

    aput-byte v13, v10, v1

    move v2, v3

    :goto_1
    if-lt v2, v13, :cond_2

    add-int/lit8 v1, v0, 0x1

    aput-byte v14, v10, v0

    add-int/lit8 v0, v1, 0x1

    aput-byte v3, v10, v1

    add-int/lit8 v1, v0, 0x1

    aput-byte v12, v10, v0

    add-int/lit8 v0, v1, 0x1

    iget-wide v11, p0, Lcom/b/y;->c:J

    const/16 v2, 0x18

    shr-long/2addr v11, v2

    long-to-int v2, v11

    int-to-byte v2, v2

    aput-byte v2, v10, v1

    add-int/lit8 v1, v0, 0x1

    iget-wide v11, p0, Lcom/b/y;->c:J

    shr-long/2addr v11, v13

    long-to-int v2, v11

    int-to-byte v2, v2

    aput-byte v2, v10, v0

    add-int/lit8 v0, v1, 0x1

    iget-wide v11, p0, Lcom/b/y;->c:J

    const/16 v2, 0x8

    shr-long/2addr v11, v2

    long-to-int v2, v11

    int-to-byte v2, v2

    aput-byte v2, v10, v1

    add-int/lit8 v1, v0, 0x1

    iget-wide v11, p0, Lcom/b/y;->c:J

    long-to-int v2, v11

    int-to-byte v2, v2

    aput-byte v2, v10, v0

    add-int/lit8 v0, v1, 0x1

    const/4 v2, 0x3

    aput-byte v2, v10, v1

    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, v4, 0x8

    int-to-byte v2, v2

    aput-byte v2, v10, v0

    add-int/lit8 v0, v1, 0x1

    int-to-byte v2, v4

    aput-byte v2, v10, v1

    iget-object v1, p0, Lcom/b/y;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    move v1, v0

    move v0, v3

    :goto_2
    if-lt v0, v4, :cond_3

    add-int/lit8 v0, v1, 0x1

    const/4 v2, 0x5

    aput-byte v2, v10, v1

    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, v5, 0x8

    int-to-byte v2, v2

    aput-byte v2, v10, v0

    add-int/lit8 v0, v1, 0x1

    int-to-byte v2, v5

    aput-byte v2, v10, v1

    iget-object v1, p0, Lcom/b/y;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move v1, v3

    :goto_3
    if-lt v1, v5, :cond_4

    if-lez v6, :cond_0

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x6

    aput-byte v2, v10, v0

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v0, v6, 0x8

    int-to-byte v0, v0

    aput-byte v0, v10, v1

    add-int/lit8 v0, v2, 0x1

    int-to-byte v1, v6

    aput-byte v1, v10, v2

    iget-object v1, p0, Lcom/b/y;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move v1, v3

    :goto_4
    if-lt v1, v6, :cond_5

    :cond_0
    move v4, v3

    move v5, v0

    :goto_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v4, v0, :cond_6

    new-instance v0, Lcom/c/b;

    invoke-direct {v0, v10, v5}, Lcom/c/b;-><init>([BI)V

    return-object v0

    :cond_1
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v10, v0

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    add-int/2addr v10, v0

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    add-int/2addr v0, v10

    add-int/lit8 v0, v0, 0x6

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v1, v0, 0x1

    iget-object v11, p0, Lcom/b/y;->b:[B

    aget-byte v11, v11, v2

    aput-byte v11, v10, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v2, v1, 0x1

    aget-byte v12, v11, v0

    aput-byte v12, v10, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v0, 0x1

    aget-byte v11, v4, v1

    aput-byte v11, v10, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v0, 0x1

    aget-byte v5, v4, v1

    aput-byte v5, v10, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_4

    :cond_6
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v6, v0

    array-length v11, v1

    add-int/2addr v6, v11

    array-length v11, v2

    add-int/2addr v6, v11

    add-int/lit8 v6, v6, 0x3

    add-int/lit8 v11, v5, 0x1

    const/16 v12, 0xa

    aput-byte v12, v10, v5

    add-int/lit8 v5, v11, 0x1

    shr-int/lit8 v12, v6, 0x8

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    add-int/lit8 v11, v5, 0x1

    int-to-byte v6, v6

    aput-byte v6, v10, v5

    add-int/lit8 v5, v11, 0x1

    array-length v6, v0

    int-to-byte v6, v6

    aput-byte v6, v10, v11

    array-length v6, v0

    invoke-static {v0, v3, v10, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v0, v5

    add-int/lit8 v5, v0, 0x1

    array-length v6, v1

    int-to-byte v6, v6

    aput-byte v6, v10, v0

    array-length v0, v1

    invoke-static {v1, v3, v10, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v1

    add-int/2addr v0, v5

    add-int/lit8 v1, v0, 0x1

    array-length v5, v2

    int-to-byte v5, v5

    aput-byte v5, v10, v0

    array-length v0, v2

    invoke-static {v2, v3, v10, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v2

    add-int/2addr v1, v0

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v5, v1

    goto/16 :goto_5
.end method

.method public final f()V
    .locals 1

    const-string v0, "<html><body style=\"background-color:#e9e9e9;color:#000000;\">"

    iput-object v0, p0, Lcom/b/y;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/b/y;->d:Ljava/lang/String;

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/b/y;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "</body><html>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/y;->e:Ljava/lang/String;

    return-void
.end method
