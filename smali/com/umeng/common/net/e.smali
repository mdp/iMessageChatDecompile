.class final Lcom/umeng/common/net/e;
.super Landroid/os/AsyncTask;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field final synthetic c:Lcom/umeng/common/net/DownloadingService;

.field private d:Lcom/umeng/common/net/g;


# direct methods
.method public constructor <init>(Lcom/umeng/common/net/DownloadingService;ILcom/umeng/common/net/g;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/umeng/common/net/e;->c:Lcom/umeng/common/net/DownloadingService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput p2, p0, Lcom/umeng/common/net/e;->a:I

    iput-object p3, p0, Lcom/umeng/common/net/e;->d:Lcom/umeng/common/net/g;

    iput-object p4, p0, Lcom/umeng/common/net/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    check-cast p1, [Ljava/lang/String;

    aget-object v0, p1, v4

    aget-object v1, p1, v3

    aget-object v2, p1, v5

    invoke-static {v0, v1, v2}, Lcom/umeng/common/util/DeltaUpdate;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/io/File;

    aget-object v2, p1, v5

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    if-ne v0, v3, :cond_1

    new-instance v1, Ljava/io/File;

    aget-object v2, p1, v3

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/umeng/common/util/b;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/common/net/e;->d:Lcom/umeng/common/net/g;

    iget-object v2, v2, Lcom/umeng/common/net/g;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file patch error"

    invoke-static {v0, v1}, Lcom/umeng/common/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file patch success"

    invoke-static {v1, v2}, Lcom/umeng/common/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file patch error"

    invoke-static {v1, v2}, Lcom/umeng/common/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_2

    new-instance v0, Landroid/app/Notification;

    const v1, 0x1080082

    const-string v2, "\u66f4\u65b0\u5b8c\u6210\uff0c\u8bf7\u70b9\u51fb\u5b89\u88c5"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/umeng/common/net/e;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/umeng/common/net/e;->c:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v2}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/common/net/e;->c:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v3}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/umeng/common/net/e;->c:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v4}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/common/b;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u66f4\u65b0\u5b8c\u6210\uff0c\u8bf7\u70b9\u51fb\u5b89\u88c5"

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v2, 0x10

    iput v2, v0, Landroid/app/Notification;->flags:I

    iget-object v2, p0, Lcom/umeng/common/net/e;->c:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v2}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v2

    iget v3, p0, Lcom/umeng/common/net/e;->a:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/umeng/common/net/e;->c:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/common/net/DownloadingService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/common/net/e;->c:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v0

    iget v2, p0, Lcom/umeng/common/net/e;->a:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/umeng/common/net/e;->c:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "filename"

    iget-object v2, p0, Lcom/umeng/common/net/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v7, v1, Landroid/os/Message;->what:I

    iput v6, v1, Landroid/os/Message;->arg1:I

    iget v2, p0, Lcom/umeng/common/net/e;->a:I

    iput v2, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/common/net/e;->d:Lcom/umeng/common/net/g;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/common/net/e;->d:Lcom/umeng/common/net/g;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_1
    iget-object v0, p0, Lcom/umeng/common/net/e;->c:Lcom/umeng/common/net/DownloadingService;

    iget v1, p0, Lcom/umeng/common/net/e;->a:I

    invoke-static {v0, v1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/umeng/common/net/e;->c:Lcom/umeng/common/net/DownloadingService;

    iget v1, p0, Lcom/umeng/common/net/e;->a:I

    invoke-static {v0, v1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/umeng/common/net/e;->c:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v0

    iget v1, p0, Lcom/umeng/common/net/e;->a:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "filename"

    iget-object v2, p0, Lcom/umeng/common/net/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v7, v1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->arg1:I

    iget v2, p0, Lcom/umeng/common/net/e;->a:I

    iput v2, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_1
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/common/net/e;->d:Lcom/umeng/common/net/g;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/common/net/e;->d:Lcom/umeng/common/net/g;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_3
    iget-object v0, p0, Lcom/umeng/common/net/e;->c:Lcom/umeng/common/net/DownloadingService;

    iget v1, p0, Lcom/umeng/common/net/e;->a:I

    invoke-static {v0, v1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/umeng/common/net/e;->c:Lcom/umeng/common/net/DownloadingService;

    iget v1, p0, Lcom/umeng/common/net/e;->a:I

    invoke-static {v0, v1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;I)V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
