.class public abstract Lactivity/MyActivity;
.super Landroid/app/Activity;


# static fields
.field public static j:I


# instance fields
.field private a:I

.field protected b:Landroid/content/Context;

.field protected c:Lcom/a/a;

.field protected d:Lcom/a/d;

.field protected e:Lcom/a/g;

.field protected f:Lcom/a/f;

.field protected g:Lactivity/MyApplication;

.field protected h:Lcom/d/a;

.field protected i:Ljava/lang/String;

.field public k:Z

.field protected l:J

.field private m:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lactivity/MyActivity;->j:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v0, p0, Lactivity/MyActivity;->a:I

    iput-boolean v0, p0, Lactivity/MyActivity;->k:Z

    new-instance v0, Lactivity/bh;

    invoke-direct {v0, p0}, Lactivity/bh;-><init>(Lactivity/MyActivity;)V

    iput-object v0, p0, Lactivity/MyActivity;->m:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(B)V
.end method

.method public abstract a(I)V
.end method

.method public abstract b(B)V
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public d(I)V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.way.message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lactivity/MyActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lactivity/MyActivity;->l:J

    sput-boolean v2, Lcom/c/a;->c:Z

    iput-boolean v2, p0, Lactivity/MyActivity;->k:Z

    const-string v0, "SetisBack create"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BackFlag="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/c/a;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lactivity/MyActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/c/h;->b:F

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/c/h;->a:F

    const-string v0, "Tel "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "width "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/c/h;->a:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Tel "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "height "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/c/h;->b:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lactivity/MyActivity;->b:Landroid/content/Context;

    new-instance v0, Lcom/a/d;

    invoke-direct {v0, p0}, Lcom/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lactivity/MyActivity;->d:Lcom/a/d;

    new-instance v0, Lcom/a/a;

    invoke-direct {v0, p0}, Lcom/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lactivity/MyActivity;->c:Lcom/a/a;

    new-instance v0, Lcom/a/g;

    invoke-direct {v0, p0}, Lcom/a/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lactivity/MyActivity;->e:Lcom/a/g;

    new-instance v0, Lcom/a/f;

    invoke-direct {v0, p0}, Lcom/a/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lactivity/MyActivity;->f:Lcom/a/f;

    invoke-virtual {p0}, Lactivity/MyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lactivity/MyApplication;

    iput-object v0, p0, Lactivity/MyActivity;->g:Lactivity/MyApplication;

    const-string v0, ""

    iput-object v0, p0, Lactivity/MyActivity;->i:Ljava/lang/String;

    new-instance v0, Lcom/d/a;

    const-string v1, "saveUser"

    invoke-direct {v0, p0, v1}, Lcom/d/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lactivity/MyActivity;->h:Lcom/d/a;

    iget-object v0, p0, Lactivity/MyActivity;->g:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->b()Lcom/b/i;

    move-result-object v0

    iget-object v1, p0, Lactivity/MyActivity;->h:Lcom/d/a;

    invoke-virtual {v1}, Lcom/d/a;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/b/i;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lactivity/MyActivity;->h:Lcom/d/a;

    iget v1, p0, Lactivity/MyActivity;->a:I

    invoke-virtual {v0, v1}, Lcom/d/a;->a(I)V

    iget-object v0, p0, Lactivity/MyActivity;->g:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->b()Lcom/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/i;->b()Z

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lactivity/MyActivity;->d:Lcom/a/d;

    invoke-virtual {v0}, Lcom/a/d;->b()V

    iget-object v0, p0, Lactivity/MyActivity;->c:Lcom/a/a;

    invoke-virtual {v0}, Lcom/a/a;->b()V

    iget-object v0, p0, Lactivity/MyActivity;->f:Lcom/a/f;

    invoke-virtual {v0}, Lcom/a/f;->a()V

    return-void
.end method

.method public onStart()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.way.message"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.way.update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.way.querystatus"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.way.loginstep"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.way.readcellphone"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.way.readcellphonesuccess"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lactivity/MyActivity;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lactivity/MyActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sput-boolean v3, Lcom/c/a;->c:Z

    const-string v0, "SetisBack start"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BackFlag="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/c/a;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lactivity/MyActivity;->k:Z

    sget v0, Lactivity/MyActivity;->j:I

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.common.activitystart"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lactivity/MyActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    sget v0, Lactivity/MyActivity;->j:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lactivity/MyActivity;->j:I

    return-void
.end method

.method protected onStop()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    sget v0, Lactivity/MyActivity;->j:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lactivity/MyActivity;->j:I

    sput-boolean v3, Lcom/c/a;->c:Z

    const-string v0, "SetisBack stop"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BackFlag="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/c/a;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lactivity/MyActivity;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lactivity/MyActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v3, p0, Lactivity/MyActivity;->k:Z

    return-void
.end method
