.class public final Ld/q;
.super Ld/t;


# instance fields
.field private c:Ljava/util/Vector;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/c/b;

.field private h:Lcom/c/b;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "User-Agent"

    const-string v2, "IMTransferAgent/900 CFNetwork/596.2.3 Darwin/12.2.0 (x86_64) (Macmini5%2C1)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x-apple-mmcs-proto-version"

    const-string v2, "3.3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x-apple-mmcs-dataclass"

    const-string v2, "com.apple.Dataclass.Messenger"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Accept"

    const-string v2, "application/vnd.com.apple.me.ubchunk+protobuf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Content-Type"

    const-string v2, "application/vnd.com.apple.me.ubchunk+protobuf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x-apple-mmcs-auth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ld/q;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ld/q;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ld/q;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x-mme-client-info"

    const-string v2, "<Macmini5,1> <Mac OS X;10.8.2;12C54> <com.apple.icloud.content/243.10 (com.apple.Messenger/1.0)>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x-apple-request-uuid"

    invoke-static {}, Ld/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x-apple-mme-dsid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ld/q;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Connection"

    const-string v2, "close"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Lcom/c/b;)V
    .locals 1

    iput-object p1, p0, Ld/q;->h:Lcom/c/b;

    const/4 v0, 0x1

    iput v0, p0, Ld/q;->a:I

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Ld/q;->e:Ljava/lang/String;

    iput-object p2, p0, Ld/q;->d:Ljava/lang/String;

    iput-object p3, p0, Ld/q;->f:Ljava/lang/String;

    iput p4, p0, Ld/q;->i:I

    return-void
.end method

.method public final a(Ljava/util/Vector;Lcom/c/b;)V
    .locals 0

    iput-object p1, p0, Ld/q;->c:Ljava/util/Vector;

    iput-object p2, p0, Ld/q;->g:Lcom/c/b;

    return-void
.end method

.method public final b()Lcom/c/b;
    .locals 8

    const/4 v7, 0x3

    const/4 v2, 0x0

    const/4 v6, 0x1

    new-instance v3, Lcom/c/b;

    new-array v0, v6, [B

    invoke-direct {v3, v0, v2}, Lcom/c/b;-><init>([BI)V

    iget-object v0, p0, Ld/q;->g:Lcom/c/b;

    invoke-static {v3, v6, v0}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    const/4 v0, 0x2

    new-instance v1, Lcom/c/b;

    iget-object v4, p0, Ld/q;->f:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    iget-object v5, p0, Ld/q;->f:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v1, v4, v5}, Lcom/c/b;-><init>([BI)V

    invoke-static {v3, v0, v1}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    new-instance v4, Lcom/c/b;

    new-array v0, v6, [B

    invoke-direct {v4, v0, v2}, Lcom/c/b;-><init>([BI)V

    move v1, v2

    :goto_0
    iget-object v0, p0, Ld/q;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    new-instance v0, Lcom/c/b;

    new-array v1, v6, [B

    invoke-direct {v0, v1, v2}, Lcom/c/b;-><init>([BI)V

    invoke-static {v0, v6, v3}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    invoke-virtual {v0}, Lcom/c/b;->b()I

    return-object v0

    :cond_0
    iget-object v0, p0, Ld/q;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/d;

    invoke-virtual {v0}, La/d;->b()Lcom/c/b;

    move-result-object v5

    invoke-static {v4, v6, v5}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    invoke-virtual {v0}, La/d;->a()I

    move-result v0

    invoke-static {v4, v7, v0}, Ld/f;->a(Lcom/c/b;II)V

    invoke-static {v3, v7, v4}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final c()Lcom/c/b;
    .locals 1

    iget-object v0, p0, Ld/q;->h:Lcom/c/b;

    return-object v0
.end method
