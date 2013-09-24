.class final Lcom/umeng/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/umeng/a/f;

.field private b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/umeng/a/f;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/umeng/a/h;->a:Lcom/umeng/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/a/h;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/umeng/a/h;->a:Lcom/umeng/a/f;

    invoke-static {v0}, Lcom/umeng/a/f;->a(Lcom/umeng/a/f;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/umeng/a/h;->a:Lcom/umeng/a/f;

    iget-object v2, p0, Lcom/umeng/a/h;->b:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/umeng/a/f;->a(Lcom/umeng/a/f;Landroid/content/Context;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v0

    const-string v1, "MobclickAgent"

    const-string v2, "Exception occurred in ReportMessageHandler"

    invoke-static {v1, v2, v0}, Lcom/umeng/common/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "MobclickAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3
    iget-object v0, p0, Lcom/umeng/a/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/a/m;->d(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
