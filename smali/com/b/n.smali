.class public final Lcom/b/n;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/b/m;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/b/m;)V
    .locals 1

    iput-object p1, p0, Lcom/b/n;->a:Lcom/b/m;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/n;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/b/n;->b:Z

    return-void
.end method

.method public final run()V
    .locals 4

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/b/n;->b:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const-string v0, "Heart"

    const-string v1, "Heart Over"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Heart"

    const-string v1, "Heart Beat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/c/j;

    invoke-direct {v0}, Lcom/c/j;-><init>()V

    iget-object v1, p0, Lcom/b/n;->a:Lcom/b/m;

    const/16 v1, 0xb

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x8

    aput-byte v3, v1, v2

    const/4 v2, 0x4

    const/4 v3, 0x5

    aput-byte v3, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x4

    aput-byte v3, v1, v2

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-byte v3, v1, v2

    const/16 v2, 0x8

    const/4 v3, 0x2

    aput-byte v3, v1, v2

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-byte v3, v1, v2

    const/16 v2, 0xa

    const/16 v3, 0x2c

    aput-byte v3, v1, v2

    new-instance v2, Lcom/c/b;

    const/16 v3, 0xb

    invoke-direct {v2, v1, v3}, Lcom/c/b;-><init>([BI)V

    invoke-virtual {v0, v2}, Lcom/c/j;->a(Lcom/c/b;)V

    iget-object v1, p0, Lcom/b/n;->a:Lcom/b/m;

    invoke-static {v1}, Lcom/b/m;->a(Lcom/b/m;)Lcom/b/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/i;->b(Lcom/c/j;)V

    const-wide/32 v1, 0x1d4c0

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    iget-object v1, p0, Lcom/b/n;->a:Lcom/b/m;

    invoke-static {v1}, Lcom/b/m;->a(Lcom/b/m;)Lcom/b/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/i;->b(Lcom/c/j;)V

    new-instance v0, Lcom/c/j;

    invoke-direct {v0}, Lcom/c/j;-><init>()V

    iget-object v1, p0, Lcom/b/n;->a:Lcom/b/m;

    sget-object v1, Le/c;->l:[B

    new-instance v2, Lcom/c/b;

    array-length v3, v1

    invoke-direct {v2, v1, v3}, Lcom/c/b;-><init>([BI)V

    invoke-virtual {v0, v2}, Lcom/c/j;->a(Lcom/c/b;)V

    iget-object v1, p0, Lcom/b/n;->a:Lcom/b/m;

    invoke-static {v1}, Lcom/b/m;->b(Lcom/b/m;)Lcom/b/ad;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/ad;->a(Lcom/c/j;)V

    const-wide/32 v0, 0x1d4c0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0
.end method
