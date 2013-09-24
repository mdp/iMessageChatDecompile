.class final Lactivity/bh;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lactivity/MyActivity;


# direct methods
.method constructor <init>(Lactivity/MyActivity;)V
    .locals 0

    iput-object p1, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/16 v7, 0x9

    const/4 v9, 0x6

    const/4 v3, 0x0

    const v6, 0x7f070012

    const/4 v8, -0x1

    iget-object v0, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    iput-object p1, v0, Lactivity/MyActivity;->b:Landroid/content/Context;

    iget-object v0, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    iget-object v0, v0, Lactivity/MyActivity;->h:Lcom/d/a;

    invoke-virtual {v0}, Lcom/d/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.way.message"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, "message"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/c/j;

    if-eqz v0, :cond_6

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MyActivity:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/c/j;->i()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {v0}, Lcom/c/j;->j()[B

    move-result-object v2

    aget-byte v2, v2, v7

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    iget-object v2, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    invoke-virtual {v0}, Lcom/c/j;->j()[B

    move-result-object v0

    aget-byte v0, v0, v7

    invoke-virtual {v2, v0}, Lactivity/MyActivity;->b(B)V

    iget-object v0, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    iget-object v0, v0, Lactivity/MyActivity;->d:Lcom/a/d;

    invoke-virtual {v0, v1}, Lcom/a/d;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    invoke-virtual {v0, v8}, Lactivity/MyActivity;->a(B)V

    goto :goto_0

    :sswitch_0
    iget-object v2, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    invoke-virtual {v2}, Lactivity/MyActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    iget-object v2, v2, Lactivity/MyActivity;->b:Landroid/content/Context;

    iget-object v3, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    iget-object v3, v3, Lactivity/MyActivity;->b:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    iget-object v4, v4, Lactivity/MyActivity;->b:Landroid/content/Context;

    const v5, 0x7f07007f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_1
    iget-object v2, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    invoke-virtual {v2}, Lactivity/MyActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    iget-object v2, v2, Lactivity/MyActivity;->b:Landroid/content/Context;

    iget-object v3, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    iget-object v3, v3, Lactivity/MyActivity;->b:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    iget-object v4, v4, Lactivity/MyActivity;->b:Landroid/content/Context;

    const v5, 0x7f070080

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_2
    iget-object v2, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    invoke-virtual {v2}, Lactivity/MyActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    iget-object v2, v2, Lactivity/MyActivity;->b:Landroid/content/Context;

    iget-object v3, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    iget-object v3, v3, Lactivity/MyActivity;->b:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    iget-object v4, v4, Lactivity/MyActivity;->b:Landroid/content/Context;

    const v5, 0x7f070084

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0}, Lcom/c/j;->j()[B

    move-result-object v1

    aget-byte v1, v1, v9

    packed-switch v1, :pswitch_data_1

    :pswitch_2
    goto/16 :goto_0

    :cond_2
    :goto_2
    :pswitch_3
    invoke-virtual {v0}, Lcom/c/j;->n()I

    move-result v1

    invoke-virtual {v0}, Lcom/c/j;->j()[B

    move-result-object v2

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v2, v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    invoke-virtual {v0}, Lcom/c/j;->j()[B

    move-result-object v0

    aget-byte v0, v0, v9

    invoke-virtual {v1, v0}, Lactivity/MyActivity;->a(B)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {v0}, Lcom/c/j;->c()Lcom/c/q;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/c/q;->a:Ljava/lang/String;

    iget-object v4, v1, Lcom/c/q;->b:Ljava/lang/String;

    iget-object v1, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    iget-object v1, v1, Lactivity/MyActivity;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ""

    move v2, v3

    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v2, v5, :cond_4

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    invoke-virtual {v2}, Lactivity/MyActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    iget-object v2, v2, Lactivity/MyActivity;->b:Landroid/content/Context;

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_4
    const-string v5, "STARTFILE:"

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    const-string v6, ":ENDFILE"

    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-eq v5, v8, :cond_3

    if-eq v6, v8, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v5, 0xa

    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v6, 0x8

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    invoke-virtual {v0}, Lactivity/MyActivity;->a()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    invoke-virtual {v0}, Lactivity/MyActivity;->g()V

    goto/16 :goto_0

    :cond_7
    const-string v2, "com.way.update"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v0, "message"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/c/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/c/k;->a()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    iget-object v0, v0, Lactivity/MyActivity;->d:Lcom/a/d;

    invoke-virtual {v0, v1}, Lcom/a/d;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    invoke-virtual {v0, v8}, Lactivity/MyActivity;->a(B)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v2, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    iget-object v2, v2, Lactivity/MyActivity;->d:Lcom/a/d;

    invoke-virtual {v0}, Lcom/c/k;->c()J

    move-result-wide v3

    const/4 v0, 0x7

    invoke-virtual {v2, v1, v3, v4, v0}, Lcom/a/d;->b(Ljava/lang/String;JI)V

    iget-object v0, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    invoke-virtual {v0, v8}, Lactivity/MyActivity;->a(B)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v2, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    iget-object v2, v2, Lactivity/MyActivity;->d:Lcom/a/d;

    invoke-virtual {v0}, Lcom/c/k;->c()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/c/k;->b()I

    move-result v0

    invoke-virtual {v2, v1, v3, v4, v0}, Lcom/a/d;->a(Ljava/lang/String;JI)V

    iget-object v0, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    invoke-virtual {v0}, Lactivity/MyActivity;->a()V

    goto/16 :goto_0

    :cond_8
    const-string v1, "com.way.querystatus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, "message"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x13a8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    invoke-virtual {v0}, Lactivity/MyActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    iget-object v0, v0, Lactivity/MyActivity;->b:Landroid/content/Context;

    iget-object v1, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    iget-object v1, v1, Lactivity/MyActivity;->b:Landroid/content/Context;

    const v2, 0x7f070082

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    iget-object v2, v2, Lactivity/MyActivity;->b:Landroid/content/Context;

    const v3, 0x7f070083

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "com.way.loginstep"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, "message"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    invoke-virtual {v1, v0}, Lactivity/MyActivity;->a(I)V

    goto/16 :goto_0

    :cond_a
    const-string v1, "com.way.readcellphone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v0, "message"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    invoke-virtual {v1, v0}, Lactivity/MyActivity;->d(I)V

    goto/16 :goto_0

    :cond_b
    const-string v1, "com.way.readcellphonesuccess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    invoke-virtual {v0}, Lactivity/MyActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    iget-object v0, v0, Lactivity/MyActivity;->b:Landroid/content/Context;

    iget-object v1, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    iget-object v1, v1, Lactivity/MyActivity;->b:Landroid/content/Context;

    const v2, 0x7f07005b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_c
    iget-object v0, p0, Lactivity/bh;->a:Lactivity/MyActivity;

    invoke-virtual {v0}, Lactivity/MyActivity;->d()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0xe -> :sswitch_1
        0x14 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
