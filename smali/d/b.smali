.class public final Ld/b;
.super Ljava/io/FilterOutputStream;


# instance fields
.field final synthetic a:Ld/a;

.field private b:Lcom/b/r;

.field private c:Lcom/c/b;

.field private d:J

.field private e:I


# direct methods
.method public constructor <init>(Ld/a;Ljava/io/OutputStream;Lcom/c/b;Lcom/b/r;I)V
    .locals 2

    iput-object p1, p0, Ld/b;->a:Ld/a;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p3, p0, Ld/b;->c:Lcom/c/b;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ld/b;->d:J

    iput-object p4, p0, Ld/b;->b:Lcom/b/r;

    iput p5, p0, Ld/b;->e:I

    return-void
.end method


# virtual methods
.method public final write(I)V
    .locals 5

    const/4 v4, 0x0

    iget-wide v0, p0, Ld/b;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/b;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ld/b;->c:Lcom/c/b;

    invoke-virtual {v1}, Lcom/c/b;->a()[B

    move-result-object v1

    iget-object v2, p0, Ld/b;->c:Lcom/c/b;

    invoke-virtual {v2}, Lcom/c/b;->b()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    iget-wide v0, p0, Ld/b;->d:J

    iget-object v2, p0, Ld/b;->c:Lcom/c/b;

    invoke-virtual {v2}, Lcom/c/b;->b()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ld/b;->d:J

    iget-object v0, p0, Ld/b;->a:Ld/a;

    invoke-static {v0}, Ld/a;->a(Ld/a;)Ljava/security/MessageDigest;

    move-result-object v0

    iget-object v1, p0, Ld/b;->c:Lcom/c/b;

    invoke-virtual {v1}, Lcom/c/b;->a()[B

    move-result-object v1

    iget-object v2, p0, Ld/b;->c:Lcom/c/b;

    invoke-virtual {v2}, Lcom/c/b;->b()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Ljava/security/MessageDigest;->update([BII)V

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte v1, p1

    aput-byte v1, v0, v4

    iget-object v1, p0, Ld/b;->a:Ld/a;

    invoke-static {v1}, Ld/a;->a(Ld/a;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    iget-object v0, p0, Ld/b;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-wide v0, p0, Ld/b;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ld/b;->d:J

    const-string v0, "Send data"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Ld/b;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final write([BII)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-wide v0, p0, Ld/b;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/b;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ld/b;->c:Lcom/c/b;

    invoke-virtual {v1}, Lcom/c/b;->a()[B

    move-result-object v1

    iget-object v2, p0, Ld/b;->c:Lcom/c/b;

    invoke-virtual {v2}, Lcom/c/b;->b()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    iget-wide v0, p0, Ld/b;->d:J

    iget-object v2, p0, Ld/b;->c:Lcom/c/b;

    invoke-virtual {v2}, Lcom/c/b;->b()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ld/b;->d:J

    iget-object v0, p0, Ld/b;->a:Ld/a;

    invoke-static {v0}, Ld/a;->a(Ld/a;)Ljava/security/MessageDigest;

    move-result-object v0

    iget-object v1, p0, Ld/b;->c:Lcom/c/b;

    invoke-virtual {v1}, Lcom/c/b;->a()[B

    move-result-object v1

    iget-object v2, p0, Ld/b;->c:Lcom/c/b;

    invoke-virtual {v2}, Lcom/c/b;->b()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Ljava/security/MessageDigest;->update([BII)V

    :cond_0
    iget-object v0, p0, Ld/b;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Ld/b;->a:Ld/a;

    invoke-static {v0}, Ld/a;->a(Ld/a;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    iget-wide v0, p0, Ld/b;->d:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Ld/b;->d:J

    const-string v0, "Send data"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Ld/b;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ld/b;->b:Lcom/b/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/b;->b:Lcom/b/r;

    iget-wide v1, p0, Ld/b;->d:J

    long-to-float v1, v1

    const/high16 v2, 0x3f80

    mul-float/2addr v1, v2

    iget v2, p0, Ld/b;->e:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-interface {v0, v5, v5, v1}, Lcom/b/r;->a(IIF)V

    :cond_1
    return-void
.end method
