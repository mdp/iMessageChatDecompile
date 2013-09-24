.class public final Ld/r;
.super Ld/t;


# instance fields
.field private c:Lcom/c/b;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:J

.field private i:J

.field private j:I


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

    const-string v1, "Content-Length"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ld/r;->c:Lcom/c/b;

    invoke-virtual {v3}, Lcom/c/b;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x-apple-mmcs-dataclass"

    const-string v2, "com.apple.Dataclass.Messenger"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Content-Type"

    const-string v2, "application/vnd.com.apple.me.ubchunk+protobuf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x-apple-mmcs-proto-version"

    const-string v2, "3.3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x-mme-client-info"

    const-string v2, "<Macmini5,1> <Mac OS X;10.8.2;12C54> <com.apple.icloud.content/243.10 (com.apple.Messenger/1.0)>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x-apple-mmcs-dataclass"

    const-string v2, "com.apple.Dataclass.Messenger"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x-apple-mme-dsid"

    iget-object v2, p0, Ld/r;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x-apple-mmcs-auth"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Ld/r;->f:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ld/r;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x-apple-request-uuid"

    invoke-static {}, Ld/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Connection"

    const-string v2, "close"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Ljava/lang/String;JJI)V
    .locals 0

    iput-wide p2, p0, Ld/r;->h:J

    iput-wide p4, p0, Ld/r;->i:J

    iput p6, p0, Ld/r;->j:I

    iput-object p1, p0, Ld/r;->g:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ld/r;->f:Ljava/lang/String;

    iput-object p2, p0, Ld/r;->d:Ljava/lang/String;

    iput-object p3, p0, Ld/r;->e:Ljava/lang/String;

    return-void
.end method

.method public final b()Lcom/c/b;
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v0, Lcom/c/b;

    new-array v1, v5, [B

    invoke-direct {v0, v1, v6}, Lcom/c/b;-><init>([BI)V

    const/16 v1, 0x1f4

    new-array v1, v1, [B

    iget-object v2, p0, Ld/r;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Ld/r;->g:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v6, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Lcom/c/b;

    iget-object v3, p0, Ld/r;->g:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v1, v3}, Lcom/c/b;-><init>([BI)V

    invoke-static {v0, v5, v2}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    const/16 v1, 0xce

    invoke-static {v0, v7, v1}, Ld/f;->a(Lcom/c/b;II)V

    new-instance v1, Lcom/c/b;

    new-array v3, v5, [B

    invoke-direct {v1, v3, v6}, Lcom/c/b;-><init>([BI)V

    const-string v3, "vendor.roundtrip.millis"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/c/b;->a([BI)V

    invoke-static {v1, v5, v2}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    iget-wide v3, p0, Ld/r;->i:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/c/b;->a([BI)V

    invoke-static {v1, v7, v2}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    invoke-static {v0, v8, v1}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    new-instance v1, Lcom/c/b;

    new-array v3, v5, [B

    invoke-direct {v1, v3, v6}, Lcom/c/b;-><init>([BI)V

    const-string v3, "contentlength.byte"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/c/b;->a([BI)V

    invoke-static {v1, v5, v2}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    iget v3, p0, Ld/r;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/c/b;->a([BI)V

    invoke-static {v1, v7, v2}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    invoke-static {v0, v8, v1}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    new-instance v1, Lcom/c/b;

    new-array v3, v5, [B

    invoke-direct {v1, v3, v6}, Lcom/c/b;-><init>([BI)V

    const-string v3, "authorizeGetForFiles.millis"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/c/b;->a([BI)V

    invoke-static {v1, v5, v2}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    iget-wide v3, p0, Ld/r;->h:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/c/b;->a([BI)V

    invoke-static {v1, v7, v2}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    const/16 v3, 0x9

    invoke-static {v0, v3, v1}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    iget-object v1, p0, Ld/r;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v3, p0, Ld/r;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/c/b;->a([BI)V

    const/16 v1, 0xa

    invoke-static {v0, v1, v2}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    new-instance v1, Lcom/c/b;

    new-array v2, v5, [B

    invoke-direct {v1, v2, v6}, Lcom/c/b;-><init>([BI)V

    invoke-static {v1, v5, v0}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    iput-object v1, p0, Ld/r;->c:Lcom/c/b;

    iget-object v0, p0, Ld/r;->c:Lcom/c/b;

    return-object v0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ld/r;->a:I

    return-void
.end method
