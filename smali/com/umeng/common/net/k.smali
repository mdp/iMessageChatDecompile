.class final Lcom/umeng/common/net/k;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/umeng/common/net/DownloadingService;


# direct methods
.method constructor <init>(Lcom/umeng/common/net/DownloadingService;)V
    .locals 0

    iput-object p1, p0, Lcom/umeng/common/net/k;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    const/high16 v11, 0x800

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/umeng/common/net/g;

    iget v2, p1, Landroid/os/Message;->arg2:I

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "filename"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Cancel old notification...."

    invoke-static {v1, v4}, Lcom/umeng/common/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/app/Notification;

    const v1, 0x1080082

    const-string v5, "\u4e0b\u8f7d\u5b8c\u6210\uff0c\u8bf7\u70b9\u51fb\u5b89\u88c5"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v1, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    new-instance v5, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-virtual {v5, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v6, "application/vnd.android.package-archive"

    invoke-virtual {v5, v1, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/umeng/common/net/k;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v1

    const/4 v6, 0x0

    const/high16 v7, 0x800

    invoke-static {v1, v6, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v6, p0, Lcom/umeng/common/net/k;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v6}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Lcom/umeng/common/net/g;->b:Ljava/lang/String;

    const-string v8, "\u4e0b\u8f7d\u5b8c\u6210\uff0c\u8bf7\u70b9\u51fb\u5b89\u88c5"

    invoke-virtual {v4, v6, v7, v8, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v1, 0x10

    iput v1, v4, Landroid/app/Notification;->flags:I

    iget-object v6, p0, Lcom/umeng/common/net/k;->a:Lcom/umeng/common/net/DownloadingService;

    iget-object v1, p0, Lcom/umeng/common/net/k;->a:Lcom/umeng/common/net/DownloadingService;

    const-string v7, "notification"

    invoke-virtual {v1, v7}, Lcom/umeng/common/net/DownloadingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-static {v6, v1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/umeng/common/net/k;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v1

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v1, v6, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Show new  notification...."

    invoke-static {v1, v4}, Lcom/umeng/common/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/common/net/k;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/common/net/DownloadingService;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v4

    const-string v6, "isAppOnForeground = %1$B"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/umeng/common/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/umeng/common/net/k;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v1

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v1, p0, Lcom/umeng/common/net/k;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v1

    const-string v4, "%1$10s downloaded. Saved to: %2$s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v0, v0, Lcom/umeng/common/net/g;->b:Ljava/lang/String;

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v3, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "can not install. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/umeng/common/net/k;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v0

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/umeng/common/net/g;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "filename"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/common/net/k;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v3}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/NotificationManager;->cancel(I)V

    new-instance v3, Landroid/app/Notification;

    const v4, 0x1080081

    const-string v5, "\u6b63\u5728\u66f4\u65b0\u5b89\u88c5\u5305"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget-object v4, p0, Lcom/umeng/common/net/k;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v4}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-static {v4, v8, v5, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v5, p0, Lcom/umeng/common/net/k;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v5}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/umeng/common/net/k;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v6}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/umeng/common/b;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u6b63\u5728\u66f4\u65b0\u5b89\u88c5\u5305"

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v4, p0, Lcom/umeng/common/net/k;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v4}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const-string v3, ".patch"

    const-string v4, ".apk"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/umeng/common/net/k;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v4}, Lcom/umeng/common/util/DeltaUpdate;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/umeng/common/net/e;

    iget-object v6, p0, Lcom/umeng/common/net/k;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-direct {v5, v6, v1, v0, v3}, Lcom/umeng/common/net/e;-><init>(Lcom/umeng/common/net/DownloadingService;ILcom/umeng/common/net/g;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    aput-object v4, v0, v8

    aput-object v3, v0, v9

    aput-object v2, v0, v10

    invoke-virtual {v5, v0}, Lcom/umeng/common/net/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
