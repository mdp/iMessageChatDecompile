.class final Lcom/b/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/r;


# instance fields
.field final synthetic a:Lcom/b/g;


# direct methods
.method constructor <init>(Lcom/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/b/h;->a:Lcom/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIF)V
    .locals 6

    const/16 v4, 0x5f

    const/16 v3, 0x5a

    const/16 v1, 0x14

    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/b/h;->a:Lcom/b/g;

    invoke-static {v2}, Lcom/b/g;->b(Lcom/b/g;)I

    move-result v2

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/b/h;->a:Lcom/b/g;

    invoke-static {v2, v1}, Lcom/b/g;->a(Lcom/b/g;I)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.way.update"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "message"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/b/h;->a:Lcom/b/g;

    invoke-static {v0}, Lcom/b/g;->c(Lcom/b/g;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "send rate"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/b/h;->a:Lcom/b/g;

    invoke-static {v0, v2}, Lcom/b/g;->a(Lcom/b/g;I)V

    const/high16 v0, 0x4120

    mul-float/2addr v0, p3

    float-to-int v1, v0

    new-instance v0, Lcom/c/k;

    invoke-direct {v0}, Lcom/c/k;-><init>()V

    iget-object v2, p0, Lcom/b/h;->a:Lcom/b/g;

    invoke-static {v2}, Lcom/b/g;->a(Lcom/b/g;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3, v1}, Lcom/c/k;->a(JI)V

    goto :goto_0

    :pswitch_1
    if-ne p1, v5, :cond_0

    new-instance v0, Lcom/c/k;

    invoke-direct {v0}, Lcom/c/k;-><init>()V

    iget-object v2, p0, Lcom/b/h;->a:Lcom/b/g;

    invoke-static {v2}, Lcom/b/g;->a(Lcom/b/g;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3, v1}, Lcom/c/k;->a(JI)V

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/high16 v0, 0x4270

    mul-float/2addr v0, p3

    float-to-int v0, v0

    add-int/lit8 v1, v0, 0x14

    new-instance v0, Lcom/c/k;

    invoke-direct {v0}, Lcom/c/k;-><init>()V

    iget-object v2, p0, Lcom/b/h;->a:Lcom/b/g;

    invoke-static {v2}, Lcom/b/g;->a(Lcom/b/g;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3, v1}, Lcom/c/k;->a(JI)V

    goto/16 :goto_0

    :pswitch_3
    if-ne p1, v5, :cond_0

    new-instance v0, Lcom/c/k;

    invoke-direct {v0}, Lcom/c/k;-><init>()V

    iget-object v1, p0, Lcom/b/h;->a:Lcom/b/g;

    invoke-static {v1}, Lcom/b/g;->a(Lcom/b/g;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/c/k;->a(JI)V

    move v1, v3

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Lcom/c/k;

    invoke-direct {v0}, Lcom/c/k;-><init>()V

    iget-object v1, p0, Lcom/b/h;->a:Lcom/b/g;

    invoke-static {v1}, Lcom/b/g;->a(Lcom/b/g;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v4}, Lcom/c/k;->a(JI)V

    move v1, v4

    goto/16 :goto_0

    :pswitch_5
    const/16 v1, -0x64

    new-instance v0, Lcom/c/k;

    invoke-direct {v0}, Lcom/c/k;-><init>()V

    iget-object v2, p0, Lcom/b/h;->a:Lcom/b/g;

    invoke-static {v2}, Lcom/b/g;->a(Lcom/b/g;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/c/k;->a(J)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
