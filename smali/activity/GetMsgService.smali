.class public Lactivity/GetMsgService;
.super Landroid/app/Service;


# instance fields
.field private a:Lactivity/MyApplication;

.field private b:Lcom/b/i;

.field private c:Lcom/b/d;

.field private d:Lcom/b/ad;

.field private e:Landroid/app/NotificationManager;

.field private f:Z

.field private g:Landroid/app/Notification;

.field private h:Landroid/content/Context;

.field private i:Lcom/d/a;

.field private j:Lcom/a/d;

.field private k:Lcom/a/g;

.field private l:Lcom/a/f;

.field private m:Lcom/c/l;

.field private n:Lcom/a/c;

.field private o:Landroid/content/BroadcastReceiver;

.field private p:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lactivity/GetMsgService;->f:Z

    iput-object p0, p0, Lactivity/GetMsgService;->h:Landroid/content/Context;

    new-instance v0, Lactivity/aw;

    invoke-direct {v0, p0}, Lactivity/aw;-><init>(Lactivity/GetMsgService;)V

    iput-object v0, p0, Lactivity/GetMsgService;->o:Landroid/content/BroadcastReceiver;

    new-instance v0, Lactivity/ax;

    invoke-direct {v0, p0}, Lactivity/ax;-><init>(Lactivity/GetMsgService;)V

    iput-object v0, p0, Lactivity/GetMsgService;->p:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lactivity/GetMsgService;)Landroid/app/Notification;
    .locals 1

    iget-object v0, p0, Lactivity/GetMsgService;->g:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic a(Lactivity/GetMsgService;Landroid/app/Notification;)V
    .locals 0

    iput-object p1, p0, Lactivity/GetMsgService;->g:Landroid/app/Notification;

    return-void
.end method

.method static synthetic b(Lactivity/GetMsgService;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lactivity/GetMsgService;->e:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic c(Lactivity/GetMsgService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lactivity/GetMsgService;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lactivity/GetMsgService;)Lactivity/MyApplication;
    .locals 1

    iget-object v0, p0, Lactivity/GetMsgService;->a:Lactivity/MyApplication;

    return-object v0
.end method

.method static synthetic e(Lactivity/GetMsgService;)Lcom/d/a;
    .locals 1

    iget-object v0, p0, Lactivity/GetMsgService;->i:Lcom/d/a;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "MsgService"

    const-string v1, "Create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.common.activitystart"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lactivity/GetMsgService;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lactivity/GetMsgService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lactivity/GetMsgService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lactivity/GetMsgService;->e:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Lactivity/GetMsgService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lactivity/MyApplication;

    iput-object v0, p0, Lactivity/GetMsgService;->a:Lactivity/MyApplication;

    iget-object v0, p0, Lactivity/GetMsgService;->a:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->h()Lcom/c/l;

    move-result-object v0

    iput-object v0, p0, Lactivity/GetMsgService;->m:Lcom/c/l;

    new-instance v0, Lcom/d/a;

    const-string v1, "saveUser"

    invoke-direct {v0, p0, v1}, Lcom/d/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lactivity/GetMsgService;->i:Lcom/d/a;

    iget-object v0, p0, Lactivity/GetMsgService;->a:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->b()Lcom/b/i;

    move-result-object v0

    iput-object v0, p0, Lactivity/GetMsgService;->b:Lcom/b/i;

    iget-object v0, p0, Lactivity/GetMsgService;->a:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->d()Lcom/b/d;

    move-result-object v0

    iput-object v0, p0, Lactivity/GetMsgService;->c:Lcom/b/d;

    iget-object v0, p0, Lactivity/GetMsgService;->a:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->c()Lcom/b/ad;

    move-result-object v0

    iput-object v0, p0, Lactivity/GetMsgService;->d:Lcom/b/ad;

    iget-object v0, p0, Lactivity/GetMsgService;->a:Lactivity/MyApplication;

    iget-object v1, p0, Lactivity/GetMsgService;->e:Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Lactivity/MyApplication;->a(Landroid/app/NotificationManager;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "MsgService"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lactivity/GetMsgService;->j:Lcom/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lactivity/GetMsgService;->j:Lcom/a/d;

    invoke-virtual {v0}, Lcom/a/d;->b()V

    iput-object v2, p0, Lactivity/GetMsgService;->j:Lcom/a/d;

    :cond_0
    iget-object v0, p0, Lactivity/GetMsgService;->l:Lcom/a/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lactivity/GetMsgService;->l:Lcom/a/f;

    invoke-virtual {v0}, Lcom/a/f;->a()V

    iput-object v2, p0, Lactivity/GetMsgService;->l:Lcom/a/f;

    :cond_1
    iget-object v0, p0, Lactivity/GetMsgService;->n:Lcom/a/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lactivity/GetMsgService;->n:Lcom/a/c;

    invoke-virtual {v0}, Lcom/a/c;->a()V

    iput-object v2, p0, Lactivity/GetMsgService;->n:Lcom/a/c;

    :cond_2
    iget-object v0, p0, Lactivity/GetMsgService;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lactivity/GetMsgService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lactivity/GetMsgService;->e:Landroid/app/NotificationManager;

    const/16 v1, 0x911

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lactivity/GetMsgService;->a:Lactivity/MyApplication;

    invoke-virtual {v0, v2}, Lactivity/MyApplication;->a(Landroid/app/NotificationManager;)V

    iget-object v0, p0, Lactivity/GetMsgService;->a:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->a()V

    iget-object v0, p0, Lactivity/GetMsgService;->a:Lactivity/MyApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lactivity/MyApplication;->a(Z)V

    iget-object v0, p0, Lactivity/GetMsgService;->b:Lcom/b/i;

    invoke-virtual {v0, v2}, Lcom/b/i;->a(Lcom/b/q;)V

    iget-object v0, p0, Lactivity/GetMsgService;->d:Lcom/b/ad;

    invoke-virtual {v0, v2, v2}, Lcom/b/ad;->a(Lcom/b/q;Lcom/b/q;)V

    iget-object v0, p0, Lactivity/GetMsgService;->b:Lcom/b/i;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lactivity/GetMsgService;->b:Lcom/b/i;

    invoke-virtual {v0}, Lcom/b/i;->e()V

    :cond_3
    iget-object v0, p0, Lactivity/GetMsgService;->d:Lcom/b/ad;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lactivity/GetMsgService;->d:Lcom/b/ad;

    :cond_4
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    const-string v0, "MsgService"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lactivity/GetMsgService;->a:Lactivity/MyApplication;

    invoke-virtual {v0, v6}, Lactivity/MyApplication;->a(Z)V

    new-instance v0, Lcom/d/a;

    invoke-virtual {p0}, Lactivity/GetMsgService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "saveUser"

    invoke-direct {v0, v1, v2}, Lcom/d/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lactivity/GetMsgService;->i:Lcom/d/a;

    iget-object v0, p0, Lactivity/GetMsgService;->i:Lcom/d/a;

    invoke-virtual {v0, v5}, Lcom/d/a;->b(Z)V

    new-instance v0, Lcom/a/d;

    invoke-direct {v0, p0}, Lcom/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lactivity/GetMsgService;->j:Lcom/a/d;

    new-instance v0, Lcom/a/g;

    invoke-direct {v0, p0}, Lcom/a/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lactivity/GetMsgService;->k:Lcom/a/g;

    new-instance v0, Lcom/a/f;

    invoke-direct {v0, p0}, Lcom/a/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lactivity/GetMsgService;->l:Lcom/a/f;

    new-instance v0, Lcom/a/c;

    invoke-direct {v0, p0}, Lcom/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lactivity/GetMsgService;->n:Lcom/a/c;

    iget-object v0, p0, Lactivity/GetMsgService;->j:Lcom/a/d;

    iget-object v1, p0, Lactivity/GetMsgService;->i:Lcom/d/a;

    invoke-virtual {v1}, Lcom/d/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/d;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/b/ag;

    iget-object v1, p0, Lactivity/GetMsgService;->h:Landroid/content/Context;

    iget-object v2, p0, Lactivity/GetMsgService;->p:Landroid/os/Handler;

    iget-object v3, p0, Lactivity/GetMsgService;->a:Lactivity/MyApplication;

    invoke-direct {v0, v1, v2, v3}, Lcom/b/ag;-><init>(Landroid/content/Context;Landroid/os/Handler;Lactivity/MyApplication;)V

    iget-object v1, p0, Lactivity/GetMsgService;->j:Lcom/a/d;

    iget-object v2, p0, Lactivity/GetMsgService;->k:Lcom/a/g;

    iget-object v3, p0, Lactivity/GetMsgService;->l:Lcom/a/f;

    iget-object v4, p0, Lactivity/GetMsgService;->n:Lcom/a/c;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/b/ag;->a(Lcom/a/d;Lcom/a/g;Lcom/a/f;Lcom/a/c;)V

    iget-object v1, p0, Lactivity/GetMsgService;->b:Lcom/b/i;

    invoke-virtual {v1, v0}, Lcom/b/i;->a(Lcom/b/q;)V

    new-instance v0, Lcom/b/af;

    iget-object v1, p0, Lactivity/GetMsgService;->h:Landroid/content/Context;

    iget-object v2, p0, Lactivity/GetMsgService;->p:Landroid/os/Handler;

    iget-object v3, p0, Lactivity/GetMsgService;->a:Lactivity/MyApplication;

    invoke-direct {v0, v1, v2, v3}, Lcom/b/af;-><init>(Landroid/content/Context;Landroid/os/Handler;Lactivity/MyApplication;)V

    iget-object v1, p0, Lactivity/GetMsgService;->j:Lcom/a/d;

    iget-object v2, p0, Lactivity/GetMsgService;->k:Lcom/a/g;

    iget-object v3, p0, Lactivity/GetMsgService;->l:Lcom/a/f;

    iget-object v4, p0, Lactivity/GetMsgService;->n:Lcom/a/c;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/b/af;->a(Lcom/a/d;Lcom/a/g;Lcom/a/f;Lcom/a/c;)V

    iget-object v1, p0, Lactivity/GetMsgService;->c:Lcom/b/d;

    invoke-virtual {v1, v0}, Lcom/b/d;->a(Lcom/b/q;)V

    iget-object v0, p0, Lactivity/GetMsgService;->d:Lcom/b/ad;

    new-instance v1, Lcom/b/ac;

    iget-object v2, p0, Lactivity/GetMsgService;->a:Lactivity/MyApplication;

    invoke-direct {v1, v2, v5}, Lcom/b/ac;-><init>(Lactivity/MyApplication;Z)V

    new-instance v2, Lcom/b/ac;

    iget-object v3, p0, Lactivity/GetMsgService;->a:Lactivity/MyApplication;

    invoke-direct {v2, v3, v6}, Lcom/b/ac;-><init>(Lactivity/MyApplication;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/b/ad;->a(Lcom/b/q;Lcom/b/q;)V

    iget-object v0, p0, Lactivity/GetMsgService;->b:Lcom/b/i;

    iget-object v1, p0, Lactivity/GetMsgService;->i:Lcom/d/a;

    invoke-virtual {v1}, Lcom/d/a;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lactivity/GetMsgService;->l:Lcom/a/f;

    invoke-virtual {v0, v1, v2}, Lcom/b/i;->a(Ljava/lang/String;Lcom/a/f;)V

    return-void
.end method
