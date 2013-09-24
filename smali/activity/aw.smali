.class final Lactivity/aw;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lactivity/GetMsgService;


# direct methods
.method constructor <init>(Lactivity/GetMsgService;)V
    .locals 0

    iput-object p1, p0, Lactivity/aw;->a:Lactivity/GetMsgService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lactivity/aw;->a:Lactivity/GetMsgService;

    invoke-static {v0}, Lactivity/GetMsgService;->a(Lactivity/GetMsgService;)Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lactivity/aw;->a:Lactivity/GetMsgService;

    invoke-static {v0}, Lactivity/GetMsgService;->b(Lactivity/GetMsgService;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    iget-object v0, p0, Lactivity/aw;->a:Lactivity/GetMsgService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lactivity/GetMsgService;->a(Lactivity/GetMsgService;Landroid/app/Notification;)V

    :cond_0
    return-void
.end method
