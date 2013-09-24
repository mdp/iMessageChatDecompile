.class public final Ld/p;
.super Ld/t;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/c/b;

.field private g:Lcom/c/b;


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

    iget-object v3, p0, Ld/p;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ld/p;->d:Ljava/lang/String;

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

    iget-object v3, p0, Ld/p;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Connection"

    const-string v2, "close"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Content-Length"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ld/p;->f:Lcom/c/b;

    invoke-virtual {v3}, Lcom/c/b;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Lcom/c/b;)V
    .locals 4

    const/16 v3, 0x19

    const/4 v2, 0x0

    iput-object p1, p0, Ld/p;->g:Lcom/c/b;

    const/16 v0, 0x64

    new-array v0, v0, [B

    invoke-virtual {p1}, Lcom/c/b;->a()[B

    move-result-object v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v2, v0, v3

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "user authorization failed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Ld/p;->a:I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Ld/p;->g:Lcom/c/b;

    iput v2, p0, Ld/p;->a:I

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ld/p;->c:Ljava/lang/String;

    iput-object p2, p0, Ld/p;->d:Ljava/lang/String;

    iput-object p3, p0, Ld/p;->e:Ljava/lang/String;

    return-void
.end method

.method public final b()Lcom/c/b;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Lcom/c/b;

    new-array v1, v4, [B

    invoke-direct {v0, v1, v5}, Lcom/c/b;-><init>([BI)V

    new-instance v1, Lcom/c/b;

    iget-object v2, p0, Ld/p;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Ld/p;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/c/b;-><init>([BI)V

    invoke-virtual {v1}, Lcom/c/b;->c()V

    invoke-static {v0, v4, v1}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    new-instance v1, Lcom/c/b;

    iget-object v2, p0, Ld/p;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Ld/p;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/c/b;-><init>([BI)V

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    new-instance v1, Lcom/c/b;

    new-array v2, v4, [B

    invoke-direct {v1, v2, v5}, Lcom/c/b;-><init>([BI)V

    iput-object v1, p0, Ld/p;->f:Lcom/c/b;

    iget-object v1, p0, Ld/p;->f:Lcom/c/b;

    invoke-static {v1, v4, v0}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    iget-object v0, p0, Ld/p;->f:Lcom/c/b;

    return-object v0
.end method

.method public final c()Lcom/c/b;
    .locals 1

    iget-object v0, p0, Ld/p;->g:Lcom/c/b;

    return-object v0
.end method
