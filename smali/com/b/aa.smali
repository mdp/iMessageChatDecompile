.class public final Lcom/b/aa;
.super Ljava/lang/Thread;


# instance fields
.field private a:Z

.field private b:I

.field private c:J

.field private d:J

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(IJJLandroid/os/Handler;)V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v2, p0, Lcom/b/aa;->a:Z

    iput p1, p0, Lcom/b/aa;->b:I

    iput-wide p2, p0, Lcom/b/aa;->c:J

    iput-boolean v2, p0, Lcom/b/aa;->a:Z

    iput-object p6, p0, Lcom/b/aa;->e:Landroid/os/Handler;

    cmp-long v2, p4, v0

    if-gez v2, :cond_0

    move-wide p4, v0

    :cond_0
    iput-wide p4, p0, Lcom/b/aa;->d:J

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/b/aa;->b:I

    return v0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/b/aa;->c:J

    return-wide v0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/aa;->a:Z

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 4

    const-string v0, "TimeWait"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " time "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/b/aa;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-wide v0, p0, Lcom/b/aa;->d:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v0, p0, Lcom/b/aa;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/aa;->e:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "msg"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lcom/b/aa;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
