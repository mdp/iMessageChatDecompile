.class final Lactivity/ax;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lactivity/GetMsgService;


# direct methods
.method constructor <init>(Lactivity/GetMsgService;)V
    .locals 0

    iput-object p1, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 13

    const/4 v12, 0x0

    const/16 v11, 0x911

    const/16 v10, 0x64

    const/16 v9, 0x20

    const/4 v8, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/c/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/c/j;->m()Lcom/b/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/w;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/b/w;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    invoke-static {v3}, Lactivity/GetMsgService;->c(Lactivity/GetMsgService;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    invoke-static {v3}, Lactivity/GetMsgService;->c(Lactivity/GetMsgService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/c/g;->a(Landroid/widget/TextView;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    invoke-static {v2}, Lactivity/GetMsgService;->d(Lactivity/GetMsgService;)Lactivity/MyApplication;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lactivity/MyApplication;->c(I)V

    iget-object v2, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    invoke-static {v2}, Lactivity/GetMsgService;->d(Lactivity/GetMsgService;)Lactivity/MyApplication;

    move-result-object v2

    invoke-virtual {v2}, Lactivity/MyApplication;->m()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    new-instance v6, Landroid/app/Notification;

    const v7, 0x7f0203c6

    invoke-direct {v6, v7, v1, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    invoke-static {v5, v6}, Lactivity/GetMsgService;->a(Lactivity/GetMsgService;Landroid/app/Notification;)V

    iget-object v1, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    invoke-static {v1}, Lactivity/GetMsgService;->a(Lactivity/GetMsgService;)Landroid/app/Notification;

    move-result-object v1

    iput v9, v1, Landroid/app/Notification;->flags:I

    iget-object v1, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    invoke-static {v1}, Lactivity/GetMsgService;->e(Lactivity/GetMsgService;)Lcom/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/d/a;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    invoke-static {v1}, Lactivity/GetMsgService;->a(Lactivity/GetMsgService;)Landroid/app/Notification;

    move-result-object v1

    iget v3, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v1, Landroid/app/Notification;->defaults:I

    :cond_1
    iget-object v1, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    invoke-static {v1}, Lactivity/GetMsgService;->e(Lactivity/GetMsgService;)Lcom/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/d/a;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    invoke-static {v1}, Lactivity/GetMsgService;->a(Lactivity/GetMsgService;)Landroid/app/Notification;

    move-result-object v1

    iget v3, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/app/Notification;->defaults:I

    :cond_2
    iget-object v1, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    invoke-static {v1}, Lactivity/GetMsgService;->a(Lactivity/GetMsgService;)Landroid/app/Notification;

    move-result-object v1

    iput-object v12, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    invoke-static {v1}, Lactivity/GetMsgService;->e(Lactivity/GetMsgService;)Lcom/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/d/a;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    invoke-static {v1}, Lactivity/GetMsgService;->a(Lactivity/GetMsgService;)Landroid/app/Notification;

    move-result-object v1

    const v3, 0xffffff

    iput v3, v1, Landroid/app/Notification;->ledARGB:I

    iget-object v1, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    invoke-static {v1}, Lactivity/GetMsgService;->a(Lactivity/GetMsgService;)Landroid/app/Notification;

    move-result-object v1

    iput v10, v1, Landroid/app/Notification;->ledOnMS:I

    iget-object v1, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    invoke-static {v1}, Lactivity/GetMsgService;->a(Lactivity/GetMsgService;)Landroid/app/Notification;

    move-result-object v1

    iput v10, v1, Landroid/app/Notification;->ledOffMS:I

    iget-object v1, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    invoke-static {v1}, Lactivity/GetMsgService;->a(Lactivity/GetMsgService;)Landroid/app/Notification;

    move-result-object v1

    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v1, Landroid/app/Notification;->flags:I

    :cond_3
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    invoke-static {v3}, Lactivity/GetMsgService;->c(Lactivity/GetMsgService;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lactivity/FriendListActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    invoke-static {v3}, Lactivity/GetMsgService;->c(Lactivity/GetMsgService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v3, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    invoke-static {v3}, Lactivity/GetMsgService;->a(Lactivity/GetMsgService;)Landroid/app/Notification;

    move-result-object v3

    iget-object v4, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    invoke-static {v4}, Lactivity/GetMsgService;->c(Lactivity/GetMsgService;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    invoke-static {v6}, Lactivity/GetMsgService;->e(Lactivity/GetMsgService;)Lcom/d/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/d/a;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    invoke-static {v5}, Lactivity/GetMsgService;->c(Lactivity/GetMsgService;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f070070

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    invoke-static {v0}, Lactivity/GetMsgService;->b(Lactivity/GetMsgService;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    invoke-static {v1}, Lactivity/GetMsgService;->a(Lactivity/GetMsgService;)Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    invoke-static {v0}, Lactivity/GetMsgService;->b(Lactivity/GetMsgService;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    iget-object v0, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    invoke-static {v0, v1}, Lactivity/GetMsgService;->a(Lactivity/GetMsgService;Landroid/app/Notification;)V

    iget-object v0, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    invoke-static {v0}, Lactivity/GetMsgService;->a(Lactivity/GetMsgService;)Landroid/app/Notification;

    move-result-object v0

    iput v9, v0, Landroid/app/Notification;->flags:I

    iget-object v0, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    invoke-static {v0}, Lactivity/GetMsgService;->e(Lactivity/GetMsgService;)Lcom/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    invoke-static {v0}, Lactivity/GetMsgService;->a(Lactivity/GetMsgService;)Landroid/app/Notification;

    move-result-object v0

    iget v1, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->defaults:I

    :cond_4
    iget-object v0, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    invoke-static {v0}, Lactivity/GetMsgService;->e(Lactivity/GetMsgService;)Lcom/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    invoke-static {v0}, Lactivity/GetMsgService;->a(Lactivity/GetMsgService;)Landroid/app/Notification;

    move-result-object v0

    iget v1, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->defaults:I

    :cond_5
    iget-object v0, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    invoke-static {v0}, Lactivity/GetMsgService;->a(Lactivity/GetMsgService;)Landroid/app/Notification;

    move-result-object v0

    iput-object v12, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    invoke-static {v0}, Lactivity/GetMsgService;->b(Lactivity/GetMsgService;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lactivity/ax;->a:Lactivity/GetMsgService;

    invoke-static {v1}, Lactivity/GetMsgService;->a(Lactivity/GetMsgService;)Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
