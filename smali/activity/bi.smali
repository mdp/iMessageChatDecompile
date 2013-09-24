.class final Lactivity/bi;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lactivity/NewMessageActivity;


# direct methods
.method constructor <init>(Lactivity/NewMessageActivity;)V
    .locals 0

    iput-object p1, p0, Lactivity/bi;->a:Lactivity/NewMessageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Lactivity/br;

    iget-object v1, p0, Lactivity/bi;->a:Lactivity/NewMessageActivity;

    invoke-direct {v4, v1}, Lactivity/br;-><init>(Lactivity/NewMessageActivity;)V

    iput-object v0, v4, Lactivity/br;->a:Ljava/lang/String;

    iget-object v1, p0, Lactivity/bi;->a:Lactivity/NewMessageActivity;

    invoke-static {v1, v0}, Lactivity/NewMessageActivity;->a(Lactivity/NewMessageActivity;Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lactivity/bi;->a:Lactivity/NewMessageActivity;

    invoke-static {v0}, Lactivity/NewMessageActivity;->b(Lactivity/NewMessageActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lactivity/bi;->a:Lactivity/NewMessageActivity;

    invoke-static {v0}, Lactivity/NewMessageActivity;->c(Lactivity/NewMessageActivity;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lactivity/bi;->a:Lactivity/NewMessageActivity;

    invoke-static {v0, v3}, Lactivity/NewMessageActivity;->a(Lactivity/NewMessageActivity;Z)V

    iget-object v0, p0, Lactivity/bi;->a:Lactivity/NewMessageActivity;

    invoke-static {v0, v3}, Lactivity/NewMessageActivity;->a(Lactivity/NewMessageActivity;I)V

    iput-boolean v3, v4, Lactivity/br;->b:Z

    iget-object v0, p0, Lactivity/bi;->a:Lactivity/NewMessageActivity;

    invoke-virtual {v0}, Lactivity/NewMessageActivity;->c()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lactivity/bi;->a:Lactivity/NewMessageActivity;

    const/4 v5, 0x2

    invoke-static {v1, v5}, Lactivity/NewMessageActivity;->a(Lactivity/NewMessageActivity;I)V

    iput-boolean v2, v4, Lactivity/br;->b:Z

    iget-object v1, p0, Lactivity/bi;->a:Lactivity/NewMessageActivity;

    invoke-static {v1, v2}, Lactivity/NewMessageActivity;->a(Lactivity/NewMessageActivity;Z)V

    move v1, v2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v1, v5, :cond_3

    move v2, v3

    :cond_0
    if-eqz v2, :cond_4

    iget-object v1, p0, Lactivity/bi;->a:Lactivity/NewMessageActivity;

    iget-object v1, v1, Lactivity/NewMessageActivity;->b:Landroid/content/Context;

    const v2, 0x7f070089

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v2, p0, Lactivity/bi;->a:Lactivity/NewMessageActivity;

    invoke-static {v2}, Lactivity/NewMessageActivity;->a(Lactivity/NewMessageActivity;)I

    move-result v2

    const/4 v3, -0x2

    if-eq v2, v3, :cond_1

    iget-object v1, p0, Lactivity/bi;->a:Lactivity/NewMessageActivity;

    iget-object v1, v1, Lactivity/NewMessageActivity;->b:Landroid/content/Context;

    const v2, 0x7f07008b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v2, p0, Lactivity/bi;->a:Lactivity/NewMessageActivity;

    iget-object v2, v2, Lactivity/NewMessageActivity;->c:Lcom/a/a;

    invoke-virtual {v2, v0}, Lcom/a/a;->b(Ljava/lang/String;)Lactivity/z;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lactivity/z;->b()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v2, p0, Lactivity/bi;->a:Lactivity/NewMessageActivity;

    iget-object v3, p0, Lactivity/bi;->a:Lactivity/NewMessageActivity;

    iget-object v5, p0, Lactivity/bi;->a:Lactivity/NewMessageActivity;

    iget-object v5, v5, Lactivity/NewMessageActivity;->b:Landroid/content/Context;

    const v6, 0x7f070088

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v5, v0}, Lactivity/NewMessageActivity;->a(Lactivity/NewMessageActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lactivity/bi;->a:Lactivity/NewMessageActivity;

    iget-object v1, v1, Lactivity/NewMessageActivity;->b:Landroid/content/Context;

    const v2, 0x7f07008a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
