.class final Lactivity/ba;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lactivity/LoginActivity;


# direct methods
.method constructor <init>(Lactivity/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lactivity/ba;->a:Lactivity/LoginActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v4, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lactivity/ba;->a:Lactivity/LoginActivity;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "msg"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lactivity/LoginActivity;->a(Lactivity/LoginActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lactivity/ba;->a:Lactivity/LoginActivity;

    invoke-static {v0, v4}, Lactivity/LoginActivity;->a(Lactivity/LoginActivity;Z)V

    iget-object v0, p0, Lactivity/ba;->a:Lactivity/LoginActivity;

    invoke-virtual {v0}, Lactivity/LoginActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lactivity/ba;->a:Lactivity/LoginActivity;

    invoke-virtual {v0}, Lactivity/LoginActivity;->b()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lactivity/ba;->a:Lactivity/LoginActivity;

    const/4 v2, 0x0

    const-string v3, ":STOPRESONE:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lactivity/LoginActivity;->a(Lactivity/LoginActivity;Ljava/lang/String;)V

    iget-object v1, p0, Lactivity/ba;->a:Lactivity/LoginActivity;

    invoke-static {v1, v4}, Lactivity/LoginActivity;->b(Lactivity/LoginActivity;Z)V

    iget-object v1, p0, Lactivity/ba;->a:Lactivity/LoginActivity;

    const-string v2, ":STOPRESONE:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lactivity/LoginActivity;->b(Lactivity/LoginActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lactivity/ba;->a:Lactivity/LoginActivity;

    invoke-virtual {v0}, Lactivity/LoginActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lactivity/ba;->a:Lactivity/LoginActivity;

    invoke-virtual {v0}, Lactivity/LoginActivity;->c()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lactivity/ba;->a:Lactivity/LoginActivity;

    invoke-static {v0}, Lactivity/LoginActivity;->a(Lactivity/LoginActivity;)Lcom/b/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/aa;->a()I

    move-result v0

    iget-object v1, p0, Lactivity/ba;->a:Lactivity/LoginActivity;

    invoke-static {v1}, Lactivity/LoginActivity;->a(Lactivity/LoginActivity;)Lcom/b/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/aa;->b()J

    invoke-static {}, Lactivity/LoginActivity;->e()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lactivity/ba;->a:Lactivity/LoginActivity;

    invoke-static {v0}, Lactivity/LoginActivity;->b(Lactivity/LoginActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Login"

    const-string v1, " time out over"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lactivity/ba;->a:Lactivity/LoginActivity;

    iget-object v0, v0, Lactivity/LoginActivity;->g:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->b()Lcom/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/i;->d()V

    goto/16 :goto_0

    :cond_1
    const-wide/16 v0, 0x7530

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lactivity/LoginActivity;->f()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long v4, v0, v2

    iget-object v0, p0, Lactivity/ba;->a:Lactivity/LoginActivity;

    invoke-static {v0}, Lactivity/LoginActivity;->a(Lactivity/LoginActivity;)Lcom/b/aa;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lactivity/ba;->a:Lactivity/LoginActivity;

    invoke-static {v0}, Lactivity/LoginActivity;->a(Lactivity/LoginActivity;)Lcom/b/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/aa;->c()V

    :cond_2
    iget-object v7, p0, Lactivity/ba;->a:Lactivity/LoginActivity;

    new-instance v0, Lcom/b/aa;

    invoke-static {}, Lactivity/LoginActivity;->e()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v6, p0, Lactivity/ba;->a:Lactivity/LoginActivity;

    invoke-static {v6}, Lactivity/LoginActivity;->c(Lactivity/LoginActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/b/aa;-><init>(IJJLandroid/os/Handler;)V

    invoke-static {v7, v0}, Lactivity/LoginActivity;->a(Lactivity/LoginActivity;Lcom/b/aa;)V

    iget-object v0, p0, Lactivity/ba;->a:Lactivity/LoginActivity;

    invoke-static {v0}, Lactivity/LoginActivity;->a(Lactivity/LoginActivity;)Lcom/b/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/aa;->start()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
