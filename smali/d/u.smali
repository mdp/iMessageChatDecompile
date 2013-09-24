.class public final Ld/u;
.super Ld/t;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/c/b;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:J

.field private l:I


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

    const-string v1, "Accept"

    const-string v2, "application/vnd.com.apple.me.ubchunk+protobuf"

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

    iget-object v2, p0, Ld/u;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x-apple-mmcs-auth"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Ld/u;->d:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ld/u;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ld/u;->e:Ljava/lang/String;

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

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ld/u;->d:Ljava/lang/String;

    iput-object p2, p0, Ld/u;->c:Ljava/lang/String;

    iput-object p3, p0, Ld/u;->e:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)V
    .locals 0

    iput-wide p4, p0, Ld/u;->j:J

    iput-wide p6, p0, Ld/u;->k:J

    iput p8, p0, Ld/u;->l:I

    iput-object p1, p0, Ld/u;->g:Ljava/lang/String;

    iput-object p2, p0, Ld/u;->h:Ljava/lang/String;

    iput-object p3, p0, Ld/u;->i:Ljava/lang/String;

    return-void
.end method

.method public final b()Lcom/c/b;
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v0, Lcom/c/b;

    new-array v1, v5, [B

    invoke-direct {v0, v1, v6}, Lcom/c/b;-><init>([BI)V

    new-instance v0, Lcom/c/b;

    new-array v1, v5, [B

    invoke-direct {v0, v1, v6}, Lcom/c/b;-><init>([BI)V

    new-instance v1, Lcom/c/b;

    iget-object v2, p0, Ld/u;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Ld/u;->g:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/c/b;-><init>([BI)V

    invoke-static {v0, v5, v1}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    const/16 v1, 0xc9

    invoke-static {v0, v7, v1}, Ld/f;->a(Lcom/c/b;II)V

    const-string v1, "Content-MD5"

    iget-object v2, p0, Ld/u;->h:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/c/b;

    new-array v3, v5, [B

    invoke-direct {v2, v3, v6}, Lcom/c/b;-><init>([BI)V

    new-instance v3, Lcom/c/b;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v3, v4, v1}, Lcom/c/b;-><init>([BI)V

    invoke-static {v2, v5, v3}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    new-instance v1, Lcom/c/b;

    iget-object v3, p0, Ld/u;->h:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iget-object v4, p0, Ld/u;->h:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v1, v3, v4}, Lcom/c/b;-><init>([BI)V

    invoke-static {v2, v7, v1}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    invoke-static {v0, v8, v2}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    :cond_0
    iget-object v1, p0, Ld/u;->i:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/c/b;

    new-array v2, v5, [B

    invoke-direct {v1, v2, v6}, Lcom/c/b;-><init>([BI)V

    const-string v2, "Etag"

    new-instance v3, Lcom/c/b;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v3, v4, v2}, Lcom/c/b;-><init>([BI)V

    invoke-static {v1, v5, v3}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    new-instance v2, Lcom/c/b;

    iget-object v3, p0, Ld/u;->i:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iget-object v4, p0, Ld/u;->i:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/c/b;-><init>([BI)V

    invoke-static {v1, v7, v2}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    invoke-static {v0, v8, v1}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    :cond_1
    iget-object v1, p0, Ld/u;->h:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ld/u;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    const/4 v2, 0x7

    new-instance v3, Lcom/c/b;

    array-length v4, v1

    invoke-direct {v3, v1, v4}, Lcom/c/b;-><init>([BI)V

    invoke-static {v0, v2, v3}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    :cond_2
    new-instance v1, Lcom/c/b;

    new-array v2, v5, [B

    invoke-direct {v1, v2, v6}, Lcom/c/b;-><init>([BI)V

    const-string v2, "contentlength.bytes"

    new-instance v3, Lcom/c/b;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v3, v4, v2}, Lcom/c/b;-><init>([BI)V

    invoke-static {v1, v5, v3}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    iget v2, p0, Ld/u;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/c/b;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v3, v4, v2}, Lcom/c/b;-><init>([BI)V

    invoke-static {v1, v7, v3}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    invoke-static {v0, v9, v1}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    new-instance v1, Lcom/c/b;

    new-array v2, v5, [B

    invoke-direct {v1, v2, v6}, Lcom/c/b;-><init>([BI)V

    const-string v2, "vendor.roundtrip.millis"

    new-instance v3, Lcom/c/b;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v3, v4, v2}, Lcom/c/b;-><init>([BI)V

    invoke-static {v1, v5, v3}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    iget-wide v2, p0, Ld/u;->k:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/c/b;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v3, v4, v2}, Lcom/c/b;-><init>([BI)V

    invoke-static {v1, v7, v3}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    invoke-static {v0, v9, v1}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    new-instance v1, Lcom/c/b;

    new-array v2, v5, [B

    invoke-direct {v1, v2, v6}, Lcom/c/b;-><init>([BI)V

    const-string v2, "authorizePut.millis"

    new-instance v3, Lcom/c/b;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v3, v4, v2}, Lcom/c/b;-><init>([BI)V

    invoke-static {v1, v5, v3}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    iget-wide v2, p0, Ld/u;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/c/b;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v3, v4, v2}, Lcom/c/b;-><init>([BI)V

    invoke-static {v1, v7, v3}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    const/16 v2, 0x9

    invoke-static {v0, v2, v1}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    new-instance v1, Lcom/c/b;

    new-array v2, v5, [B

    invoke-direct {v1, v2, v6}, Lcom/c/b;-><init>([BI)V

    const-string v2, "chunking.time.millis"

    new-instance v3, Lcom/c/b;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v3, v4, v2}, Lcom/c/b;-><init>([BI)V

    invoke-static {v1, v5, v3}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    iget v2, p0, Ld/u;->l:I

    div-int/lit8 v2, v2, 0x64

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/c/b;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v3, v4, v2}, Lcom/c/b;-><init>([BI)V

    invoke-static {v1, v7, v3}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    const/16 v2, 0x9

    invoke-static {v0, v2, v1}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    const/16 v1, 0xa

    new-instance v2, Lcom/c/b;

    iget-object v3, p0, Ld/u;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iget-object v4, p0, Ld/u;->e:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/c/b;-><init>([BI)V

    invoke-static {v0, v1, v2}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    new-instance v1, Lcom/c/b;

    new-array v2, v5, [B

    invoke-direct {v1, v2, v6}, Lcom/c/b;-><init>([BI)V

    invoke-static {v1, v5, v0}, Ld/f;->a(Lcom/c/b;ILcom/c/b;)V

    iput-object v1, p0, Ld/u;->f:Lcom/c/b;

    iget-object v0, p0, Ld/u;->f:Lcom/c/b;

    return-object v0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ld/u;->a:I

    return-void
.end method
