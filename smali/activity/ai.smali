.class final Lactivity/ai;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lactivity/FriendListActivity;


# direct methods
.method constructor <init>(Lactivity/FriendListActivity;)V
    .locals 0

    iput-object p1, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic a(Lactivity/ai;)Lactivity/FriendListActivity;
    .locals 1

    iget-object v0, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    return-object v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    const v7, 0x7f070097

    const v6, 0x7f070044

    const v5, 0x7f070043

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    invoke-static {v0}, Lactivity/FriendListActivity;->a(Lactivity/FriendListActivity;)Lactivity/cp;

    move-result-object v0

    invoke-virtual {v0}, Lactivity/cp;->a()V

    iget-object v0, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lactivity/FriendListActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "msg"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lactivity/FriendListActivity;->a(Lactivity/FriendListActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    invoke-static {v0}, Lactivity/FriendListActivity;->b(Lactivity/FriendListActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne v0, v3, :cond_0

    :pswitch_2
    iget-object v0, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    invoke-virtual {v0}, Lactivity/FriendListActivity;->c()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    invoke-virtual {v0}, Lactivity/FriendListActivity;->f()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    invoke-static {v0}, Lactivity/FriendListActivity;->c(Lactivity/FriendListActivity;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    invoke-virtual {v0}, Lactivity/FriendListActivity;->e()V

    goto :goto_0

    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    iget-object v1, v1, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    const-class v2, Lactivity/ReadFromCellphoneActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    invoke-virtual {v1, v0}, Lactivity/FriendListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    invoke-virtual {v0}, Lactivity/FriendListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    invoke-virtual {v0}, Lactivity/FriendListActivity;->c()V

    iget-object v0, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    invoke-static {v0}, Lactivity/FriendListActivity;->d(Lactivity/FriendListActivity;)V

    iget-object v0, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    iget-object v0, v0, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    iget-object v1, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    iget-object v1, v1, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    const v2, 0x7f07005b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_8
    new-instance v0, Lc/a;

    iget-object v1, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    iget-object v1, v1, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    iget-object v2, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    invoke-static {v2}, Lactivity/FriendListActivity;->e(Lactivity/FriendListActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc/a;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lc/a;->start()V

    goto/16 :goto_0

    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    iget-object v1, v1, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    const-class v2, Lactivity/aboutactivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    invoke-virtual {v1, v0}, Lactivity/FriendListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    invoke-virtual {v0}, Lactivity/FriendListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    iget-object v0, v0, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    iget-object v1, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    iget-object v1, v1, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    const v2, 0x7f070096

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    invoke-virtual {v0}, Lactivity/FriendListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    iget-object v0, v0, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    iget-object v1, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    iget-object v1, v1, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    const v2, 0x7f07007e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    invoke-virtual {v0}, Lactivity/FriendListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    iget-object v2, v2, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    iget-object v2, v2, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    iget-object v2, v2, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    const v3, 0x7f070098

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    iget-object v2, v2, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lactivity/aj;

    invoke-direct {v3, p0, v0}, Lactivity/aj;-><init>(Lactivity/ai;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    iget-object v1, v1, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lactivity/ak;

    invoke-direct {v2, p0}, Lactivity/ak;-><init>(Lactivity/ai;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ":STOPRESONE:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":STOPRESONE:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    invoke-virtual {v2}, Lactivity/FriendListActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    iget-object v3, v3, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    iget-object v3, v3, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    iget-object v2, v2, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lactivity/al;

    invoke-direct {v3, p0, v1}, Lactivity/al;-><init>(Lactivity/ai;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    iget-object v1, v1, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lactivity/am;

    invoke-direct {v2, p0}, Lactivity/am;-><init>(Lactivity/ai;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :pswitch_e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    iget-object v1, v1, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    const-class v2, Lactivity/HelpActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    invoke-virtual {v1, v0}, Lactivity/FriendListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_f
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    iget-object v1, v1, Lactivity/FriendListActivity;->b:Landroid/content/Context;

    const-class v2, Lactivity/NotifyActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    invoke-virtual {v1, v0}, Lactivity/FriendListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    invoke-static {v0}, Lactivity/FriendListActivity;->f(Lactivity/FriendListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    invoke-static {v0}, Lactivity/FriendListActivity;->g(Lactivity/FriendListActivity;)V

    iget-object v0, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    invoke-virtual {v0}, Lactivity/FriendListActivity;->b()V

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, p0, Lactivity/ai;->a:Lactivity/FriendListActivity;

    invoke-virtual {v0}, Lactivity/FriendListActivity;->b()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_d
        :pswitch_2
        :pswitch_11
    .end packed-switch
.end method
