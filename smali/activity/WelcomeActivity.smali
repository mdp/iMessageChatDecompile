.class public Lactivity/WelcomeActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Lactivity/MyApplication;

.field private c:Lcom/d/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz p3, :cond_0

    const-string v0, "status"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "EXIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lactivity/WelcomeActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x111101
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lactivity/LoginActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const v1, 0x111101

    invoke-virtual {p0, v0, v1}, Lactivity/WelcomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00cf
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030037

    invoke-virtual {p0, v0}, Lactivity/WelcomeActivity;->setContentView(I)V

    invoke-virtual {p0}, Lactivity/WelcomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lactivity/MyApplication;

    iput-object v0, p0, Lactivity/WelcomeActivity;->b:Lactivity/MyApplication;

    const v0, 0x7f0b00cf

    invoke-virtual {p0, v0}, Lactivity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/WelcomeActivity;->a:Landroid/widget/Button;

    iget-object v0, p0, Lactivity/WelcomeActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/d/a;

    const-string v1, "saveUser"

    invoke-direct {v0, p0, v1}, Lcom/d/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lactivity/WelcomeActivity;->c:Lcom/d/a;

    iget-object v0, p0, Lactivity/WelcomeActivity;->b:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->f()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lactivity/GetMsgService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lactivity/WelcomeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    iget-object v0, p0, Lactivity/WelcomeActivity;->c:Lcom/d/a;

    invoke-virtual {v0}, Lcom/d/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/c/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lactivity/WelcomeActivity;->c:Lcom/d/a;

    invoke-virtual {v0}, Lcom/d/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lactivity/FriendListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lactivity/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lactivity/WelcomeActivity;->finish()V

    invoke-virtual {p0}, Lactivity/WelcomeActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lactivity/WelcomeActivity;->c:Lcom/d/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/d/a;->c(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {p0}, Lcom/umeng/a/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/umeng/a/a;->b(Landroid/content/Context;)V

    return-void
.end method
